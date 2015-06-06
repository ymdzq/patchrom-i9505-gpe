.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStatus;
    }
.end annotation


# static fields
.field private static final ACTION_P2P_STOPFIND_TIMER_EXPIRED:Ljava/lang/String; = "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

.field private static final BASE:I = 0x23000

.field public static final BLOCK_DISCOVERY:I = 0x2300f

.field private static final CMD_UNLOAD_P2P_DRIVER_FAILURE:I = 0x23012

.field private static final CMD_UNLOAD_P2P_DRIVER_SUCCESS:I = 0x23011

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final DBG:Z = true

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String;

.field public static final DISABLED:I = 0x0

.field public static final DISABLE_P2P_TIMED_OUT:I = 0x23006

.field private static final DISABLE_P2P_WAIT_TIME_MS:I = 0x1388

.field public static final DISCONNECT_WIFI_REQUEST:I = 0x2300c

.field public static final DISCONNECT_WIFI_RESPONSE:I = 0x2300d

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final DROP_WIFI_USER_ACCEPT:I = 0x23004

.field private static final DROP_WIFI_USER_REJECT:I = 0x23005

.field public static final ENABLED:I = 0x1

.field private static final FORM_GROUP:Ljava/lang/Boolean;

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0xa

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final JOIN_GROUP:Ljava/lang/Boolean;

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field private static final NO_RELOAD:Ljava/lang/Boolean;

.field public static final P2P_CONNECTION_CHANGED:I = 0x2300b

.field public static final P2P_ENABLE_PENDING:I = 0x2300a

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_GROUP_STARTED_TIMED_OUT:I = 0x23034

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x7530

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final RELOAD:Ljava/lang/Boolean;

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field public static final SET_COUNTRY_CODE:I = 0x23010

.field public static final SET_MIRACAST_MODE:I = 0x2300e

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final TIME_ELAPSED_AFTER_CONNECTED:I = 0x23035

.field public static final WIFI_ENABLE_PROCEED:I = 0x23013

.field private static mConnectWfd:Z

.field private static mDisableP2pTimeoutIndex:I

.field private static mGroupCreatingTimeoutIndex:I

.field private static mWfdEnabled:Z

.field private static mWpsSkip:Z


# instance fields
.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAutonomousGroup:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevicesCnt:I

.field private mConnectedNotification:Landroid/app/Notification;

.field private mContext:Landroid/content/Context;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDiscoveryBlocked:Z

.field private mDiscoveryPostponed:Z

.field private mDiscoveryStarted:Z

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mJoinExistingGroup:Z

.field private mLapseTime:I

.field private mLastSetCountryCode:Ljava/lang/String;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private final mP2pSupported:Z

.field private mPersistentGroup:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mSoundNotification:Landroid/app/Notification;

.field private mTempoarilyDisconnectedWifi:Z

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field t_dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 150
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    .line 151
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    .line 155
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 160
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    .line 308
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    .line 317
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mWfdEnabled:Z

    .line 319
    sput-boolean v2, Landroid/net/wifi/p2p/WifiP2pService;->mConnectWfd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 399
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 141
    iput v7, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    .line 142
    const/16 v1, 0xb

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    .line 144
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 235
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 242
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    .line 254
    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 256
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 282
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    .line 286
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    .line 289
    iput-byte v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 296
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 314
    iput-boolean v5, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    .line 400
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 403
    const-string/jumbo v1, "p2p0"

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 404
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    .line 406
    new-instance v1, Landroid/net/NetworkInfo;

    const/16 v2, 0xd

    const-string v3, "WIFI_P2P"

    const-string v4, ""

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 408
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 411
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    .line 412
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "WifiP2pService"

    invoke-virtual {v1, v7, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 413
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x1000001a

    const-string v3, "WifiP2pService"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 415
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 417
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.p2p.STOPFIND_TIMER_EXPIRED"

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    .local v0, "timerIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    .line 421
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 424
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v2, "WifiP2pService"

    iget-boolean v3, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v1, p0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 425
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 426
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return p1
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryPostponed:Z

    return p1
.end method

.method static synthetic access$102(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return p1
.end method

.method static synthetic access$10500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    return v0
.end method

.method static synthetic access$10502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mPersistentGroup:Z

    return p1
.end method

.method static synthetic access$10600()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->NO_RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$10902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpStateMachine;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$12300(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return v0
.end method

.method static synthetic access$12302(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    return p1
.end method

.method static synthetic access$12700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$12702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/wifi/WifiManager$WifiLock;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method static synthetic access$12900()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectWfd:Z

    return v0
.end method

.method static synthetic access$12902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 125
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectWfd:Z

    return p0
.end method

.method static synthetic access$13202(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 125
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsSkip:Z

    return p0
.end method

.method static synthetic access$13702(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic access$13800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpResults;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpResults:Landroid/net/DhcpResults;

    return-object v0
.end method

.method static synthetic access$13802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpResults;)Landroid/net/DhcpResults;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/net/DhcpResults;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpResults:Landroid/net/DhcpResults;

    return-object p1
.end method

.method static synthetic access$16200()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16302(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return p1
.end method

.method static synthetic access$16400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16402(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$16500(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$16700()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->RELOAD:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$16802(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 125
    sput-boolean p0, Landroid/net/wifi/p2p/WifiP2pService;->mWfdEnabled:Z

    return p0
.end method

.method static synthetic access$16900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$17002(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # B

    .prologue
    .line 125
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$17004(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$17100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$17102(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$17200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$17202(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/Notification;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$17300(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$17800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$17802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/os/Messenger;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$17900(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17902(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$18000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/ActivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$2504()I
    .locals 1

    .prologue
    .line 125
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mDisableP2pTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2900()I
    .locals 1

    .prologue
    .line 125
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$2904()I
    .locals 1

    .prologue
    .line 125
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$4702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTimerIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLastSetCountryCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6202(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/CountDownTimer;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$6502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$6600(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return v0
.end method

.method static synthetic access$6602(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$7400(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7402(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;

    .prologue
    .line 125
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return v0
.end method

.method static synthetic access$902(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/p2p/WifiP2pService;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryBlocked:Z

    return p1
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 451
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 467
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 429
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 430
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 431
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 498
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 513
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAutonomousGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mJoinExistingGroup "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDiscoveryStarted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkInfo "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTempoarilyDisconnectedWifi "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mTempoarilyDisconnectedWifi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceDiscReqId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 477
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 478
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 479
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public isInactiveState()Z
    .locals 1

    .prologue
    .line 461
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 462
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 463
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    # getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$300(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    return v0
.end method

.method public setMiracastMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceConnectivityInternalPermission()V

    .line 493
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const v1, 0x2300e

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->sendMessage(II)V

    .line 494
    return-void
.end method
