.class public Lcom/android/settings/screenfilter/FilterService;
.super Landroid/app/Service;
.source "FilterService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field static filterOn:Z

.field static mactivity:Lcom/android/settings/screenfilter/MainActivity;

.field static screenHeight:I

.field static screenWidth:I


# instance fields
.field counter:I

.field lp:Landroid/view/WindowManager$LayoutParams;

.field mView:Lcom/android/settings/screenfilter/HUDView;

.field final runtime:Ljava/lang/Runtime;

.field thisProcess:Ljava/lang/Process;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x7d0

    sput v0, Lcom/android/settings/screenfilter/FilterService;->screenHeight:I

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/screenfilter/FilterService;->filterOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/screenfilter/FilterService;->counter:I

    .line 31
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->runtime:Ljava/lang/Runtime;

    .line 21
    return-void
.end method

.method public static setFilter(Z)V
    .locals 0
    .param p0, "on"    # Z

    .prologue
    .line 43
    sput-boolean p0, Lcom/android/settings/screenfilter/FilterService;->filterOn:Z

    .line 44
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    const/4 v5, -0x3

    const/16 v3, 0x7d6

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 48
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 49
    new-instance v0, Lcom/android/settings/screenfilter/HUDView;

    sget-object v1, Lcom/android/settings/screenfilter/MainActivity;->a:Lcom/android/settings/screenfilter/MainActivity;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/screenfilter/HUDView;-><init>(Landroid/content/Context;Lcom/android/settings/screenfilter/MainActivity;)V

    iput-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    .line 51
    const/16 v4, 0x28

    .line 53
    .local v4, "nFlags":I
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/screenfilter/FilterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->windowManager:Landroid/view/WindowManager;

    .line 54
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 55
    const/16 v1, 0x400

    const/16 v2, 0x200

    .line 58
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 54
    iput-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 60
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 61
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v11, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 63
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 64
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 65
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 66
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 67
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 68
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 69
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 70
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 71
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v10, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 73
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 74
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 75
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 77
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    invoke-virtual {v0, p0}, Lcom/android/settings/screenfilter/HUDView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/screenfilter/FilterService;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    iget-object v2, p0, Lcom/android/settings/screenfilter/FilterService;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v6, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v6, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v0, "\u6b63\u5728\u5904\u4e8e\u591c\u95f4\u6a21\u5f0f"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 82
    const-string v0, "\u70b9\u51fb\u5173\u95ed"

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 83
    const v0, 0x7f0200fc

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 85
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/screenfilter/MainActivity;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 86
    .local v7, "mainscreen":Landroid/content/Intent;
    const/high16 v0, 0x8000000

    invoke-static {p0, v10, v7, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 88
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 89
    .local v8, "n":Landroid/app/Notification;
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v8}, Lcom/android/settings/screenfilter/FilterService;->startForeground(ILandroid/app/Notification;)V

    .line 91
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 96
    invoke-virtual {p0, v1}, Lcom/android/settings/screenfilter/FilterService;->stopForeground(Z)V

    .line 97
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "exit"

    aput-object v2, v0, v1

    .line 98
    .local v0, "aa":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/settings/screenfilter/FilterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/screenfilter/FilterService;->mView:Lcom/android/settings/screenfilter/HUDView;

    .line 103
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    const/4 v0, 0x1

    return v0
.end method
