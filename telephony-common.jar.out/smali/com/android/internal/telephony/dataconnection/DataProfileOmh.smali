.class public Lcom/android/internal/telephony/dataconnection/DataProfileOmh;
.super Lcom/android/internal/telephony/dataconnection/DataProfile;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    }
.end annotation


# static fields
.field private static PROFILE_TYPE:Ljava/lang/String;


# instance fields
.field private DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

.field private DATA_PROFILE_OMH_PRIORITY_LOWEST:I

.field private mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

.field private mPriority:I

.field private serviceTypeMasks:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const-string v0, "DataProfileOmh"

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 125
    const-string v2, ""

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->PROFILE_TYPE:Ljava/lang/String;

    const/4 v6, 0x3

    const-string v8, "IP"

    const-string v9, "IP"

    move-object v0, p0

    move-object v5, v4

    move-object v7, v4

    move v10, v1

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "profileId"    # I
    .param p2, "priority"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;-><init>()V

    .line 132
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    .line 133
    iput p2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 134
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "authType"    # I
    .param p7, "types"    # [Ljava/lang/String;
    .param p8, "protocol"    # Ljava/lang/String;
    .param p9, "roamingProtocol"    # Ljava/lang/String;
    .param p10, "bearer"    # I

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct/range {p0 .. p10}, Lcom/android/internal/telephony/dataconnection/DataProfile;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    .line 102
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    .line 106
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 109
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 117
    return-void
.end method

.method private isValidPriority(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 197
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_HIGHEST:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->DATA_PROFILE_OMH_PRIORITY_LOWEST:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addServiceType(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 7
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .prologue
    .line 215
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    or-int/2addr v5, v6

    iput v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v4, "serviceTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->values()[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 220
    .local v1, "dpt":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    iget v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    .line 221
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataServiceType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "dpt":Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->types:[Ljava/lang/String;

    .line 225
    return-void
.end method

.method public canHandleType(Ljava/lang/String;)Z
    .locals 2
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 139
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->serviceTypeMasks:I

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;->getid()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataProfileType()Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/DataProfile$DataProfileType;

    return-object v0
.end method

.method public getDataProfileTypeModem()Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    return v0
.end method

.method public getServiceTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, "dummy":[Ljava/lang/String;
    return-object v0
.end method

.method public isPriorityHigher(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-ge v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPriorityLower(I)Z
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidPriority()Z
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->isValidPriority(I)Z

    move-result v0

    return v0
.end method

.method public setDataProfileTypeModem(Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;)V
    .locals 0
    .param p1, "modemProfile"    # Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mDataProfileModem:Lcom/android/internal/telephony/dataconnection/DataProfileOmh$DataProfileTypeModem;

    .line 171
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 178
    iput p1, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    .line 179
    return-void
.end method

.method public toHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "DataProfile OMH"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-super {p0}, Lcom/android/internal/telephony/dataconnection/DataProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/dataconnection/DataProfileOmh;->mPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
