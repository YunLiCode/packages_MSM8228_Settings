.class public Lcom/android/settings/roundr/kbLight;
.super Landroid/preference/PreferenceActivity;
.source "kbLight.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field static mBkService:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private registerCheckBoxChangeListener(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/settings/roundr/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/roundr/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 26
    .local v0, "cbPref":Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 30
    :cond_0
    return-void
.end method

.method private startBkService(Landroid/content/Context;)V
    .locals 3
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/roundr/BkService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    .line 55
    sget-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 57
    :cond_0
    return-void
.end method

.method private stopBkService(Landroid/content/Context;)V
    .locals 1
    .param p1, "cntxt"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/roundr/kbLight;->mBkService:Landroid/content/Intent;

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f050045

    invoke-virtual {p0, v0}, Lcom/android/settings/roundr/kbLight;->addPreferencesFromResource(I)V

    .line 19
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "holo"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 20
    const v0, 0x7f0800d7

    invoke-direct {p0, v0}, Lcom/android/settings/roundr/kbLight;->registerCheckBoxChangeListener(I)V

    .line 21
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "strPrefKey":Ljava/lang/String;
    new-instance v1, Lcom/android/settings/roundr/LightsController;

    invoke-direct {v1}, Lcom/android/settings/roundr/LightsController;-><init>()V

    .line 35
    .local v1, "lc":Lcom/android/settings/roundr/LightsController;
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v1}, Lcom/android/settings/roundr/LightsController;->lockOnButtonBkLight()V

    .line 38
    invoke-direct {p0, p0}, Lcom/android/settings/roundr/kbLight;->startBkService(Landroid/content/Context;)V

    .line 48
    :cond_0
    :goto_0
    return v5

    .line 40
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 42
    invoke-virtual {v1}, Lcom/android/settings/roundr/LightsController;->lockOffButtonBkLight()V

    .line 43
    const v3, 0x7f0800d7

    invoke-virtual {p0, v3}, Lcom/android/settings/roundr/kbLight;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/roundr/kbLight;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 44
    .local v0, "cbPref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 46
    invoke-direct {p0, p0}, Lcom/android/settings/roundr/kbLight;->stopBkService(Landroid/content/Context;)V

    goto :goto_0
.end method
