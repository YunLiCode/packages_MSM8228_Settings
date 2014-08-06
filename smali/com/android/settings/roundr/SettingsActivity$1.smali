.class Lcom/android/settings/roundr/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/roundr/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/roundr/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/roundr/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/roundr/SettingsActivity$1;->this$0:Lcom/android/settings/roundr/SettingsActivity;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private startBkService(Landroid/content/Context;)V
    .locals 3
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/roundr/BkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    .line 56
    sget-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    :cond_0
    return-void
.end method

.method private stopBkService(Landroid/content/Context;)V
    .locals 1
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 26
    .local v0, "isChecked":Z
    new-instance v1, Lcom/android/settings/roundr/LightsController;

    invoke-direct {v1}, Lcom/android/settings/roundr/LightsController;-><init>()V

    .line 27
    .local v1, "lc":Lcom/android/settings/roundr/LightsController;
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/android/settings/roundr/LightsController;->lockOnButtonBkLight()V

    .line 29
    sget-object v3, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 31
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/roundr/SettingsActivity$1;->this$0:Lcom/android/settings/roundr/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/roundr/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/settings/roundr/BkService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 32
    .local v2, "mBkService":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/roundr/SettingsActivity$1;->this$0:Lcom/android/settings/roundr/SettingsActivity;

    invoke-virtual {v3, v2}, Lcom/android/settings/roundr/SettingsActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 43
    .end local v2    # "mBkService":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 36
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings/roundr/LightsController;->lockOffButtonBkLight()V

    .line 37
    sget-object v3, Lcom/android/settings/roundr/SettingsActivity;->mBkService:Landroid/content/Intent;

    if-nez v3, :cond_0

    .line 39
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/settings/roundr/SettingsActivity$1;->this$0:Lcom/android/settings/roundr/SettingsActivity;

    const-class v4, Lcom/android/settings/roundr/BkService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .restart local v2    # "mBkService":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/roundr/SettingsActivity$1;->this$0:Lcom/android/settings/roundr/SettingsActivity;

    invoke-virtual {v3, v2}, Lcom/android/settings/roundr/SettingsActivity;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
