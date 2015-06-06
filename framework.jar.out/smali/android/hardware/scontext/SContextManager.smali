.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final SCONTEXT_SERVICE_NUM:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 58
    const-string/jumbo v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 60
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 61
    return-void
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 316
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 317
    :cond_0
    const/4 v2, 0x0

    .line 330
    :cond_1
    :goto_0
    return-object v2

    .line 320
    :cond_2
    const/4 v2, 0x0

    .line 322
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 323
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 324
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    move-object v2, v0

    .line 326
    goto :goto_0
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "scontext"    # Landroid/hardware/scontext/SContext;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    .line 207
    .local v2, "service":I
    if-eqz p1, :cond_0

    invoke-virtual {p0, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 208
    :cond_0
    const/4 v3, 0x0

    .line 224
    :goto_0
    return v3

    .line 211
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 213
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 214
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 215
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContext;)V

    .line 220
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public initializeSContextService(I)V
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 280
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v1, p1}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SContextManager"

    const-string v2, "RemoteException in initializeSContextService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 4
    .param p1, "service"    # I

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, "res":Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, p1}, Landroid/hardware/scontext/ISContextService;->isAvailableService(I)Z

    move-result v1

    .line 305
    :goto_0
    return v1

    .line 299
    :cond_0
    const-string v2, "SContextManager"

    const-string v3, "This device doesn\'t support SensorHub."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    const/4 v1, 0x0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 72
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 73
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 74
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 76
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 77
    const/4 v2, 0x1

    .line 79
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I

    .prologue
    .line 95
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 96
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 97
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 98
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setStepCount(I)V

    .line 102
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 104
    .local v0, "res":Z
    if-eqz v0, :cond_2

    .line 105
    const/4 v2, 0x1

    .line 107
    :goto_1
    return v2

    .line 99
    .end local v0    # "res":Z
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_0

    .line 100
    invoke-virtual {v1, p3}, Landroid/hardware/scontext/SContext;->setDeviceType(I)V

    goto :goto_0

    .line 107
    .restart local v0    # "res":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D

    .prologue
    .line 152
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 153
    .local v0, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 155
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    move v1, p3

    move-wide v2, p4

    move-wide v4, p6

    .line 156
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setUserInfo(IDD)V

    .line 159
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 161
    .local v6, "res":Z
    if-eqz v6, :cond_1

    .line 162
    const/4 v1, 0x1

    .line 164
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 122
    new-instance v1, Landroid/hardware/scontext/SContext;

    invoke-direct {v1}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 123
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v1, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 125
    const/16 v2, 0x8

    if-ne p2, v2, :cond_1

    .line 126
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setEnvironmentInfo(II)V

    .line 131
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v0

    .line 133
    .local v0, "res":Z
    if-eqz v0, :cond_2

    .line 134
    const/4 v2, 0x1

    .line 136
    :goto_1
    return v2

    .line 127
    .end local v0    # "res":Z
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_0

    .line 128
    invoke-virtual {v1, p3, p4}, Landroid/hardware/scontext/SContext;->setShakeInfo(II)V

    goto :goto_0

    .line 136
    .restart local v0    # "res":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I

    .prologue
    .line 181
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    .line 182
    .local v0, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v0, p2}, Landroid/hardware/scontext/SContext;->setType(I)V

    .line 184
    const/16 v1, 0x9

    if-ne p2, v1, :cond_0

    move v1, p3

    move v2, p4

    move-wide v3, p5

    move v5, p7

    .line 185
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/scontext/SContext;->setParametersForMFP(IIDI)V

    .line 188
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContext;)Z

    move-result v6

    .line 190
    .local v6, "res":Z
    if-eqz v6, :cond_1

    .line 191
    const/4 v1, 0x1

    .line 193
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 240
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 238
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 255
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v1, :cond_0

    .line 260
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 262
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
