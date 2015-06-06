.class public Landroid/net/MobileDataStateTracker;
.super Landroid/net/BaseNetworkStateTracker;
.source "MobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MobileDataStateTracker$2;,
        Landroid/net/MobileDataStateTracker$NetworkDataEntry;,
        Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;,
        Landroid/net/MobileDataStateTracker$MdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "MobileDataStateTracker"

.field private static final UNKNOWN:I = 0x7fffffff

.field private static final VDBG:Z

.field private static mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;


# instance fields
.field private mApnType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

.field private mDefaultRouteSet:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field protected mPolicyDataEnabled:Z

.field private mPrivateDnsRouteSet:Z

.field private mSamplingDataTracker:Landroid/net/SamplingDataTracker;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Z

.field protected mUserDataEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x3840

    const/16 v5, 0x1680

    const v6, 0x7fffffff

    .line 858
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v1, 0x0

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xed

    const/16 v4, 0x76

    invoke-direct {v2, v9, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v2, 0x30

    const/16 v3, 0x28

    invoke-direct {v1, v8, v2, v3, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v8

    new-instance v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v2, 0x3

    const/16 v3, 0x180

    const/16 v4, 0x40

    invoke-direct {v1, v2, v3, v4, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v1, v0, v9

    const/4 v1, 0x3

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v7, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0x9

    invoke-direct {v2, v3, v7, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v7, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xf

    const/16 v4, 0x5208

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x5

    const/16 v4, 0x9a4

    const/16 v5, 0x99

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/4 v3, 0x6

    const/16 v4, 0xc00

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xc

    const/16 v4, 0x396c

    const/16 v5, 0x708

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xb

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xd

    const v4, 0x186a0

    const v5, 0xc350

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    const/16 v3, 0xe

    invoke-direct {v2, v3, v6, v6, v6}, Landroid/net/MobileDataStateTracker$NetworkDataEntry;-><init>(IIII)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/net/BaseNetworkStateTracker;-><init>()V

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/ITelephony;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    iput-boolean v1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    iput-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/net/SamplingDataTracker;

    invoke-direct {v0}, Landroid/net/SamplingDataTracker;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    new-instance v0, Landroid/net/MobileDataStateTracker$1;

    invoke-direct {v0, p0}, Landroid/net/MobileDataStateTracker$1;-><init>(Landroid/net/MobileDataStateTracker;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 98
    invoke-static {p1}, Landroid/net/MobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic access$1000(Landroid/net/MobileDataStateTracker;)Landroid/net/SamplingDataTracker;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/MobileDataStateTracker;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/net/MobileDataStateTracker;)Landroid/net/LinkProperties;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/MobileDataStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/net/LinkProperties;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/MobileDataStateTracker;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$300(Landroid/net/MobileDataStateTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/MobileDataStateTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Landroid/net/MobileDataStateTracker;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/MobileDataStateTracker;Lcom/android/internal/telephony/PhoneConstants$DataState;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Lcom/android/internal/telephony/PhoneConstants$DataState;

    .prologue
    .line 54
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/MobileDataStateTracker;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/net/MobileDataStateTracker;->updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/MobileDataStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/MobileDataStateTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/net/MobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/MobileDataStateTracker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/net/MobileDataStateTracker;

    .prologue
    .line 54
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method private static getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    .locals 7
    .param p0, "networkType"    # I

    .prologue
    .line 877
    sget-object v0, Landroid/net/MobileDataStateTracker;->mTheoreticalBWTable:[Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    .local v0, "arr$":[Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 878
    .local v1, "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    iget v4, v1, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->networkType:I

    if-ne v4, p0, :cond_0

    .line 884
    .end local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :goto_1
    return-object v1

    .line 877
    .restart local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 883
    .end local v1    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_1
    const-string v4, "MobileDataStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find Theoretical BW entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I
    .locals 2
    .param p0, "networkType"    # I
    .param p1, "ss"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 891
    packed-switch p0, :pswitch_data_0

    .line 916
    :pswitch_0
    const v1, 0x7fffffff

    .line 919
    :goto_0
    return v1

    .line 899
    :pswitch_1
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    .line 919
    .local v0, "level":I
    :goto_1
    mul-int/lit8 v1, v0, 0x64

    div-int/lit8 v1, v1, 0x5

    goto :goto_0

    .line 903
    .end local v0    # "level":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 904
    .restart local v0    # "level":I
    goto :goto_1

    .line 908
    .end local v0    # "level":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v0

    .line 909
    .restart local v0    # "level":I
    goto :goto_1

    .line 911
    .end local v0    # "level":I
    :pswitch_4
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    .line 912
    .restart local v0    # "level":I
    goto :goto_1

    .line 891
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneService(Z)V
    .locals 5
    .param p1, "forceRefresh"    # Z

    .prologue
    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/MultiSimManager;->getMultiSimCount()I

    move-result v0

    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPhoneService_aosp(Z)V
    .locals 1
    .param p1, "forceRefresh"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 374
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 376
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 774
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 778
    const-string v0, "MobileDataStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .param p0, "netType"    # I

    .prologue
    .line 725
    packed-switch p0, :pswitch_data_0

    .line 745
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 727
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 729
    :pswitch_2
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 731
    :pswitch_3
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 733
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 735
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 737
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 739
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 741
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 743
    :pswitch_9
    const-string v0, "ia"

    goto :goto_0

    .line 725
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 488
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDetailed state, old ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 490
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    if-eq p1, v3, :cond_1

    .line 491
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    .line 492
    .local v2, "wasConnecting":Z
    :goto_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "lastReason":Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v3, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 500
    move-object p2, v0

    .line 501
    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const/high16 v4, 0x70000

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 503
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 505
    .end local v0    # "lastReason":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "wasConnecting":Z
    :cond_1
    return-void

    .line 491
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEnableApnMSim(Ljava/lang/String;ZI)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    :goto_1
    return v2

    :cond_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v2, v2, p3

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnableApnMSim Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    const-string v2, "enable"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    const-string v2, "disable"

    goto :goto_2
.end method

.method private setEnableApn(Ljava/lang/String;Z)I
    .locals 5
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    invoke-static {}, Lmiui/telephony/MultiSimManager;->getInstance()Lmiui/telephony/MultiSimManager;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/telephony/MultiSimManager;->getPreferredDataSlotId()I

    move-result v0

    .local v0, "dds":I
    const/4 v2, 0x0

    .local v2, "retry":I
    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v3

    :goto_1
    return v3

    :cond_0
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mPhoneServices:[Lcom/android/internal/telephony/ITelephony;

    aget-object v3, v3, v0

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    if-nez v2, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    const-string v3, "enable"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " APN type \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    const/4 v3, 0x3

    goto :goto_1

    :cond_3
    const-string v3, "disable"

    goto :goto_2
.end method

.method private setEnableApn_aosp(Ljava/lang/String;Z)I
    .locals 4
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 698
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 703
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 704
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 705
    const-string v2, "Ignoring feature request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 720
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_4

    const-string v2, "enable"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 721
    const/4 v2, 0x3

    :goto_2
    return v2

    .line 710
    :cond_1
    if-eqz p2, :cond_2

    .line 711
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    .line 713
    :cond_2
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 715
    :catch_0
    move-exception v0

    .line 716
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_3

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 703
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 720
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v2, "disable"

    goto :goto_1
.end method

.method private static sloge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 782
    const-string v0, "MobileDataStateTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private updateLinkProperitesAndCapatilities(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    const-string v0, "linkProperties"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 197
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v0, :cond_0

    .line 198
    const-string v0, "CONNECTED event did not supply link properties."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 199
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 201
    :cond_0
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 203
    const-string v0, "linkCapabilities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/LinkCapabilities;

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 205
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v0, :cond_1

    .line 206
    const-string v0, "CONNECTED event did not supply link capabilities."

    invoke-direct {p0, v0}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 207
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 209
    :cond_1
    return-void
.end method


# virtual methods
.method public addStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 672
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    .line 673
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 466
    return-void
.end method

.method public captivePortalCheckCompleted(Z)V
    .locals 1
    .param p1, "isCaptivePortal"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mIsCaptivePortal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 472
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setEnableFailFastMobileData(I)V

    .line 475
    :cond_0
    return-void

    .line 472
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public defaultRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    .line 186
    return-void
.end method

.method public enableMobileProvisioning(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMobileProvisioning(url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 642
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 643
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 644
    .local v1, "msg":Landroid/os/Message;
    const v2, 0x42025

    iput v2, v1, Landroid/os/Message;->what:I

    .line 645
    const-string/jumbo v2, "provisioningUrl"

    invoke-static {v2, p1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 646
    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    .line 648
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 764
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 756
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getLinkQualityInfo()Landroid/net/LinkQualityInfo;
    .locals 5

    .prologue
    .line 787
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 789
    :cond_0
    const/4 v1, 0x0

    .line 841
    :cond_1
    :goto_0
    return-object v1

    .line 792
    :cond_2
    new-instance v1, Landroid/net/MobileLinkQualityInfo;

    invoke-direct {v1}, Landroid/net/MobileLinkQualityInfo;-><init>()V

    .line 794
    .local v1, "li":Landroid/net/MobileLinkQualityInfo;
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNetworkType(I)V

    .line 796
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v3, v1}, Landroid/net/SamplingDataTracker;->setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V

    .line 798
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    if-eqz v3, :cond_4

    .line 799
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setMobileNetworkType(I)V

    .line 801
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Landroid/net/MobileDataStateTracker;->getNetworkDataEntry(I)Landroid/net/MobileDataStateTracker$NetworkDataEntry;

    move-result-object v0

    .line 802
    .local v0, "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    if-eqz v0, :cond_3

    .line 803
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->downloadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 804
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->uploadBandwidth:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalRxBandwidth(I)V

    .line 805
    iget v3, v0, Landroid/net/MobileDataStateTracker$NetworkDataEntry;->latency:I

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setTheoreticalLatency(I)V

    .line 808
    :cond_3
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_4

    .line 809
    invoke-virtual {v1}, Landroid/net/MobileLinkQualityInfo;->getMobileNetworkType()I

    move-result v3

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-static {v3, v4}, Landroid/net/MobileDataStateTracker;->getNormalizedSignalStrength(ILandroid/telephony/SignalStrength;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setNormalizedSignalStrength(I)V

    .line 814
    .end local v0    # "entry":Landroid/net/MobileDataStateTracker$NetworkDataEntry;
    :cond_4
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 815
    .local v2, "ss":Landroid/telephony/SignalStrength;
    if-eqz v2, :cond_1

    .line 817
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setRssi(I)V

    .line 818
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setGsmErrorRate(I)V

    .line 819
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaDbm(I)V

    .line 820
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setCdmaEcio(I)V

    .line 821
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoDbm(I)V

    .line 822
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoEcio(I)V

    .line 823
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setEvdoSnr(I)V

    .line 824
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteSignalStrength()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteSignalStrength(I)V

    .line 825
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrp()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrp(I)V

    .line 826
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRsrq()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRsrq(I)V

    .line 827
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteRssnr()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteRssnr(I)V

    .line 828
    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLteCqi()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/net/MobileLinkQualityInfo;->setLteCqi(I)V

    goto/16 :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 390
    const-string/jumbo v0, "unknown"

    .line 391
    .local v0, "networkTypeStr":Ljava/lang/String;
    new-instance v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 393
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 441
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 443
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 395
    :pswitch_1
    const-string v0, "gprs"

    .line 396
    goto :goto_0

    .line 398
    :pswitch_2
    const-string v0, "edge"

    .line 399
    goto :goto_0

    .line 402
    :pswitch_3
    const-string/jumbo v0, "umts"

    .line 403
    goto :goto_0

    .line 405
    :pswitch_4
    const-string v0, "hsdpa"

    .line 406
    goto :goto_0

    .line 408
    :pswitch_5
    const-string v0, "hsupa"

    .line 409
    goto :goto_0

    .line 411
    :pswitch_6
    const-string v0, "hspa"

    .line 412
    goto :goto_0

    .line 414
    :pswitch_7
    const-string v0, "hspap"

    .line 415
    goto :goto_0

    .line 417
    :pswitch_8
    const-string v0, "cdma"

    .line 418
    goto :goto_0

    .line 420
    :pswitch_9
    const-string v0, "1xrtt"

    .line 421
    goto :goto_0

    .line 423
    :pswitch_a
    const-string v0, "evdo"

    .line 424
    goto :goto_0

    .line 426
    :pswitch_b
    const-string v0, "evdo"

    .line 427
    goto :goto_0

    .line 429
    :pswitch_c
    const-string v0, "evdo"

    .line 430
    goto :goto_0

    .line 432
    :pswitch_d
    const-string v0, "iden"

    .line 433
    goto :goto_0

    .line 435
    :pswitch_e
    const-string v0, "lte"

    .line 436
    goto :goto_0

    .line 438
    :pswitch_f
    const-string v0, "ehrpd"

    .line 439
    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mDefaultRouteSet:Z

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    return v0
.end method

.method public isProvisioningNetwork()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 657
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 658
    .local v1, "msg":Landroid/os/Message;
    const v4, 0x42026

    iput v4, v1, Landroid/os/Message;->what:I

    .line 659
    const-string v4, "apnType"

    iget-object v5, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 660
    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 661
    .local v2, "result":Landroid/os/Message;
    iget v4, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v3, :cond_0

    .line 666
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "result":Landroid/os/Message;
    .local v3, "retVal":Z
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 667
    return v3

    .line 661
    .end local v3    # "retVal":Z
    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "result":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 662
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "result":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isProvisioningNetwork: X "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 664
    const/4 v3, 0x0

    .restart local v3    # "retVal":Z
    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    return v0
.end method

.method public privateDnsRouteSet(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPrivateDnsRouteSet:Z

    .line 174
    return-void
.end method

.method public reconnect()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 522
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 536
    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 539
    :goto_0
    :pswitch_0
    return v0

    .line 525
    :pswitch_1
    const/4 v0, 0x1

    .line 526
    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/4 v0, 0x1

    .line 531
    goto :goto_0

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reconnectMSim(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnMSim(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    const-string v1, "Error in reconnect - unexpected response."

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public removeStackedLink(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "link"    # Landroid/net/LinkProperties;

    .prologue
    .line 677
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, p1}, Landroid/net/LinkProperties;->removeStackedLink(Landroid/net/LinkProperties;)Z

    .line 678
    return-void
.end method

.method public setDependencyMet(Z)V
    .locals 5
    .param p1, "met"    # Z

    .prologue
    .line 622
    const-string v3, "apnType"

    iget-object v4, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 624
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: E met="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 625
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 626
    .local v2, "msg":Landroid/os/Message;
    const v3, 0x4201f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 627
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 628
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 629
    iget-object v3, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    .end local v2    # "msg":Landroid/os/Message;
    :goto_1
    return-void

    .line 627
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 631
    .end local v2    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 632
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDependencyMet: X mAc was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 3
    .param p1, "enabled"    # I

    .prologue
    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableFailFastMobileData(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 612
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 613
    const v1, 0x42024

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 615
    :cond_0
    return-void
.end method

.method public setInternalDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInternalDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 574
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 575
    const v2, 0x4201b

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 579
    :cond_0
    return-void

    .line 575
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPolicyDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPolicyDataEnable(enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 597
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 598
    const v2, 0x42020

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 600
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 602
    :cond_0
    return-void

    .line 598
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadio(Z)Z
    .locals 5
    .param p1, "turnOn"    # Z

    .prologue
    const/4 v3, 0x0

    .line 548
    invoke-direct {p0, v3}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 553
    const/4 v1, 0x0

    .local v1, "retry":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 554
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v2, :cond_1

    .line 555
    const-string v2, "Ignoring mobile radio request because could not acquire PhoneService"

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 566
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set radio power to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_3

    const-string/jumbo v2, "on"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    move v2, v3

    .line 567
    :goto_2
    return v2

    .line 560
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_2

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v1, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/MobileDataStateTracker;->getPhoneService(Z)V

    .line 553
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method public setTeardownRequested(Z)V
    .locals 0
    .param p1, "isRequested"    # Z

    .prologue
    .line 508
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mTeardownRequested:Z

    .line 509
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUserDataEnable: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/MobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mDataConnectionTrackerAc:Lcom/android/internal/util/AsyncChannel;

    .line 585
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 586
    const v2, 0x4201e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 588
    iput-boolean p1, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    .line 591
    :cond_0
    return-void

    .line 586
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 108
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 109
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 111
    new-instance v2, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v2, "android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v2, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/net/MobileDataStateTracker$MobileDataStateReceiver;-><init>(Landroid/net/MobileDataStateTracker;Landroid/net/MobileDataStateTracker$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 119
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 121
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 123
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 124
    return-void
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 925
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 926
    return-void
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 1
    .param p1, "s"    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    .prologue
    .line 930
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mSamplingDataTracker:Landroid/net/SamplingDataTracker;

    invoke-virtual {v0, p1}, Landroid/net/SamplingDataTracker;->stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V

    .line 931
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;

    .prologue
    .line 769
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 770
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 771
    return-void
.end method

.method public teardown()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    .line 453
    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/net/MobileDataStateTracker;->setEnableApn(Ljava/lang/String;Z)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public teardownMSim(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0}, Landroid/net/MobileDataStateTracker;->setTeardownRequested(Z)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MobileDataStateTracker;->setEnableApnMSim(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    new-instance v1, Ljava/io/CharArrayWriter;

    invoke-direct {v1}, Ljava/io/CharArrayWriter;-><init>()V

    .line 683
    .local v1, "writer":Ljava/io/CharArrayWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 684
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v2, "Mobile data state: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 685
    const-string v2, "Data enabled: user="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mUserDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 686
    const-string v2, ", policy="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Landroid/net/MobileDataStateTracker;->mPolicyDataEnabled:Z

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 687
    invoke-virtual {v1}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
