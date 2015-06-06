.class public Landroid/hardware/scontext/SContextEvent;
.super Ljava/lang/Object;
.source "SContextEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

.field private mApproachContext:Landroid/hardware/scontext/SContextApproach;

.field private mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

.field private mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

.field private mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

.field private mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

.field private mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

.field private mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

.field private mMotionContext:Landroid/hardware/scontext/SContextMotion;

.field private mMovementContext:Landroid/hardware/scontext/SContextMovement;

.field private mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

.field private mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

.field private mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

.field private mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

.field private mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

.field private mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

.field public scontext:Landroid/hardware/scontext/SContext;

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 446
    new-instance v0, Landroid/hardware/scontext/SContextEvent$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEvent$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/hardware/scontext/SContext;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 91
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    .line 426
    const-class v0, Landroid/hardware/scontext/SContext;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContext;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 427
    const-class v0, Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextApproach;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 428
    const-class v0, Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPedometer;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 429
    const-class v0, Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextStepCountAlert;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 430
    const-class v0, Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 431
    const-class v0, Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovement;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 432
    const-class v0, Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAutoRotation;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 433
    const-class v0, Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextAirMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    .line 434
    const-class v0, Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextEnvironment;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    .line 435
    const-class v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextMovementForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    .line 436
    const-class v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    .line 437
    const-class v0, Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextCallPose;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    .line 438
    const-class v0, Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextShakeMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    .line 439
    const-class v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextFlipCoverAction;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    .line 440
    const-class v0, Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextGyroTemperature;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    .line 441
    const-class v0, Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextPutDownMotion;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    .line 442
    const-class v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextWakeUpVoice;

    iput-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    .line 443
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public getAirMotionContext()Landroid/hardware/scontext/SContextAirMotion;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    return-object v0
.end method

.method public getApproachContext()Landroid/hardware/scontext/SContextApproach;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    return-object v0
.end method

.method public getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    return-object v0
.end method

.method public getCallPoseContext()Landroid/hardware/scontext/SContextCallPose;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    return-object v0
.end method

.method public getCurrentStatusForPositioningContext()Landroid/hardware/scontext/SContextCurrentStatusForPositioning;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    return-object v0
.end method

.method public getEnvironmentContext()Landroid/hardware/scontext/SContextEnvironment;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    return-object v0
.end method

.method public getFlipCoverActionContext()Landroid/hardware/scontext/SContextFlipCoverAction;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    return-object v0
.end method

.method public getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    return-object v0
.end method

.method public getMotionContext()Landroid/hardware/scontext/SContextMotion;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    return-object v0
.end method

.method public getMovementContext()Landroid/hardware/scontext/SContextMovement;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    return-object v0
.end method

.method public getMovementForPositioningContext()Landroid/hardware/scontext/SContextMovementForPositioning;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    return-object v0
.end method

.method public getPedometerContext()Landroid/hardware/scontext/SContextPedometer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    return-object v0
.end method

.method public getPutDownMotionContext()Landroid/hardware/scontext/SContextPutDownMotion;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    return-object v0
.end method

.method public getShakeMotionContext()Landroid/hardware/scontext/SContextShakeMotion;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    return-object v0
.end method

.method public getStepCountAlertContext()Landroid/hardware/scontext/SContextStepCountAlert;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    return-object v0
.end method

.method public getWakeUpVoiceContext()Landroid/hardware/scontext/SContextWakeUpVoice;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    return-object v0
.end method

.method setAirMotionContext(Landroid/hardware/scontext/SContextAirMotion;)V
    .locals 0
    .param p1, "airMotionContext"    # Landroid/hardware/scontext/SContextAirMotion;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    .line 298
    return-void
.end method

.method setApproachContext(Landroid/hardware/scontext/SContextApproach;)V
    .locals 0
    .param p1, "approachContext"    # Landroid/hardware/scontext/SContextApproach;

    .prologue
    .line 243
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    .line 244
    return-void
.end method

.method setAutoRotationContext(Landroid/hardware/scontext/SContextAutoRotation;)V
    .locals 0
    .param p1, "autoRotationContext"    # Landroid/hardware/scontext/SContextAutoRotation;

    .prologue
    .line 288
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    .line 289
    return-void
.end method

.method setCallPoseContext(Landroid/hardware/scontext/SContextCallPose;)V
    .locals 0
    .param p1, "callPose"    # Landroid/hardware/scontext/SContextCallPose;

    .prologue
    .line 334
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    .line 335
    return-void
.end method

.method setCurrentStatusForPositioningContext(Landroid/hardware/scontext/SContextCurrentStatusForPositioning;)V
    .locals 0
    .param p1, "currentStatusForPositioning"    # Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    .prologue
    .line 325
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    .line 326
    return-void
.end method

.method setEnvironmentContext(Landroid/hardware/scontext/SContextEnvironment;)V
    .locals 0
    .param p1, "environmentContext"    # Landroid/hardware/scontext/SContextEnvironment;

    .prologue
    .line 306
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    .line 307
    return-void
.end method

.method setFlipCoverActionContext(Landroid/hardware/scontext/SContextFlipCoverAction;)V
    .locals 0
    .param p1, "flipCoverAction"    # Landroid/hardware/scontext/SContextFlipCoverAction;

    .prologue
    .line 352
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    .line 353
    return-void
.end method

.method setGyroTemperatureContext(Landroid/hardware/scontext/SContextGyroTemperature;)V
    .locals 0
    .param p1, "gyroTemperature"    # Landroid/hardware/scontext/SContextGyroTemperature;

    .prologue
    .line 361
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    .line 362
    return-void
.end method

.method setMotionContext(Landroid/hardware/scontext/SContextMotion;)V
    .locals 0
    .param p1, "motionContext"    # Landroid/hardware/scontext/SContextMotion;

    .prologue
    .line 270
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    .line 271
    return-void
.end method

.method setMovementContext(Landroid/hardware/scontext/SContextMovement;)V
    .locals 0
    .param p1, "movementContext"    # Landroid/hardware/scontext/SContextMovement;

    .prologue
    .line 279
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    .line 280
    return-void
.end method

.method setMovementForPositioningContext(Landroid/hardware/scontext/SContextMovementForPositioning;)V
    .locals 0
    .param p1, "movementForPositioning"    # Landroid/hardware/scontext/SContextMovementForPositioning;

    .prologue
    .line 315
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    .line 316
    return-void
.end method

.method setPedometerContext(Landroid/hardware/scontext/SContextPedometer;)V
    .locals 0
    .param p1, "pedometerContext"    # Landroid/hardware/scontext/SContextPedometer;

    .prologue
    .line 252
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    .line 253
    return-void
.end method

.method setPutDownMotionContext(Landroid/hardware/scontext/SContextPutDownMotion;)V
    .locals 0
    .param p1, "putDownMotion"    # Landroid/hardware/scontext/SContextPutDownMotion;

    .prologue
    .line 370
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    .line 371
    return-void
.end method

.method setShakeMotionContext(Landroid/hardware/scontext/SContextShakeMotion;)V
    .locals 0
    .param p1, "shakeMotion"    # Landroid/hardware/scontext/SContextShakeMotion;

    .prologue
    .line 343
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    .line 344
    return-void
.end method

.method setStepCountAlertContext(Landroid/hardware/scontext/SContextStepCountAlert;)V
    .locals 0
    .param p1, "stepCountAlertContext"    # Landroid/hardware/scontext/SContextStepCountAlert;

    .prologue
    .line 261
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    .line 262
    return-void
.end method

.method setWakeUpVoiceContext(Landroid/hardware/scontext/SContextWakeUpVoice;)V
    .locals 0
    .param p1, "wakeUpVoiceContext"    # Landroid/hardware/scontext/SContextWakeUpVoice;

    .prologue
    .line 379
    iput-object p1, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    .line 380
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 399
    iget-wide v0, p0, Landroid/hardware/scontext/SContextEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 400
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 401
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mApproachContext:Landroid/hardware/scontext/SContextApproach;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 402
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPedometerContext:Landroid/hardware/scontext/SContextPedometer;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 403
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mStepCountAlertContext:Landroid/hardware/scontext/SContextStepCountAlert;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 404
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMotionContext:Landroid/hardware/scontext/SContextMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 405
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementContext:Landroid/hardware/scontext/SContextMovement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 406
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAutoRotationContext:Landroid/hardware/scontext/SContextAutoRotation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 407
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mAirMotionContext:Landroid/hardware/scontext/SContextAirMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 408
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mEnvironmentContext:Landroid/hardware/scontext/SContextEnvironment;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 409
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mMovementForPositioningContext:Landroid/hardware/scontext/SContextMovementForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 410
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCurrentStatusForPositioningContext:Landroid/hardware/scontext/SContextCurrentStatusForPositioning;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 411
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mCallPoseContext:Landroid/hardware/scontext/SContextCallPose;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mShakeMotionContext:Landroid/hardware/scontext/SContextShakeMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 413
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mFlipCoverActionContext:Landroid/hardware/scontext/SContextFlipCoverAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 414
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mGyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 415
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mPutDownMotionContext:Landroid/hardware/scontext/SContextPutDownMotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 416
    iget-object v0, p0, Landroid/hardware/scontext/SContextEvent;->mWakeUpVoiceContext:Landroid/hardware/scontext/SContextWakeUpVoice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 417
    return-void
.end method
