.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$LetvSensorInfo;,
        Landroid/hardware/Camera$CameraInfo;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$SmileCallback;,
        Landroid/hardware/Camera$GestureCallback;,
        Landroid/hardware/Camera$AsdCallback;,
        Landroid/hardware/Camera$AFDataCallback;,
        Landroid/hardware/Camera$AutoRamaCallback;,
        Landroid/hardware/Camera$AutoRamaMoveCallback;,
        Landroid/hardware/Camera$MetadataCallback;,
        Landroid/hardware/Camera$HdrOriginalCallback;,
        Landroid/hardware/Camera$StereoCameraDataCallback;,
        Landroid/hardware/Camera$StereoCameraWarningCallback;,
        Landroid/hardware/Camera$DistanceInfoCallback;,
        Landroid/hardware/Camera$FbOriginalCallback;,
        Landroid/hardware/Camera$ObjectTrackingListener;,
        Landroid/hardware/Camera$ZSDPreviewDone;,
        Landroid/hardware/Camera$PreviewRawDumpCallback;,
        Landroid/hardware/Camera$ContinuousShotCallback;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Parameters;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_NO_MEMORY:I = 0x3e8

.field public static final CAMERA_ERROR_RESET:I = 0x3e9

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final KEY_LETV_TRACE:Ljava/lang/String; = "letv_trace"

.field private static final MTK_CAMERA_MSG_EXT_DATA:I = -0x80000000

.field private static final MTK_CAMERA_MSG_EXT_DATA_AF:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_DATA_AUTORAMA:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_DATA_BURST_SHOT:I = 0x3

.field private static final MTK_CAMERA_MSG_EXT_DATA_FACEBEAUTY:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_DATA_HDR:I = 0x8

.field private static final MTK_CAMERA_MSG_EXT_DATA_JPS:I = 0x11

.field private static final MTK_CAMERA_MSG_EXT_DATA_OT:I = 0x5

.field private static final MTK_CAMERA_MSG_EXT_DATA_RAW16:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_CLEAR_IMAGE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DBG:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_DATA_STEREO_DEPTHMAP:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY:I = 0x40000000

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ASD:I = 0x2

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_BURST_SHUTTER:I = 0x4

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_CONTINUOUS_END:I = 0x6

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_GESTURE_DETECT:I = 0x13

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_IMAGE_UNCOMPRESSED:I = 0x17

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_METADATA_DONE:I = 0x16

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_RAW_DUMP_STOPPED:I = 0x12

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_SMILE_DETECT:I = 0x1

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_DISTANCE:I = 0x15

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_STEREO_WARNING:I = 0x14

.field private static final MTK_CAMERA_MSG_EXT_NOTIFY_ZSD_PREVIEW_DONE:I = 0x7

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CameraFramework"

.field private static final VALUE_TENCENT_MM:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

.field private mAsdCallback:Landroid/hardware/Camera$AsdCallback;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

.field private mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

.field private mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

.field private mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

.field private mEnableRaw16:Z

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

.field private mGestureCallback:Landroid/hardware/Camera$GestureCallback;

.field private mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mLetvTrace:Ljava/lang/String;

.field private mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

.field private mNativeContext:J

.field private final mObjectCallbackLock:Ljava/lang/Object;

.field private mObjectFace:Landroid/hardware/Camera$Face;

.field private mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

.field private mObjectRect:Landroid/graphics/Rect;

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

.field private mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

.field private mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mSmileCallback:Landroid/hardware/Camera$SmileCallback;

.field private mStereo3DModeForCamera:Z

.field private mStereoCameraDataCallback:Landroid/hardware/Camera$StereoCameraDataCallback;

.field private mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

.field private mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

.field private m_bforbidAutoFocus:Z


# direct methods
.method static synthetic -get0(Landroid/hardware/Camera;)Landroid/hardware/Camera$AFDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/Camera;)Landroid/hardware/Camera$AsdCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic -get12(Landroid/hardware/Camera;)Landroid/hardware/Camera$FbOriginalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    return-object v0
.end method

.method static synthetic -get13(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    return-object v0
.end method

.method static synthetic -get14(Landroid/hardware/Camera;)Landroid/hardware/Camera$HdrOriginalCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    return-object v0
.end method

.method static synthetic -get15(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get16(Landroid/hardware/Camera;)Landroid/hardware/Camera$MetadataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    return-object v0
.end method

.method static synthetic -get17(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get18(Landroid/hardware/Camera;)Landroid/hardware/Camera$Face;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    return-object v0
.end method

.method static synthetic -get19(Landroid/hardware/Camera;)Landroid/hardware/Camera$ObjectTrackingListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic -get20(Landroid/hardware/Camera;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get21(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic -get22(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get23(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic -get24(Landroid/hardware/Camera;)Landroid/hardware/Camera$ZSDPreviewDone;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    return-object v0
.end method

.method static synthetic -get25(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewRawDumpCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    return-object v0
.end method

.method static synthetic -get26(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get27(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get28(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic -get29(Landroid/hardware/Camera;)Landroid/hardware/Camera$SmileCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get30(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraDataCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraDataCallback:Landroid/hardware/Camera$StereoCameraDataCallback;

    return-object v0
.end method

.method static synthetic -get31(Landroid/hardware/Camera;)Landroid/hardware/Camera$StereoCameraWarningCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    return-object v0
.end method

.method static synthetic -get32(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic -get33(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic -get34(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoRamaMoveCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/Camera;)Landroid/hardware/Camera$DistanceInfoCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/Camera;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0

    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p1, "installed"    # Z
    .param p2, "manualBuffer"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean v1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 324
    iput-boolean v1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 329
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 331
    new-instance v0, Landroid/hardware/Camera$Face;

    invoke-direct {v0}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 332
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 333
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 3118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 3119
    iput-boolean v1, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 734
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x0

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean v2, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 324
    iput-boolean v2, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 329
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 331
    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 332
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 3118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 3119
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 702
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .line 703
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    sparse-switch v0, :sswitch_data_0

    .line 711
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 706
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    :cond_0
    return-void

    .line 704
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-boolean v2, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 324
    iput-boolean v2, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 329
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 331
    new-instance v1, Landroid/hardware/Camera$Face;

    invoke-direct {v1}, Landroid/hardware/Camera$Face;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectFace:Landroid/hardware/Camera$Face;

    .line 332
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectRect:Landroid/graphics/Rect;

    .line 333
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 334
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    .line 3118
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 3119
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 626
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 627
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    sparse-switch v0, :sswitch_data_0

    .line 650
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 630
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 632
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 634
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 637
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 640
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 646
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 625
    :cond_0
    return-void

    .line 628
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 1137
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1138
    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 1139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1134
    return-void
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 679
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 656
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 657
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 658
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 659
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 660
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 661
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 662
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 663
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 666
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 667
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 674
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 675
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 674
    invoke-direct {p0, v1, p1, p2, v2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v1

    return v1

    .line 668
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 669
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 671
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method private native cancelGDPreview()V
.end method

.method private final native cancelMainFace()V
.end method

.method private native cancelSDPreview()V
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    const/4 v0, 0x0

    .line 721
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private dumpTrace()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x4

    .line 3122
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 3123
    .local v0, "e":[Ljava/lang/StackTraceElement;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 3125
    .local v2, "listSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v6, v0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 3126
    .local v1, "i":Ljava/lang/StackTraceElement;
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 3127
    .local v3, "tmp":Ljava/lang/String;
    const-string/jumbo v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3128
    const-string/jumbo v7, "CameraFramework"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "dumpTrace:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", tmp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 3130
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3131
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3125
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3137
    .end local v1    # "i":Ljava/lang/StackTraceElement;
    .end local v3    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v11, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    return-object v4

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v12, :cond_3

    const-string/jumbo v4, ""

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v10, :cond_4

    const-string/jumbo v4, ""

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 397
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 398
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 399
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 401
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 404
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v2

    .line 407
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CameraFramework"

    const-string/jumbo v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentActivityName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 3043
    const-string/jumbo v6, ""

    .line 3045
    .local v6, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 3046
    .local v1, "at":Landroid/app/ActivityThread;
    const-string/jumbo v7, "android.app.ContextImpl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 3047
    .local v2, "cls":Ljava/lang/Class;
    const-string/jumbo v7, "getSystemService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 3048
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "activity"

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3049
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3050
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3054
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "at":Landroid/app/ActivityThread;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 3051
    :catch_0
    move-exception v4

    .line 3052
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3058
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 3283
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 3284
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/4 v2, 0x0

    .line 3297
    if-nez p0, :cond_0

    .line 3298
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3301
    :cond_0
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->-wrap0(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 3302
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 3303
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 3305
    return-object v1
.end method

.method public static getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 2419
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize()Ljava/lang/String;
    .locals 11

    .prologue
    .line 3186
    const-string/jumbo v3, "1184x720"

    .line 3187
    .local v3, "mHD720NOPK":Ljava/lang/String;
    const-string/jumbo v5, "800x480"

    .line 3188
    .local v5, "mWVGAScreenSize":Ljava/lang/String;
    const-string/jumbo v4, "960x540"

    .line 3189
    .local v4, "mQhdScreenSize":Ljava/lang/String;
    const-string/jumbo v2, "1280x720"

    .line 3191
    .local v2, "m720P":Ljava/lang/String;
    const-string/jumbo v6, "800x480"

    .line 3194
    .local v6, "screenSize":Ljava/lang/String;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 3196
    .local v1, "dmGlobal":Landroid/hardware/display/DisplayManagerGlobal;
    sget-object v8, Landroid/view/DisplayAdjustments;->DEFAULT_DISPLAY_ADJUSTMENTS:Landroid/view/DisplayAdjustments;

    .line 3195
    const/4 v9, 0x0

    invoke-virtual {v1, v9, v8}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v0

    .line 3197
    .local v0, "dispaly":Landroid/view/Display;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 3198
    .local v7, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 3201
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v9, v7, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_1

    .line 3202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3208
    :goto_0
    const-string/jumbo v8, "1184x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 3209
    const-string/jumbo v6, "800x480"

    .line 3216
    :cond_0
    :goto_1
    const-string/jumbo v8, "CameraFramework"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Screen size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    return-object v6

    .line 3204
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 3210
    :cond_2
    const-string/jumbo v8, "960x540"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3211
    const-string/jumbo v6, "800x480"

    goto :goto_1

    .line 3212
    :cond_3
    const-string/jumbo v8, "1280x720"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3213
    const-string/jumbo v6, "800x480"

    goto :goto_1
.end method

.method private static isPermissionGranted()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2767
    const-string/jumbo v5, "1"

    const-string/jumbo v6, "ro.mtk_mobile_management"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2768
    const-string/jumbo v5, "mobile"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2769
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v2

    .line 2770
    .local v2, "moms":Lcom/mediatek/common/mom/IMobileManagerService;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2771
    .local v4, "uid":I
    const-string/jumbo v3, "sub-permission.OPEN_CAMERA"

    .line 2773
    .local v3, "permission":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2774
    :try_start_0
    invoke-interface {v2, v3, v4}, Lcom/mediatek/common/mom/IMobileManagerService;->checkPermission(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 2775
    const-string/jumbo v5, "CameraFramework"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "open: user denied permission "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " for uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2776
    return v8

    .line 2779
    :catch_0
    move-exception v1

    .line 2780
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "CameraFramework"

    const-string/jumbo v6, "CheckPermission failed in open with RemoteException, continues open."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2781
    return v9

    .line 2784
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    return v9
.end method

.method public static isRestricted(I)Z
    .locals 11
    .param p0, "pid"    # I

    .prologue
    .line 3151
    const/4 v8, 0x0

    .line 3152
    .local v8, "ret":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/proc/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/cmdline"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3154
    .local v4, "f":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3156
    .local v5, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v6, "in":Ljava/io/FileInputStream;
    move-object v5, v6

    .line 3161
    .end local v6    # "in":Ljava/io/FileInputStream;
    :goto_0
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 3162
    .local v7, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3163
    .local v1, "buffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x1

    new-array v0, v9, [C

    .line 3165
    .local v0, "buf":[C
    :goto_1
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 3166
    const/4 v9, 0x0

    aget-char v9, v0, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3169
    :catch_0
    move-exception v3

    .line 3170
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 3173
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "com.google.android.apps.unveil"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3174
    const/4 v8, 0x1

    .line 3176
    :cond_0
    return v8

    .line 3157
    .end local v0    # "buf":[C
    .end local v1    # "buffer":Ljava/lang/StringBuilder;
    .end local v7    # "inReader":Ljava/io/InputStreamReader;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 3158
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3168
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[C
    .restart local v1    # "buffer":Ljava/lang/StringBuilder;
    .restart local v7    # "inReader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private static native native_getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private static native native_setProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 5

    .prologue

    invoke-static {}, Landroid/hardware/Camera;->isFlymePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return-object v0

    :cond_flyme_0

    const/4 v4, 0x0

    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v3

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 564
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 565
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    .line 566
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    return-object v3

    .line 563
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    :cond_2
    return-object v4
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue

    invoke-static {}, Landroid/hardware/Camera;->isFlymePermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    const/4 v0, 0x0

    return-object v0

    :cond_flyme_0

    invoke-static {}, Landroid/hardware/Camera;->isPermissionGranted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 611
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 728
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1645
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1646
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_0

    .line 1647
    return-void

    .line 1649
    :cond_0
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_1

    .line 1650
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1651
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1643
    .end local v1    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setMainFace(II)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 2429
    invoke-static {p0, p1}, Landroid/hardware/Camera;->native_setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    return-void
.end method

.method private final native startAUTORAMA(I)V
.end method

.method private native startGDPreview()V
.end method

.method private final native startOT(II)V
.end method

.method private native startSDPreview()V
.end method

.method private native stopAUTORAMA(I)V
.end method

.method private final native stopOT()V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1088
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 1086
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 1131
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 1129
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1736
    iget-boolean v0, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    if-eqz v0, :cond_1

    .line 1737
    const-string/jumbo v0, "CameraFramework"

    const-string/jumbo v1, "autoFocus ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    if-eqz p1, :cond_0

    .line 1739
    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1742
    :cond_0
    return-void

    .line 1747
    :cond_1
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1748
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1750
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 1732
    return-void

    .line 1747
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 697
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1767
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1783
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1762
    return-void

    .line 1764
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public native cancelContinuousShot()V
.end method

.method public final cancelMainFaceInfo()V
    .locals 0

    .prologue
    .line 2917
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelMainFace()V

    .line 2916
    return-void
.end method

.method public native cancelPanorama()V
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1176
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1177
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1178
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    .line 1180
    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    .line 1181
    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 1179
    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    .line 1178
    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1184
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1185
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1186
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1188
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    .line 1189
    or-int/lit8 v5, p2, 0x20

    .line 1188
    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1191
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 2106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final native doPanorama(I)V
.end method

.method public final enableRaw16(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1949
    const-string/jumbo v0, "CameraFramework"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableRaw16 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1950
    iput-boolean p1, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    .line 1951
    iget-boolean v0, p0, Landroid/hardware/Camera;->mEnableRaw16:Z

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->enableRaw16Callback(Z)V

    .line 1947
    return-void
.end method

.method public final native enableRaw16Callback(Z)V
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 2077
    if-nez p1, :cond_0

    .line 2078
    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2079
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2081
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    .line 2082
    :catch_0
    move-exception v2

    .line 2083
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "CameraFramework"

    const-string/jumbo v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    return v3
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 739
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 738
    return-void
.end method

.method public final native getMetadata(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3242
    new-instance v0, Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, p0, v6}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V

    .line 3243
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 3244
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 3246
    const-string/jumbo v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera framework getParameters ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    iget-boolean v3, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setStereo3DMode(Z)V

    .line 3248
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "ro.mtk_bsp_package"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3252
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Landroid/hardware/Camera;->isRestricted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3253
    const-string/jumbo v3, "tablet"

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3255
    const-string/jumbo v2, "760x480"

    .line 3256
    .local v2, "size":Ljava/lang/String;
    const-string/jumbo v3, "CameraFramework"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "change preview size to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3257
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 3256
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    const-string/jumbo v3, "preview-size-values"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    const-string/jumbo v3, "preview-size"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3272
    .end local v2    # "size":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 754
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 755
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 753
    return-void
.end method

.method public final setAFDataCallback(Landroid/hardware/Camera$AFDataCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AFDataCallback;

    .prologue
    .line 2627
    iput-object p1, p0, Landroid/hardware/Camera;->mAFDataCallback:Landroid/hardware/Camera$AFDataCallback;

    .line 2626
    return-void
.end method

.method public final setAsdCallback(Landroid/hardware/Camera$AsdCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AsdCallback;

    .prologue
    .line 2606
    iput-object p1, p0, Landroid/hardware/Camera;->mAsdCallback:Landroid/hardware/Camera$AsdCallback;

    .line 2604
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1816
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1817
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1815
    return-void

    .line 1817
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setAutoRamaCallback(Landroid/hardware/Camera$AutoRamaCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaCallback;

    .prologue
    .line 2762
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaCallback:Landroid/hardware/Camera$AutoRamaCallback;

    .line 2760
    return-void
.end method

.method public final setAutoRamaMoveCallback(Landroid/hardware/Camera$AutoRamaMoveCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$AutoRamaMoveCallback;

    .prologue
    .line 2796
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoRamaMoveCallback:Landroid/hardware/Camera$AutoRamaMoveCallback;

    .line 2794
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera$ContinuousShotCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ContinuousShotCallback;

    .prologue
    .line 3034
    iput-object p1, p0, Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotCallback;

    .line 3033
    return-void
.end method

.method public native setContinuousShotSpeed(I)V
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setDistanceInfoCallback(Landroid/hardware/Camera$DistanceInfoCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$DistanceInfoCallback;

    .prologue
    .line 2840
    iput-object p1, p0, Landroid/hardware/Camera;->mDistanceInfoCallback:Landroid/hardware/Camera$DistanceInfoCallback;

    .line 2838
    return-void
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2405
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2403
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 2174
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 2172
    return-void
.end method

.method public final setFbOriginalCallback(Landroid/hardware/Camera$FbOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$FbOriginalCallback;

    .prologue
    .line 2851
    iput-object p1, p0, Landroid/hardware/Camera;->mFbOriginalCallback:Landroid/hardware/Camera$FbOriginalCallback;

    .line 2849
    return-void
.end method

.method public final setGestureCallback(Landroid/hardware/Camera$GestureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$GestureCallback;

    .prologue
    .line 2480
    iput-object p1, p0, Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;

    .line 2478
    return-void
.end method

.method public final setHdrOriginalCallback(Landroid/hardware/Camera$HdrOriginalCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$HdrOriginalCallback;

    .prologue
    .line 2807
    iput-object p1, p0, Landroid/hardware/Camera;->mHdrOriginalCallback:Landroid/hardware/Camera$HdrOriginalCallback;

    .line 2805
    return-void
.end method

.method public final setMainFaceCoordinate(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2908
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setMainFace(II)V

    .line 2907
    return-void
.end method

.method public final setObjectTrackingListener(Landroid/hardware/Camera$ObjectTrackingListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/Camera$ObjectTrackingListener;

    .prologue
    .line 2963
    iget-object v0, p0, Landroid/hardware/Camera;->mObjectCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2964
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mObjectListener:Landroid/hardware/Camera$ObjectTrackingListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 2962
    return-void

    .line 2963
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1006
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1007
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1008
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1009
    if-eqz p1, :cond_0

    .line 1010
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1012
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1005
    return-void

    :cond_1
    move v0, v1

    .line 1012
    goto :goto_0
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 8
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 3071
    iget-boolean v5, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    if-eqz v5, :cond_1

    .line 3072
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 3073
    .local v4, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 3074
    .local v2, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    if-ne v5, v6, :cond_0

    .line 3075
    iget v5, v4, Landroid/hardware/Camera$Size;->height:I

    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    if-eq v5, v6, :cond_1

    .line 3076
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Cannot change preview size while a preview allocation is configured."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3082
    .end local v2    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v4    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    const-string/jumbo v5, "letv_trace"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    .line 3083
    iget-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 3084
    invoke-direct {p0}, Landroid/hardware/Camera;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3085
    .local v1, "PackageName":Ljava/lang/String;
    const-string/jumbo v5, "DKdebugMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    invoke-direct {p0}, Landroid/hardware/Camera;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    .line 3087
    .local v0, "ActivityName":Ljava/lang/String;
    const-string/jumbo v5, "DKdebugMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ActivityName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".LETV."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 3089
    const-string/jumbo v5, "DKdebugMsg"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mLetvTrace = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    .end local v0    # "ActivityName":Ljava/lang/String;
    .end local v1    # "PackageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "letv_trace"

    iget-object v6, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3096
    :cond_3
    iget-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    const-string/jumbo v6, "com.tencent.mm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3098
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    .line 3099
    .local v3, "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_5

    const-string/jumbo v5, "continuous-picture"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 3100
    const-string/jumbo v5, "continuous-picture"

    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3101
    iget-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    const-string/jumbo v6, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3102
    const-string/jumbo v5, "edge"

    const-string/jumbo v6, "high"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3103
    const-string/jumbo v5, "contrast"

    const-string/jumbo v6, "high"

    invoke-virtual {p1, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3104
    const-string/jumbo v5, "DKdebugMsg"

    const-string/jumbo v6, "params.set, edge contrast, high"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_4
    const-string/jumbo v5, "DKdebugMsg"

    const-string/jumbo v6, "setFocusMode : FOCUS_MODE_CONTINUOUS_PICTURE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 3112
    .end local v3    # "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 3069
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 980
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 981
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 982
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 983
    if-eqz p1, :cond_0

    .line 984
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 988
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 979
    return-void

    :cond_1
    move v0, v1

    .line 988
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1242
    const/4 v2, 0x0

    .line 1243
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1244
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1245
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1246
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1247
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1248
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1251
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1252
    const-string/jumbo v5, ", "

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1253
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1254
    const-string/jumbo v5, ". Preview is "

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1254
    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1254
    const-string/jumbo v5, ", "

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1255
    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    .line 1249
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1248
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1257
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1259
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1260
    const-string/jumbo v4, "Allocation usage does not include USAGE_IO_INPUT"

    .line 1259
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1262
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    .line 1263
    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    .line 1262
    if-eq v3, v4, :cond_3

    .line 1264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 1265
    const-string/jumbo v4, "Allocation is not of a YUV type"

    .line 1264
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1267
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1268
    .local v2, "previewSurface":Landroid/view/Surface;
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1272
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    .end local v2    # "previewSurface":Landroid/view/Surface;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1241
    return-void

    .line 1270
    .local v2, "previewSurface":Landroid/view/Surface;
    :cond_4
    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1044
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 1045
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 1046
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 1047
    if-eqz p1, :cond_0

    .line 1048
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1050
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 1043
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 839
    if-eqz p1, :cond_0

    .line 840
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 838
    :goto_0
    return-void

    .line 842
    :cond_0
    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public setPreviewDoneCallback(Landroid/hardware/Camera$ZSDPreviewDone;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$ZSDPreviewDone;

    .prologue
    .line 3013
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewDoneCallback:Landroid/hardware/Camera$ZSDPreviewDone;

    .line 3012
    return-void
.end method

.method public setPreviewRawDumpCallback(Landroid/hardware/Camera$PreviewRawDumpCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewRawDumpCallback;

    .prologue
    .line 3004
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewRawDumpCallback:Landroid/hardware/Camera$PreviewRawDumpCallback;

    .line 3003
    return-void
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setRaw16Callback(Landroid/hardware/Camera$MetadataCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "meta"    # Landroid/hardware/Camera$MetadataCallback;
    .param p2, "raw16"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1937
    const-string/jumbo v0, "CameraFramework"

    const-string/jumbo v1, "setRaw16Callback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    iput-object p1, p0, Landroid/hardware/Camera;->mMetadataCallbacks:Landroid/hardware/Camera$MetadataCallback;

    .line 1939
    iput-object p2, p0, Landroid/hardware/Camera;->mRaw16Callbacks:Landroid/hardware/Camera$PictureCallback;

    .line 1935
    return-void
.end method

.method public final setSmileCallback(Landroid/hardware/Camera$SmileCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$SmileCallback;

    .prologue
    .line 2469
    iput-object p1, p0, Landroid/hardware/Camera;->mSmileCallback:Landroid/hardware/Camera$SmileCallback;

    .line 2467
    return-void
.end method

.method public setStereo3DModeForCamera(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 3231
    iput-boolean p1, p0, Landroid/hardware/Camera;->mStereo3DModeForCamera:Z

    .line 3230
    return-void
.end method

.method public final setStereoCameraDataCallback(Landroid/hardware/Camera$StereoCameraDataCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraDataCallback;

    .prologue
    .line 2818
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraDataCallback:Landroid/hardware/Camera$StereoCameraDataCallback;

    .line 2816
    return-void
.end method

.method public final setStereoCameraWarningCallback(Landroid/hardware/Camera$StereoCameraWarningCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$StereoCameraWarningCallback;

    .prologue
    .line 2829
    iput-object p1, p0, Landroid/hardware/Camera;->mStereoCameraWarningCallback:Landroid/hardware/Camera$StereoCameraWarningCallback;

    .line 2827
    return-void
.end method

.method public final setUncompressedImageCallback(Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 2861
    iput-object p1, p0, Landroid/hardware/Camera;->mUncompressedImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 2859
    return-void
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 2144
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 2142
    return-void
.end method

.method public final native start3DSHOT(I)V
.end method

.method public final startAutoRama(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 2871
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->startAUTORAMA(I)V

    .line 2870
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 2210
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 2211
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2213
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 2214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2209
    return-void
.end method

.method public startGestureDetection()V
    .locals 0

    .prologue
    .line 2561
    invoke-direct {p0}, Landroid/hardware/Camera;->startGDPreview()V

    .line 2560
    return-void
.end method

.method public final startObjectTracking(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 2927
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->startOT(II)V

    .line 2926
    return-void
.end method

.method public final native startPreview()V
.end method

.method public startSmileDetection()V
    .locals 0

    .prologue
    .line 2519
    invoke-direct {p0}, Landroid/hardware/Camera;->startSDPreview()V

    .line 2518
    return-void
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public native stop3DSHOT(I)V
.end method

.method public stopAutoRama(I)V
    .locals 0
    .param p1, "isMerge"    # I

    .prologue
    .line 2884
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->stopAUTORAMA(I)V

    .line 2883
    return-void
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 2223
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 2224
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 2222
    return-void
.end method

.method public stopGestureDetection()V
    .locals 0

    .prologue
    .line 2578
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelGDPreview()V

    .line 2577
    return-void
.end method

.method public final stopObjectTracking()V
    .locals 0

    .prologue
    .line 2937
    invoke-direct {p0}, Landroid/hardware/Camera;->stopOT()V

    .line 2936
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 941
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 944
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 945
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 946
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 947
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 948
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 949
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 951
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 940
    return-void

    .line 948
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public stopSmileDetection()V
    .locals 0

    .prologue
    .line 2537
    invoke-direct {p0}, Landroid/hardware/Camera;->cancelSDPreview()V

    .line 2536
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1871
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1870
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 2
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1906
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1907
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1908
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1909
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1912
    const/4 v0, 0x0

    .line 1913
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1914
    const/4 v0, 0x2

    .line 1916
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1917
    or-int/lit16 v0, v0, 0x80

    .line 1919
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1920
    or-int/lit8 v0, v0, 0x40

    .line 1922
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1923
    or-int/lit16 v0, v0, 0x100

    .line 1926
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1927
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1905
    return-void
.end method

.method public final native unlock()V
.end method

.method private static isFlymePermissionGranted()Z
    .locals 1

    .prologue
    const/16 v0, 0x4c

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
