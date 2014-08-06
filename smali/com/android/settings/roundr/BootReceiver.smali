.class public Lcom/android/settings/roundr/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# static fields
.field public static boot_up:Z


# instance fields
.field boot:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/roundr/BootReceiver;->boot_up:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/roundr/BootReceiver;->boot:Z

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/roundr/BootReceiver;->boot_up:Z

    .line 33
    new-instance v0, Lcom/android/settings/roundr/LightsController;

    invoke-direct {v0}, Lcom/android/settings/roundr/LightsController;-><init>()V

    .line 34
    .local v0, "lc":Lcom/android/settings/roundr/LightsController;
    invoke-virtual {v0}, Lcom/android/settings/roundr/LightsController;->lockOnButtonBkLight()V

    .line 36
    return-void
.end method
