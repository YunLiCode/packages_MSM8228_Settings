.class Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yeptelecom/audioprofile/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 466
    new-instance v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState$1;

    invoke-direct {v0}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState$1;-><init>()V

    sput-object v0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 431
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 432
    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    .line 433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 435
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    .line 436
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    .line 437
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    .line 433
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 439
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 464
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 452
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 453
    :cond_0
    new-array v1, p1, [Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    iput-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    .line 454
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    new-instance v2, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    invoke-direct {v2}, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 443
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/yeptelecom/audioprofile/RingerVolumePreference;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/yeptelecom/audioprofile/RingerVolumePreference;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mOriginalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object v1, p0, Lcom/yeptelecom/audioprofile/RingerVolumePreference$SavedState;->mVolumeStore:[Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/yeptelecom/audioprofile/RingerVolumePreference$VolumeStore;->mSystemVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_0
    return-void
.end method
