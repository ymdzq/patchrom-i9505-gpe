.class public Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "MovingAggregator.java"


# static fields
.field public static final PEDESTRIAN_MOVE:I = 0x0

.field public static final PEDESTRIAN_STOP:I = 0x1

.field public static final UNKNOWN:I = -0x1

.field public static final VEHICLE_MOVE:I = 0x2

.field public static final VEHICLE_STOP:I = 0x3


# instance fields
.field private mOldMode:I

.field private mOldMove:I

.field private mOldTransMethod:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .param p2, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 71
    return-void
.end method

.method private notifyMovingContext(III)V
    .locals 3
    .param p1, "move"    # I
    .param p2, "transMethod"    # I
    .param p3, "mode"    # I

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 214
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p2}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 215
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 217
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 219
    iput p1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 220
    iput p2, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 221
    iput p3, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 222
    return-void
.end method

.method private updateMovingMode(I)I
    .locals 2
    .param p1, "transMethod"    # I

    .prologue
    .line 173
    const/4 v0, -0x1

    .line 175
    .local v0, "movingMode":I
    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    packed-switch v1, :pswitch_data_0

    .line 192
    const/4 v0, -0x1

    .line 196
    :goto_0
    return v0

    .line 178
    :pswitch_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 179
    const/4 v0, 0x6

    goto :goto_0

    .line 181
    :cond_0
    iget v0, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 183
    goto :goto_0

    .line 189
    :pswitch_1
    iget v0, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 190
    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updatePedestrianStatus(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 119
    const-string v3, "PedestrianStatus"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 120
    .local v1, "pedestrianStatus":I
    const/4 v0, 0x0

    .line 121
    .local v0, "move":I
    const/4 v2, 0x0

    .line 123
    .local v2, "transMethod":I
    packed-switch v1, :pswitch_data_0

    .line 145
    const/4 v0, -0x1

    .line 146
    const/4 v2, -0x1

    .line 150
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 151
    return-void

    .line 125
    :pswitch_0
    const/4 v0, -0x1

    .line 126
    const/4 v2, -0x1

    .line 127
    goto :goto_0

    .line 129
    :pswitch_1
    const/4 v0, 0x1

    .line 130
    const/4 v2, 0x0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_2
    const/4 v0, 0x0

    .line 134
    const/4 v2, 0x0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_3
    const/4 v0, 0x1

    .line 138
    const/4 v2, 0x1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_4
    const/4 v0, 0x0

    .line 142
    const/4 v2, 0x1

    .line 143
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updatePedometerData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 160
    const-string v0, "StepStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 161
    iget v0, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    iget v1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    iget v2, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-direct {p0, v2}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->updateMovingMode(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->notifyMovingContext(III)V

    .line 163
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 96
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 97
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 99
    iput v1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    .line 100
    iput v1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    .line 101
    iput v1, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    .line 103
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iget v3, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMove:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 106
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    iget v3, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldTransMethod:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 107
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    iget v3, p0, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->mOldMode:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 109
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyObserver()V

    .line 110
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "move"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "transMethod"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "mode"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 242
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    .prologue
    .line 252
    return-object p0
.end method

.method protected final initializeAggregator()V
    .locals 3

    .prologue
    .line 81
    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;

    .line 83
    .local v0, "locatoinAggregator":Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/aggregator/builtin/LocationAggregator;->setPropertyValue(ILjava/lang/Object;)V

    .line 87
    :cond_0
    return-void
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 275
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->updatePedestrianStatus(Landroid/os/Bundle;)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/aggregator/builtin/MovingAggregator;->updatePedometerData(Landroid/os/Bundle;)V

    goto :goto_0
.end method
