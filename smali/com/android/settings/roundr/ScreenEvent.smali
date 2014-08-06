.class public Lcom/android/settings/roundr/ScreenEvent;
.super Landroid/content/BroadcastReceiver;
.source "ScreenEvent.java"


# instance fields
.field cntxt:Landroid/content/Context;

.field mStrAction:Ljava/lang/String;

.field sensorEventListener:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/settings/roundr/ScreenEvent;->sensorEventListener:Landroid/hardware/SensorEventListener;

    .line 12
    iput-object v0, p0, Lcom/android/settings/roundr/ScreenEvent;->cntxt:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Lcom/android/settings/roundr/ScreenEvent;->mStrAction:Ljava/lang/String;

    .line 9
    return-void
.end method

.method static synthetic access$0(Lcom/android/settings/roundr/ScreenEvent;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/roundr/ScreenEvent;->changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private changeBkLightOfButtons(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strAction"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    new-instance v0, Lcom/android/settings/roundr/LightsController;

    invoke-direct {v0}, Lcom/android/settings/roundr/LightsController;-><init>()V

    .line 39
    .local v0, "lc":Lcom/android/settings/roundr/LightsController;
    invoke-virtual {v0}, Lcom/android/settings/roundr/LightsController;->lockOffButtonBkLight()V

    .line 46
    .end local v0    # "lc":Lcom/android/settings/roundr/LightsController;
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    new-instance v0, Lcom/android/settings/roundr/LightsController;

    invoke-direct {v0}, Lcom/android/settings/roundr/LightsController;-><init>()V

    .line 44
    .restart local v0    # "lc":Lcom/android/settings/roundr/LightsController;
    invoke-virtual {v0}, Lcom/android/settings/roundr/LightsController;->lockOnButtonBkLight()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/roundr/ScreenEvent;->mStrAction:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/android/settings/roundr/ScreenEvent;->cntxt:Landroid/content/Context;

    .line 22
    new-instance v0, Lcom/android/settings/roundr/ScreenEvent$1;

    invoke-direct {v0, p0}, Lcom/android/settings/roundr/ScreenEvent$1;-><init>(Lcom/android/settings/roundr/ScreenEvent;)V

    .line 29
    invoke-virtual {v0}, Lcom/android/settings/roundr/ScreenEvent$1;->start()V

    .line 32
    return-void
.end method
