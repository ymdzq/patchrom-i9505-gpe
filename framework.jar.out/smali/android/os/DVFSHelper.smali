.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;,
        Landroid/os/DVFSHelper$PackageInfo;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field private static final BASE_MODEL:Ljava/lang/String; = "jf"

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field private static final BOOST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final CAMERA_BOOSTING_TIMEOUT:I = 0x7d0

.field private static final CAMERA_BOOSTING_TIMEOUT_H:I = 0x1f4

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field public static final DISPLAY_FULL_HD_RESOLUTION:I = 0x438

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field public static final PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

.field public static final PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

.field private static final ROTATION_BOOSTING_TIMEOUT:I = 0x1f4

.field private static final ROTATION_GPU_BOOSTING_TIMEOUT:I = 0x7d0

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_jf_xx"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mCPUCoreTable:[I

.field private static mCPUFrequencyTable:[I

.field private static mCameraCPUBooster:Landroid/os/DVFSHelper;

.field private static mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private static mToken:I


# instance fields
.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field private mDisplayResolution:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mOption:J

.field private mPermissionGranted:Z

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 54
    sput v4, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 62
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 93
    sput v4, Landroid/os/DVFSHelper;->mToken:I

    .line 99
    new-array v0, v4, [Landroid/os/DVFSHelper$PackageInfo;

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 603
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 605
    const/16 v0, 0x1a

    new-array v0, v0, [Landroid/os/DVFSHelper$PackageInfo;

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.redlicense.benchmark.sqlite"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.antutu.ABenchMark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.greenecomputing.linpackpro"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark27"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark25"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "ca.primatelabs.geekbench2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.eembc.coremark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.flexycore.caffeinemark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "eu.chainfire.cfbench"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "gr.androiddev.BenchmarkPi"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.passmark.pt_mobile"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string/jumbo v3, "se.nena.nenamark2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:db"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:es1"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:es2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:g2d"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:fs"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:ks"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.samsung.benchmarks:cpu"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 662
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 663
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 665
    sput-object v5, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 666
    sput-object v5, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 721
    sput-object v5, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 723
    sput-object v5, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 104
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 108
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    .line 113
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J
    .param p6, "customValue"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v4, p0, Landroid/os/DVFSHelper;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 65
    iput v5, p0, Landroid/os/DVFSHelper;->mDisplayResolution:I

    .line 67
    iput-object v4, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 68
    iput-object v4, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 69
    iput-object v4, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 70
    iput-object v4, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 71
    const/16 v2, 0xb

    iput v2, p0, Landroid/os/DVFSHelper;->mType:I

    .line 72
    iput v5, p0, Landroid/os/DVFSHelper;->mId:I

    .line 73
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 74
    const/4 v2, -0x1

    iput v2, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 75
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 77
    iput-object v4, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 78
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 80
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 81
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 82
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 83
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 84
    iput-object v4, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 86
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 87
    iput-object v4, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 88
    iput-object v4, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 89
    iput-object v4, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 90
    iput-object v4, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 92
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iput-object v2, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 95
    iput-boolean v5, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 117
    if-nez p1, :cond_0

    .line 118
    const-string v2, "DVFSHelper"

    const-string v3, "DVFSHelper:: context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void

    .line 121
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 123
    iget-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v3, "CustomFrequencyManagerService"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/CustomFrequencyManager;

    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 124
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_1

    .line 125
    const-string v2, "DVFSHelper"

    const-string v3, "DVFSHelper:: failed to load CFMS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :cond_1
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DVFSHelper:: New instance is created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 132
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 133
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 134
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 135
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 136
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 137
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 139
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 147
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 149
    sget v2, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Landroid/os/DVFSHelper;->mToken:I

    .line 150
    if-eqz p2, :cond_2

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 156
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 157
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 158
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v2

    iput v2, p0, Landroid/os/DVFSHelper;->mId:I

    .line 159
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 161
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Landroid/os/DVFSHelper;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 162
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Landroid/os/DVFSHelper;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 163
    iget-object v2, p0, Landroid/os/DVFSHelper;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 164
    .local v1, "pxWidth":I
    iget-object v2, p0, Landroid/os/DVFSHelper;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 165
    .local v0, "pxHeight":I
    if-le v1, v0, :cond_3

    .line 166
    iput v0, p0, Landroid/os/DVFSHelper;->mDisplayResolution:I

    goto/16 :goto_0

    .line 153
    .end local v0    # "pxHeight":I
    .end local v1    # "pxWidth":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1

    .line 168
    .restart local v0    # "pxHeight":I
    .restart local v1    # "pxWidth":I
    :cond_3
    iput v1, p0, Landroid/os/DVFSHelper;->mDisplayResolution:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 20
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method private adjustCPUFreqTable()V
    .locals 4

    .prologue
    .line 174
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v2, "hf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [I

    .line 179
    .local v1, "newCPUFreqTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 180
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto :goto_0
.end method

.method private adjustGPUFreqTable()V
    .locals 4

    .prologue
    .line 188
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v2, "ha"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [I

    .line 193
    .local v1, "newGPUFreqTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_2

    .line 194
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_2
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    .prologue
    .line 898
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    .line 920
    :goto_0
    return-object v0

    .line 901
    :cond_0
    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 904
    :cond_1
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 905
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 907
    :cond_2
    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 908
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 910
    :cond_3
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 911
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 913
    :cond_4
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 914
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 916
    :cond_5
    const-string/jumbo v0, "ssrm_jf_xx"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 920
    :cond_6
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 645
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 276
    return-void
.end method

.method public acquire(I)V
    .locals 22
    .param p1, "timeout"    # I

    .prologue
    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v1, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: timeout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mIsAcquired = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v1, :cond_2

    .line 290
    const-string v1, "DVFSHelper"

    const-string v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 295
    :cond_2
    const/16 v17, 0x0

    .line 296
    .local v17, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 297
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 464
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 471
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 474
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 477
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 480
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0

    .line 302
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 303
    const/4 v3, 0x0

    .line 304
    .local v3, "coreNum":I
    const/16 v21, 0x0

    .line 305
    .local v21, "stringCoreNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x4

    cmp-long v1, v1, v4

    if-nez v1, :cond_a

    .line 306
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 319
    :cond_9
    :goto_2
    const/4 v1, 0x2

    if-lt v3, v1, :cond_4

    .line 320
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x4

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    .line 309
    :cond_a
    if-eqz v17, :cond_b

    .line 310
    :try_start_0
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 314
    :cond_b
    :goto_3
    if-eqz v21, :cond_9

    .line 315
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    .line 326
    .end local v3    # "coreNum":I
    .end local v21    # "stringCoreNum":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 327
    const/4 v3, 0x0

    .line 328
    .restart local v3    # "coreNum":I
    const/16 v21, 0x0

    .line 330
    .restart local v21    # "stringCoreNum":Ljava/lang/String;
    if-eqz v17, :cond_c

    .line 331
    :try_start_1
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    .line 335
    :cond_c
    :goto_4
    if-eqz v21, :cond_d

    .line 336
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 339
    :cond_d
    if-lez v3, :cond_4

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x5

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 346
    .end local v3    # "coreNum":I
    .end local v21    # "stringCoreNum":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 347
    const/4 v6, -0x1

    .line 348
    .local v6, "freq":I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x2

    cmp-long v1, v1, v4

    if-nez v1, :cond_10

    .line 349
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    .line 357
    :cond_e
    :goto_5
    const-string v1, "ja"

    const-string v2, "jf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const v1, 0x186a00

    if-le v6, v1, :cond_f

    .line 358
    const v1, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v6

    .line 361
    :cond_f
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x6

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 350
    :cond_10
    if-eqz v17, :cond_e

    .line 351
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 352
    .local v19, "cpuOption":Ljava/lang/String;
    if-eqz v19, :cond_e

    .line 353
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_5

    .line 368
    .end local v6    # "freq":I
    .end local v19    # "cpuOption":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 369
    const/4 v6, -0x1

    .line 370
    .restart local v6    # "freq":I
    if-eqz v17, :cond_11

    .line 371
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 372
    .restart local v19    # "cpuOption":Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 373
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 377
    .end local v19    # "cpuOption":Ljava/lang/String;
    :cond_11
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x7

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 384
    .end local v6    # "freq":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_4

    .line 385
    const/4 v6, -0x1

    .line 386
    .restart local v6    # "freq":I
    if-eqz v17, :cond_12

    .line 387
    const-string v1, "GPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 388
    .local v20, "gpuOption":Ljava/lang/String;
    if-eqz v20, :cond_12

    .line 389
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 393
    .end local v20    # "gpuOption":Ljava/lang/String;
    :cond_12
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x1

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 400
    .end local v6    # "freq":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_4

    .line 401
    const/4 v6, -0x1

    .line 402
    .restart local v6    # "freq":I
    if-eqz v17, :cond_13

    .line 403
    const-string v1, "GPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 404
    .restart local v20    # "gpuOption":Ljava/lang/String;
    if-eqz v20, :cond_13

    .line 405
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 409
    .end local v20    # "gpuOption":Ljava/lang/String;
    :cond_13
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x9

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 416
    .end local v6    # "freq":I
    :pswitch_6
    const/4 v6, -0x1

    .line 418
    .restart local v6    # "freq":I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_14

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 420
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 423
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x8

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 428
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 432
    .end local v6    # "freq":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 433
    const/4 v9, -0x1

    .line 434
    .local v9, "busMinfreq":I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x8

    cmp-long v1, v1, v4

    if-nez v1, :cond_16

    .line 435
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v2, 0x0

    aget v9, v1, v2

    .line 442
    :cond_15
    :goto_6
    const/4 v1, -0x1

    if-eq v9, v1, :cond_4

    .line 443
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0xa

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 436
    :cond_16
    if-eqz v17, :cond_15

    .line 437
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 438
    .local v18, "busOption":Ljava/lang/String;
    if-eqz v18, :cond_15

    .line 439
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_6

    .line 449
    .end local v9    # "busMinfreq":I
    .end local v18    # "busOption":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 450
    const/4 v12, -0x1

    .line 451
    .local v12, "busMaxfreq":I
    if-eqz v17, :cond_17

    .line 452
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 453
    .restart local v18    # "busOption":Ljava/lang/String;
    if-eqz v18, :cond_17

    .line 454
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 457
    .end local v18    # "busOption":Ljava/lang/String;
    :cond_17
    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    .line 458
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v11, 0xb

    move/from16 v0, p1

    int-to-long v13, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 333
    .end local v12    # "busMaxfreq":I
    .restart local v3    # "coreNum":I
    .restart local v21    # "stringCoreNum":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto/16 :goto_4

    .line 312
    :catch_1
    move-exception v1

    goto/16 :goto_3

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 264
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 265
    .local v0, "timeout":I
    if-lez v0, :cond_0

    .line 266
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 539
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 540
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 542
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 532
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 535
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 536
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    .line 551
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 553
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 554
    .local v1, "freq":I
    if-lez v1, :cond_0

    .line 555
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 601
    .end local v1    # "freq":I
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_2

    .line 558
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 559
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 560
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 562
    .end local v1    # "freq":I
    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 563
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 564
    .local v0, "coreNum":I
    if-lez v0, :cond_0

    .line 565
    const-string v2, "CORE_NUM"

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 568
    .end local v0    # "coreNum":I
    :cond_3
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 569
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 570
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 571
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 573
    .end local v1    # "freq":I
    :cond_4
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 574
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 575
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 576
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 578
    .end local v1    # "freq":I
    :cond_5
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 579
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 580
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 581
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 583
    .end local v1    # "freq":I
    :cond_6
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 584
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 585
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 586
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 588
    .end local v1    # "freq":I
    :cond_7
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 589
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 590
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 591
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 592
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 595
    .end local v1    # "freq":I
    :cond_8
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 597
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 598
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 547
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 212
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 215
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 216
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 220
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 221
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 222
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 223
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 224
    goto :goto_0

    .line 226
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 3
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 236
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v1

    .line 239
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 240
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 244
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/16 v8, 0x7d0

    const/16 v7, 0x1f4

    const/4 v6, 0x0

    .line 669
    if-nez p2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    const-string v0, "jf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ssrm_jf_xx"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    :cond_2
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_4

    .line 680
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 681
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 682
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_a

    .line 683
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 684
    :cond_3
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v2

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 694
    :cond_4
    :goto_1
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5

    .line 695
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 696
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 697
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_b

    .line 698
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget-object v2, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 704
    :cond_5
    :goto_2
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 705
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 706
    :cond_6
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 711
    :cond_7
    :goto_3
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_0

    .line 712
    const-string v0, "hf"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ha"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 713
    :cond_8
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v7}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 686
    :cond_9
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const v3, 0x186a00

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 689
    :cond_a
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 700
    :cond_b
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 708
    :cond_c
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_3

    .line 715
    :cond_d
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 726
    sget-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_0

    .line 727
    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 728
    sget-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    .line 729
    .local v0, "coreTable":[I
    if-eqz v0, :cond_5

    .line 730
    sget-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 735
    .end local v0    # "coreTable":[I
    :cond_0
    :goto_0
    sget-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_1

    .line 736
    sget-object v2, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 739
    :cond_1
    const-string v2, "exynos4"

    sget-object v3, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "hf"

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x438

    iget v3, p0, Landroid/os/DVFSHelper;->mDisplayResolution:I

    if-ge v2, v3, :cond_4

    .line 740
    :cond_2
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_3

    .line 741
    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v3, 0x10

    invoke-direct {v2, p1, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 742
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    .line 743
    .local v1, "gpuTable":[I
    if-eqz v1, :cond_7

    .line 744
    const-string v2, "exynos4"

    sget-object v3, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 745
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget v4, v1, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 753
    .end local v1    # "gpuTable":[I
    :cond_3
    :goto_1
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_4

    .line 754
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 757
    :cond_4
    return-void

    .line 732
    .restart local v0    # "coreTable":[I
    :cond_5
    const-string v2, "DVFSHelper"

    const-string/jumbo v3, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 747
    .end local v0    # "coreTable":[I
    .restart local v1    # "gpuTable":[I
    :cond_6
    sget-object v2, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 750
    :cond_7
    const-string v2, "DVFSHelper"

    const-string/jumbo v3, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 492
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 504
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 507
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 509
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 512
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    .line 513
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 514
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 517
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5

    .line 518
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 519
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 522
    :cond_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_6

    .line 523
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 524
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 528
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0
.end method
