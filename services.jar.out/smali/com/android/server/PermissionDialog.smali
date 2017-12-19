.class Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialog$PositiveOnclickListener;,
        Lcom/android/server/PermissionDialog$NegativeOnclickListener;,
        Lcom/android/server/PermissionDialog$CheckboxChangeListener;
    }
.end annotation


# static fields
.field static final ACTION_ALLOWED:I = 0x2

.field static final ACTION_ASK:I = 0x6

.field static final ACTION_IGNORED:I = 0x4

.field static final ACTION_IGNORED_TIMEOUT:I = 0x8

.field static final DISMISS_TIMEOUT:J = 0x1b58L

.field private static final TAG:Ljava/lang/String; = "PermissionDialog"


# instance fields
.field bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

.field private mChoice:Lcom/letv/leui/widget/LeCheckBox;

.field private final mCode:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final mPackageName:Ljava/lang/String;

.field private final mService:Lcom/android/server/AppOpsService;

.field private mUid:I

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/server/PermissionDialog;)Lcom/letv/leui/widget/LeCheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PermissionDialog;->mCode:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/PermissionDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/PermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PermissionDialog;->mUid:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/AppOpsService;
    .param p3, "code"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct/range {p0 .. p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 77
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 80
    .local v14, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mService:Lcom/android/server/AppOpsService;

    .line 81
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mCode:I

    .line 82
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 83
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/PermissionDialog;->mUid:I

    .line 85
    const v2, 0x1070057

    .line 84
    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 88
    new-instance v2, Lcom/letv/leui/widget/LeBottomSheet;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/letv/leui/widget/LeBottomSheet;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getmDialog()Landroid/app/Dialog;

    move-result-object v12

    .line 90
    .local v12, "mDialog":Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 91
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 92
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v6, 0x7d3

    invoke-virtual {v2, v6}, Landroid/view/Window;->setType(I)V

    .line 93
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v6, 0x20000

    .line 94
    const/high16 v16, 0x20000

    .line 93
    move/from16 v0, v16

    invoke-virtual {v2, v6, v0}, Landroid/view/Window;->setFlags(II)V

    .line 95
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 96
    .local v10, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v2, v2, 0x110

    iput v2, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 98
    invoke-virtual {v12}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 102
    const v2, 0x1040427

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    .local v9, "allow":Ljava/lang/String;
    const v2, 0x1040428

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 105
    .local v11, "deny":Ljava/lang/String;
    new-instance v3, Lcom/android/server/PermissionDialog$PositiveOnclickListener;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/PermissionDialog$PositiveOnclickListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .line 106
    .local v3, "positiveOnclickListener":Lcom/android/server/PermissionDialog$PositiveOnclickListener;
    new-instance v4, Lcom/android/server/PermissionDialog$NegativeOnclickListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/PermissionDialog$NegativeOnclickListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .line 108
    .local v4, "negativeOnclickListener":Lcom/android/server/PermissionDialog$NegativeOnclickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 109
    .local v13, "name":Ljava/lang/String;
    if-nez v13, :cond_0

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 114
    const/16 v16, 0x0

    aput-object v13, v6, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    aget-object v16, v16, p3

    const/16 v17, 0x1

    aput-object v16, v6, v17

    .line 113
    const v16, 0x104066f

    move/from16 v0, v16

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 116
    .local v8, "label":Ljava/lang/String;
    const v2, 0x10804cb

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/letv/leui/util/DrawableUtils;->createShadowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 117
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/PermissionDialog;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 121
    :cond_1
    new-instance v5, Lcom/android/server/PermissionDialog$CheckboxChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/PermissionDialog$CheckboxChangeListener;-><init>(Lcom/android/server/PermissionDialog;)V

    .line 123
    .local v5, "checkboxChangeListener":Lcom/android/server/PermissionDialog$CheckboxChangeListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v9, v6, v16

    const/16 v16, 0x1

    aput-object v11, v6, v16

    invoke-virtual/range {v2 .. v8}, Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LeBottomSheet;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeCheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    const v6, 0x1040670

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/LeCheckBox;->setText(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mChoice:Lcom/letv/leui/widget/LeCheckBox;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/letv/leui/widget/LeCheckBox;->setChecked(Z)V

    .line 129
    new-instance v15, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PermissionDialog"

    invoke-direct {v15, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 130
    .local v15, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v2, Lcom/android/server/PermissionDialog$1;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v6}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    .line 159
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/PermissionDialog;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v16, 0x1b58

    .line 158
    move-wide/from16 v0, v16

    invoke-virtual {v2, v6, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    const-string/jumbo v2, "gaozhipeng"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "new dialog:"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/PermissionDialog;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method private getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 168
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2200

    .line 167
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 170
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 176
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v4
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/server/PermissionDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 183
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2200

    .line 182
    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 185
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 191
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->disappear()V

    .line 226
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->bottomsheet:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet;->appear()V

    .line 221
    return-void
.end method
