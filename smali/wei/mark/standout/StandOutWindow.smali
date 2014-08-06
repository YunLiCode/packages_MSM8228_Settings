.class public abstract Lwei/mark/standout/StandOutWindow;
.super Landroid/app/Service;
.source "StandOutWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwei/mark/standout/StandOutWindow$DropDownListItem;,
        Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "CLOSE"

.field public static final ACTION_CLOSE_ALL:Ljava/lang/String; = "CLOSE_ALL"

.field public static final ACTION_HIDE:Ljava/lang/String; = "HIDE"

.field public static final ACTION_RESTORE:Ljava/lang/String; = "RESTORE"

.field public static final ACTION_SEND_DATA:Ljava/lang/String; = "SEND_DATA"

.field public static final ACTION_SHOW:Ljava/lang/String; = "SHOW"

.field public static final DEFAULT_ID:I = 0x0

.field public static final DISREGARD_ID:I = -0x2

.field public static final ONGOING_NOTIFICATION_ID:I = -0x1

.field static final TAG:Ljava/lang/String; = "StandOutWindow"

.field static sFocusedWindow:Lwei/mark/standout/ui/Window;

.field static sWindowCache:Lwei/mark/standout/WindowCache;

.field public static startedForeground:Z


# instance fields
.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lwei/mark/standout/WindowCache;

    invoke-direct {v0}, Lwei/mark/standout/WindowCache;-><init>()V

    sput-object v0, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    .line 313
    const/4 v0, 0x0

    sput-object v0, Lwei/mark/standout/StandOutWindow;->sFocusedWindow:Lwei/mark/standout/ui/Window;

    .line 322
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static close(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-static {p0, p1, p2}, Lwei/mark/standout/StandOutWindow;->getCloseIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 151
    return-void
.end method

.method public static closeAll(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-static {p0, p1}, Lwei/mark/standout/StandOutWindow;->getCloseAllIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 165
    return-void
.end method

.method public static getCloseAllIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "CLOSE_ALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCloseIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getHideIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "HIDE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSendDataIntent(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "toId"    # I
    .param p3, "requestCode"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .param p6, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "toCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    .local p5, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "requestCode"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wei.mark.standout.data"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wei.mark.standout.fromCls"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fromId"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SEND_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    sget-object v3, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {v3, p2, p1}, Lwei/mark/standout/WindowCache;->isCached(ILjava/lang/Class;)Z

    move-result v1

    .line 218
    .local v1, "cached":Z
    if-eqz v1, :cond_0

    const-string v0, "RESTORE"

    .line 219
    .local v0, "action":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "standout://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 220
    .local v2, "uri":Landroid/net/Uri;
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "id"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    .line 218
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v0, "SHOW"

    goto :goto_0

    .line 219
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static hide(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-static {p0, p1, p2}, Lwei/mark/standout/StandOutWindow;->getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 134
    return-void
.end method

.method public static sendData(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "toId"    # I
    .param p3, "requestCode"    # I
    .param p4, "data"    # Landroid/os/Bundle;
    .param p6, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, "toCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    .local p5, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-static/range {p0 .. p6}, Lwei/mark/standout/StandOutWindow;->getSendDataIntent(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 199
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-static {p0, p1, p2}, Lwei/mark/standout/StandOutWindow;->getShowIntent(Landroid/content/Context;Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method


# virtual methods
.method public final declared-synchronized bringToFront(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 1031
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v2

    .line 1032
    .local v2, "window":Lwei/mark/standout/ui/Window;
    if-nez v2, :cond_0

    .line 1033
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tried to bringToFront("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") a null window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    .end local v2    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1036
    .restart local v2    # "window":Lwei/mark/standout/ui/Window;
    :cond_0
    :try_start_1
    iget v3, v2, Lwei/mark/standout/ui/Window;->visibility:I

    if-nez v3, :cond_1

    .line 1037
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tried to bringToFront("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") a window that is not shown."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1040
    :cond_1
    iget v3, v2, Lwei/mark/standout/ui/Window;->visibility:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 1063
    :goto_0
    monitor-exit p0

    return-void

    .line 1045
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1, v2}, Lwei/mark/standout/StandOutWindow;->onBringToFront(ILwei/mark/standout/ui/Window;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1046
    const-string v3, "StandOutWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Window "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bring to front cancelled by implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1050
    :cond_3
    invoke-virtual {v2}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1054
    .local v1, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    :try_start_3
    iget-object v3, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1059
    :goto_1
    :try_start_4
    iget-object v3, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1055
    .end local v0    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1056
    .restart local v0    # "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized close(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x2

    .line 897
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 899
    .local v2, "window":Lwei/mark/standout/ui/Window;
    if-nez v2, :cond_1

    .line 976
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 903
    :cond_1
    :try_start_1
    iget v3, v2, Lwei/mark/standout/ui/Window;->visibility:I

    if-eq v3, v4, :cond_0

    .line 908
    invoke-virtual {p0, p1, v2}, Lwei/mark/standout/StandOutWindow;->onClose(ILwei/mark/standout/ui/Window;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 909
    const-string v3, "StandOutWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Window "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " close cancelled by implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 897
    .end local v2    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 916
    .restart local v2    # "window":Lwei/mark/standout/ui/Window;
    :cond_2
    :try_start_2
    invoke-virtual {p0, v2}, Lwei/mark/standout/StandOutWindow;->unfocus(Lwei/mark/standout/ui/Window;)Z

    .line 918
    const/4 v3, 0x2

    iput v3, v2, Lwei/mark/standout/ui/Window;->visibility:I

    .line 921
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getCloseAnimation(I)Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 926
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    .line 927
    :try_start_3
    new-instance v3, Lwei/mark/standout/StandOutWindow$4;

    invoke-direct {v3, p0, v2, p1}, Lwei/mark/standout/StandOutWindow$4;-><init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/ui/Window;I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 957
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwei/mark/standout/ui/Window;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 973
    :catch_0
    move-exception v1

    .line 974
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 960
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 963
    sget-object v3, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lwei/mark/standout/WindowCache;->removeCache(ILjava/lang/Class;)V

    .line 966
    sget-object v3, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lwei/mark/standout/WindowCache;->getCacheSize(Ljava/lang/Class;)I

    move-result v3

    if-nez v3, :cond_0

    .line 969
    const/4 v3, 0x0

    sput-boolean v3, Lwei/mark/standout/StandOutWindow;->startedForeground:Z

    .line 970
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lwei/mark/standout/StandOutWindow;->stopForeground(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized closeAll()V
    .locals 4

    .prologue
    .line 983
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->onCloseAll()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 984
    const-string v2, "StandOutWindow"

    const-string v3, "Windows close all cancelled by implementation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 998
    :cond_0
    monitor-exit p0

    return-void

    .line 989
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 990
    .local v1, "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getExistingIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 995
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 996
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lwei/mark/standout/StandOutWindow;->close(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 983
    .end local v0    # "id":I
    .end local v1    # "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 990
    .restart local v1    # "ids":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 991
    .restart local v0    # "id":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public abstract createAndAttachView(ILandroid/widget/FrameLayout;)V
.end method

.method public final declared-synchronized focus(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 1076
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1077
    .local v0, "window":Lwei/mark/standout/ui/Window;
    if-nez v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    .line 1081
    :cond_1
    :try_start_1
    iget v2, v0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1083
    sget-object v1, Lwei/mark/standout/StandOutWindow;->sFocusedWindow:Lwei/mark/standout/ui/Window;

    if-eqz v1, :cond_2

    .line 1084
    sget-object v1, Lwei/mark/standout/StandOutWindow;->sFocusedWindow:Lwei/mark/standout/ui/Window;

    invoke-virtual {p0, v1}, Lwei/mark/standout/StandOutWindow;->unfocus(Lwei/mark/standout/ui/Window;)Z

    .line 1087
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lwei/mark/standout/ui/Window;->onFocus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 1076
    .end local v0    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract getAppIcon()I
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public getCloseAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 646
    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getDropDown(I)Landroid/widget/PopupWindow;
    .locals 14
    .param p1, "id"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x2

    .line 656
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getDropDownItems(I)Ljava/util/List;

    move-result-object v2

    .line 657
    .local v2, "dropDownListItems":Ljava/util/List;, "Ljava/util/List<Lwei/mark/standout/StandOutWindow$DropDownListItem;>;"
    if-eqz v2, :cond_0

    .line 658
    move-object v4, v2

    .line 664
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lwei/mark/standout/StandOutWindow$DropDownListItem;>;"
    :goto_0
    new-instance v8, Lwei/mark/standout/StandOutWindow$DropDownListItem;

    const v9, 0x1080038

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Quit "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lwei/mark/standout/StandOutWindow$1;

    invoke-direct {v11, p0}, Lwei/mark/standout/StandOutWindow$1;-><init>(Lwei/mark/standout/StandOutWindow;)V

    invoke-direct {v8, p0, v9, v10, v11}, Lwei/mark/standout/StandOutWindow$DropDownListItem;-><init>(Lwei/mark/standout/StandOutWindow;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 674
    .local v5, "list":Landroid/widget/LinearLayout;
    invoke-virtual {v5, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 676
    new-instance v7, Landroid/widget/ScrollView;

    invoke-direct {v7, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 677
    .local v7, "scroller":Landroid/widget/ScrollView;
    invoke-virtual {v7, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 679
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v7, v12, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 681
    .local v1, "dropDown":Landroid/widget/PopupWindow;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 701
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x108001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 702
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 703
    return-object v1

    .line 660
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "dropDown":Landroid/widget/PopupWindow;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lwei/mark/standout/StandOutWindow$DropDownListItem;>;"
    .end local v5    # "list":Landroid/widget/LinearLayout;
    .end local v7    # "scroller":Landroid/widget/ScrollView;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .restart local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lwei/mark/standout/StandOutWindow$DropDownListItem;>;"
    goto :goto_0

    .line 681
    .restart local v1    # "dropDown":Landroid/widget/PopupWindow;
    .restart local v5    # "list":Landroid/widget/LinearLayout;
    .restart local v7    # "scroller":Landroid/widget/ScrollView;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lwei/mark/standout/StandOutWindow$DropDownListItem;

    .line 682
    .local v3, "item":Lwei/mark/standout/StandOutWindow$DropDownListItem;
    iget-object v9, p0, Lwei/mark/standout/StandOutWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v10, Lwei/mark/standout/R$layout;->drop_down_list_item:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 683
    .local v6, "listItem":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 691
    new-instance v9, Lwei/mark/standout/StandOutWindow$2;

    invoke-direct {v9, p0, v3, v1}, Lwei/mark/standout/StandOutWindow$2;-><init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/StandOutWindow$DropDownListItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public getDropDownItems(I)Ljava/util/List;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lwei/mark/standout/StandOutWindow$DropDownListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExistingIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    sget-object v0, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lwei/mark/standout/WindowCache;->getCacheIds(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method

.method public final getFocusedWindow()Lwei/mark/standout/ui/Window;
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lwei/mark/standout/StandOutWindow;->sFocusedWindow:Lwei/mark/standout/ui/Window;

    return-object v0
.end method

.method public getHiddenIcon()I
    .locals 1

    .prologue
    .line 542
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppIcon()I

    move-result v0

    return v0
.end method

.method public getHiddenNotificationIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 582
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHiddenNotificationMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 566
    const-string v0, ""

    return-object v0
.end method

.method public getHiddenNotificationTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHideAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 642
    const v0, 0x10a0001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 491
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppIcon()I

    move-result v0

    return v0
.end method

.method public abstract getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
.end method

.method public getPersistentNotificationIntent(I)Landroid/content/Intent;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 531
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPersistentNotificationMessage(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 515
    const-string v0, ""

    return-object v0
.end method

.method public getPersistentNotificationTitle(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Running"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowAnimation(I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 639
    const/high16 v0, 0x10a0000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getThemeStyle()I
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 479
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getUniqueId()I
    .locals 4

    .prologue
    .line 1113
    const/4 v1, 0x0

    .line 1114
    .local v1, "unique":I
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->getExistingIds()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1117
    return v1

    .line 1114
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1115
    .local v0, "id":I
    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public final getWindow(I)Lwei/mark/standout/ui/Window;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1155
    sget-object v0, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lwei/mark/standout/WindowCache;->getCache(ILjava/lang/Class;)Lwei/mark/standout/ui/Window;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized hide(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 838
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v2

    .line 840
    .local v2, "window":Lwei/mark/standout/ui/Window;
    if-nez v2, :cond_0

    .line 841
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tried to hide("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") a null window."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    .end local v2    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 844
    .restart local v2    # "window":Lwei/mark/standout/ui/Window;
    :cond_0
    :try_start_1
    iget v3, v2, Lwei/mark/standout/ui/Window;->visibility:I

    if-nez v3, :cond_1

    .line 845
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Tried to hide("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") a window that is not shown."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 849
    :cond_1
    invoke-virtual {p0, p1, v2}, Lwei/mark/standout/StandOutWindow;->onHide(ILwei/mark/standout/ui/Window;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 850
    const-string v3, "StandOutWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Window "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hide cancelled by implementation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 893
    :goto_0
    monitor-exit p0

    return-void

    .line 855
    :cond_2
    :try_start_2
    iget v3, v2, Lwei/mark/standout/ui/Window;->flags:I

    sget v4, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_HIDE_ENABLE:I

    invoke-static {v3, v4}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 856
    const/4 v3, 0x2

    iput v3, v2, Lwei/mark/standout/ui/Window;->visibility:I

    .line 858
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getHideAnimation(I)Landroid/view/animation/Animation;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 862
    .local v0, "animation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    .line 863
    :try_start_3
    new-instance v3, Lwei/mark/standout/StandOutWindow$3;

    invoke-direct {v3, p0, v2}, Lwei/mark/standout/StandOutWindow$3;-><init>(Lwei/mark/standout/StandOutWindow;Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 880
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwei/mark/standout/ui/Window;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 883
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    iget-object v3, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 891
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_4
    :try_start_6
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->close(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method

.method public final isExistingId(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1132
    sget-object v0, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lwei/mark/standout/WindowCache;->isCached(ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBringToFront(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public onClose(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseAll()Z
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 331
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 333
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lwei/mark/standout/StandOutWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 335
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lwei/mark/standout/StandOutWindow;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lwei/mark/standout/StandOutWindow;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 337
    const/4 v0, 0x0

    sput-boolean v0, Lwei/mark/standout/StandOutWindow;->startedForeground:Z

    .line 338
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 390
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->closeAll()V

    .line 391
    return-void
.end method

.method public onFocusChange(ILwei/mark/standout/ui/Window;Z)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "focus"    # Z

    .prologue
    .line 749
    const/4 v0, 0x0

    return v0
.end method

.method public onHide(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(ILwei/mark/standout/ui/Window;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 715
    return-void
.end method

.method public onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "requestCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;
    .param p5, "fromId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/Bundle;",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    return-void
.end method

.method public onResize(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 718
    return-void
.end method

.method public onShow(ILwei/mark/standout/ui/Window;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v8, 0x0

    .line 342
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 346
    if-eqz p1, :cond_9

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "action":Ljava/lang/String;
    const-string v0, "id"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 351
    .local v1, "id":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "ID cannot equals StandOutWindow.ONGOING_NOTIFICATION_ID"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_0
    const-string v0, "SHOW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RESTORE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    :cond_1
    invoke-virtual {p0, v1}, Lwei/mark/standout/StandOutWindow;->show(I)Lwei/mark/standout/ui/Window;

    .line 382
    .end local v1    # "id":I
    .end local v6    # "action":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 357
    .restart local v1    # "id":I
    .restart local v6    # "action":Ljava/lang/String;
    :cond_3
    const-string v0, "HIDE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {p0, v1}, Lwei/mark/standout/StandOutWindow;->hide(I)V

    goto :goto_0

    .line 359
    :cond_4
    const-string v0, "CLOSE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 360
    invoke-virtual {p0, v1}, Lwei/mark/standout/StandOutWindow;->close(I)V

    goto :goto_0

    .line 361
    :cond_5
    const-string v0, "CLOSE_ALL"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 362
    invoke-virtual {p0}, Lwei/mark/standout/StandOutWindow;->closeAll()V

    goto :goto_0

    .line 363
    :cond_6
    const-string v0, "SEND_DATA"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0, v1}, Lwei/mark/standout/StandOutWindow;->isExistingId(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, -0x2

    if-ne v1, v0, :cond_8

    .line 365
    :cond_7
    const-string v0, "wei.mark.standout.data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 366
    .local v3, "data":Landroid/os/Bundle;
    const-string v0, "requestCode"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 368
    .local v2, "requestCode":I
    const-string v0, "wei.mark.standout.fromCls"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 369
    .local v4, "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    const-string v0, "fromId"

    invoke-virtual {p1, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "fromId":I
    move-object v0, p0

    .line 371
    invoke-virtual/range {v0 .. v5}, Lwei/mark/standout/StandOutWindow;->onReceiveData(IILandroid/os/Bundle;Ljava/lang/Class;I)V

    goto :goto_0

    .line 373
    .end local v2    # "requestCode":I
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "fromCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    .end local v5    # "fromId":I
    :cond_8
    const-string v0, "StandOutWindow"

    const-string v7, "Failed to send data to non-existant window. Make sure toId is either an existing window\'s id, or is DISREGARD_ID."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v1    # "id":I
    .end local v6    # "action":Ljava/lang/String;
    :cond_9
    const-string v0, "StandOutWindow"

    const-string v7, "Tried to onStartCommand() with a null intent."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTouchBody(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 711
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchHandleMove(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1218
    invoke-virtual {p2}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    .line 1223
    .local v2, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v7, v7, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->firstX:I

    sub-int v4, v7, v8

    .line 1224
    .local v4, "totalDeltaX":I
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v7, v7, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->firstY:I

    sub-int v5, v7, v8

    .line 1226
    .local v5, "totalDeltaY":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1277
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lwei/mark/standout/StandOutWindow;->onMove(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1279
    return v6

    .line 1228
    :pswitch_0
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    .line 1229
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    .line 1231
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->firstX:I

    .line 1232
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->firstY:I

    goto :goto_0

    .line 1235
    :pswitch_1
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    sub-int v0, v7, v8

    .line 1236
    .local v0, "deltaX":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v8, v8, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    sub-int v1, v7, v8

    .line 1238
    .local v1, "deltaY":I
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    .line 1239
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    iput v8, v7, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    .line 1241
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-boolean v7, v7, Lwei/mark/standout/ui/TouchInfo;->moving:Z

    if-nez v7, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-lt v7, v8, :cond_0

    .line 1242
    :cond_1
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iput-boolean v6, v7, Lwei/mark/standout/ui/TouchInfo;->moving:Z

    .line 1245
    iget v7, p2, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_BODY_MOVE_ENABLE:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1248
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v6, :cond_2

    .line 1249
    iget v7, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    add-int/2addr v7, v0

    iput v7, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 1250
    iget v7, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    add-int/2addr v7, v1

    iput v7, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 1253
    :cond_2
    invoke-virtual {p2}, Lwei/mark/standout/ui/Window;->edit()Lwei/mark/standout/ui/Window$Editor;

    move-result-object v7

    iget v8, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    iget v9, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-virtual {v7, v8, v9}, Lwei/mark/standout/ui/Window$Editor;->setPosition(II)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v7

    invoke-virtual {v7}, Lwei/mark/standout/ui/Window$Editor;->commit()V

    goto/16 :goto_0

    .line 1258
    .end local v0    # "deltaX":I
    .end local v1    # "deltaY":I
    :pswitch_2
    iget-object v7, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iput-boolean v3, v7, Lwei/mark/standout/ui/TouchInfo;->moving:Z

    .line 1260
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 1263
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->threshold:I

    if-ge v7, v8, :cond_3

    move v3, v6

    .line 1264
    .local v3, "tap":Z
    :cond_3
    if-eqz v3, :cond_0

    iget v7, p2, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_BRING_TO_FRONT_ON_TAP:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1265
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->bringToFront(I)V

    goto/16 :goto_0

    .line 1270
    .end local v3    # "tap":Z
    :cond_4
    iget v7, p2, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_BRING_TO_FRONT_ON_TOUCH:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1271
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->bringToFront(I)V

    goto/16 :goto_0

    .line 1226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchHandleResize(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1294
    invoke-virtual {p2}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    .line 1296
    .local v2, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1327
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lwei/mark/standout/StandOutWindow;->onResize(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 1329
    const/4 v3, 0x1

    return v3

    .line 1298
    :pswitch_1
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    .line 1299
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    .line 1301
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-object v4, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v4, v4, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->firstX:I

    .line 1302
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-object v4, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v4, v4, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->firstY:I

    goto :goto_0

    .line 1305
    :pswitch_2
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v4, v4, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    sub-int v0, v3, v4

    .line 1306
    .local v0, "deltaX":I
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v4, v4, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    sub-int v1, v3, v4

    .line 1309
    .local v1, "deltaY":I
    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    add-int/2addr v3, v0

    iput v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 1310
    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    add-int/2addr v3, v1

    iput v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 1313
    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v4, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minWidth:I

    if-lt v3, v4, :cond_0

    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v4, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    if-gt v3, v4, :cond_0

    .line 1314
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->lastX:I

    .line 1317
    :cond_0
    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget v4, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minHeight:I

    if-lt v3, v4, :cond_1

    iget v3, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget v4, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    if-gt v3, v4, :cond_1

    .line 1318
    iget-object v3, p2, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iput v4, v3, Lwei/mark/standout/ui/TouchInfo;->lastY:I

    .line 1321
    :cond_1
    invoke-virtual {p2}, Lwei/mark/standout/ui/Window;->edit()Lwei/mark/standout/ui/Window$Editor;

    move-result-object v3

    iget v4, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget v5, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lwei/mark/standout/ui/Window$Editor;->setSize(II)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v3

    invoke-virtual {v3}, Lwei/mark/standout/ui/Window$Editor;->commit()V

    goto/16 :goto_0

    .line 1296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUpdate(ILwei/mark/standout/ui/Window;Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "window"    # Lwei/mark/standout/ui/Window;
    .param p3, "params"    # Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method

.method public final sendData(ILjava/lang/Class;IILandroid/os/Bundle;)V
    .locals 7
    .param p1, "fromId"    # I
    .param p3, "toId"    # I
    .param p4, "requestCode"    # I
    .param p5, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;II",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1020
    .local p2, "toCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v6, p1

    invoke-static/range {v0 .. v6}, Lwei/mark/standout/StandOutWindow;->sendData(Landroid/content/Context;Ljava/lang/Class;IILandroid/os/Bundle;Ljava/lang/Class;I)V

    .line 1021
    return-void
.end method

.method public final setFocusedWindow(Lwei/mark/standout/ui/Window;)V
    .locals 0
    .param p1, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 1171
    sput-object p1, Lwei/mark/standout/StandOutWindow;->sFocusedWindow:Lwei/mark/standout/ui/Window;

    .line 1172
    return-void
.end method

.method public final setIcon(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "drawableRes"    # I

    .prologue
    .line 1201
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v0

    .line 1204
    .local v0, "window":Lwei/mark/standout/ui/Window;
    return-void
.end method

.method public final setTitle(ILjava/lang/String;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v0

    .line 1188
    .local v0, "window":Lwei/mark/standout/ui/Window;
    return-void
.end method

.method public final declared-synchronized show(I)Lwei/mark/standout/ui/Window;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 760
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v1

    .line 764
    .local v1, "cachedWindow":Lwei/mark/standout/ui/Window;
    if-eqz v1, :cond_1

    .line 765
    move-object v5, v1

    .line 770
    .local v5, "window":Lwei/mark/standout/ui/Window;
    :goto_0
    iget v7, v5, Lwei/mark/standout/ui/Window;->visibility:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v7, v8, :cond_2

    move-object v5, v6

    .line 833
    .end local v5    # "window":Lwei/mark/standout/ui/Window;
    :cond_0
    :goto_1
    monitor-exit p0

    return-object v5

    .line 767
    :cond_1
    :try_start_1
    new-instance v5, Lwei/mark/standout/ui/Window;

    invoke-direct {v5, p0, p1}, Lwei/mark/standout/ui/Window;-><init>(Lwei/mark/standout/StandOutWindow;I)V

    .restart local v5    # "window":Lwei/mark/standout/ui/Window;
    goto :goto_0

    .line 775
    :cond_2
    invoke-virtual {p0, p1, v5}, Lwei/mark/standout/StandOutWindow;->onShow(ILwei/mark/standout/ui/Window;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 776
    const-string v7, "StandOutWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Window "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " show cancelled by implementation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v6

    .line 777
    goto :goto_1

    .line 780
    :cond_3
    const/4 v6, 0x1

    iput v6, v5, Lwei/mark/standout/ui/Window;->visibility:I

    .line 783
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getShowAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 786
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v5}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 790
    .local v3, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    :try_start_2
    iget-object v6, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6, v5, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    if-eqz v0, :cond_4

    .line 794
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lwei/mark/standout/ui/Window;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 801
    :cond_4
    :goto_2
    :try_start_3
    sget-object v6, Lwei/mark/standout/StandOutWindow;->sWindowCache:Lwei/mark/standout/WindowCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, p1, v7, v5}, Lwei/mark/standout/WindowCache;->putCache(ILjava/lang/Class;Lwei/mark/standout/ui/Window;)V

    .line 804
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 806
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "notification"

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 831
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->focus(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 760
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v1    # "cachedWindow":Lwei/mark/standout/ui/Window;
    .end local v3    # "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 796
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    .restart local v1    # "cachedWindow":Lwei/mark/standout/ui/Window;
    .restart local v3    # "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    .restart local v5    # "window":Lwei/mark/standout/ui/Window;
    :catch_0
    move-exception v2

    .line 797
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public final declared-synchronized unfocus(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v0

    .line 1103
    .local v0, "window":Lwei/mark/standout/ui/Window;
    invoke-virtual {p0, v0}, Lwei/mark/standout/StandOutWindow;->unfocus(Lwei/mark/standout/ui/Window;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 1102
    .end local v0    # "window":Lwei/mark/standout/ui/Window;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unfocus(Lwei/mark/standout/ui/Window;)Z
    .locals 2
    .param p1, "window"    # Lwei/mark/standout/ui/Window;

    .prologue
    .line 1344
    monitor-enter p0

    if-nez p1, :cond_0

    .line 1345
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tried to unfocus a null window."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1347
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lwei/mark/standout/ui/Window;->onFocus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "params"    # Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .prologue
    .line 1359
    invoke-virtual {p0, p1}, Lwei/mark/standout/StandOutWindow;->getWindow(I)Lwei/mark/standout/ui/Window;

    move-result-object v1

    .line 1361
    .local v1, "window":Lwei/mark/standout/ui/Window;
    if-nez v1, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    iget v2, v1, Lwei/mark/standout/ui/Window;->visibility:I

    if-eqz v2, :cond_0

    .line 1369
    iget v2, v1, Lwei/mark/standout/ui/Window;->visibility:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1374
    invoke-virtual {p0, p1, v1, p2}, Lwei/mark/standout/StandOutWindow;->onUpdate(ILwei/mark/standout/ui/Window;Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1375
    const-string v2, "StandOutWindow"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Window "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " update cancelled by implementation."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1380
    :cond_2
    :try_start_0
    invoke-virtual {v1, p2}, Lwei/mark/standout/ui/Window;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1381
    iget-object v2, p0, Lwei/mark/standout/StandOutWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
