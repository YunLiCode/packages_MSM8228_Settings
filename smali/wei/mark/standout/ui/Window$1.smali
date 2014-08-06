.class Lwei/mark/standout/ui/Window$1;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/ui/Window;-><init>(Lwei/mark/standout/StandOutWindow;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/ui/Window;

.field private final synthetic val$context:Lwei/mark/standout/StandOutWindow;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lwei/mark/standout/ui/Window;Lwei/mark/standout/StandOutWindow;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/ui/Window$1;->this$0:Lwei/mark/standout/ui/Window;

    iput-object p2, p0, Lwei/mark/standout/ui/Window$1;->val$context:Lwei/mark/standout/StandOutWindow;

    iput p3, p0, Lwei/mark/standout/ui/Window$1;->val$id:I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    const/4 v0, 0x0

    .line 128
    .local v0, "consumed":Z
    iget-object v3, p0, Lwei/mark/standout/ui/Window$1;->val$context:Lwei/mark/standout/StandOutWindow;

    iget v4, p0, Lwei/mark/standout/ui/Window$1;->val$id:I

    iget-object v5, p0, Lwei/mark/standout/ui/Window$1;->this$0:Lwei/mark/standout/ui/Window;

    invoke-virtual {v3, v4, v5, p1, p2}, Lwei/mark/standout/StandOutWindow;->onTouchHandleMove(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    move v0, v1

    .line 131
    :goto_0
    iget-object v3, p0, Lwei/mark/standout/ui/Window$1;->val$context:Lwei/mark/standout/StandOutWindow;

    iget v4, p0, Lwei/mark/standout/ui/Window$1;->val$id:I

    iget-object v5, p0, Lwei/mark/standout/ui/Window$1;->this$0:Lwei/mark/standout/ui/Window;

    invoke-virtual {v3, v4, v5, p1, p2}, Lwei/mark/standout/StandOutWindow;->onTouchBody(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    move v0, v1

    .line 133
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v0, v2

    .line 131
    goto :goto_1
.end method
