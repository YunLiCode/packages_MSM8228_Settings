.class Lwei/mark/standout/ui/Window$5;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwei/mark/standout/ui/Window;->getSystemDecorations()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwei/mark/standout/ui/Window;


# direct methods
.method constructor <init>(Lwei/mark/standout/ui/Window;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lwei/mark/standout/ui/Window$5;->this$0:Lwei/mark/standout/ui/Window;

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 392
    iget-object v1, p0, Lwei/mark/standout/ui/Window$5;->this$0:Lwei/mark/standout/ui/Window;

    # getter for: Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;
    invoke-static {v1}, Lwei/mark/standout/ui/Window;->access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;

    move-result-object v1

    iget-object v2, p0, Lwei/mark/standout/ui/Window$5;->this$0:Lwei/mark/standout/ui/Window;

    iget v2, v2, Lwei/mark/standout/ui/Window;->id:I

    iget-object v3, p0, Lwei/mark/standout/ui/Window$5;->this$0:Lwei/mark/standout/ui/Window;

    invoke-virtual {v1, v2, v3, p1, p2}, Lwei/mark/standout/StandOutWindow;->onTouchHandleMove(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 393
    .local v0, "consumed":Z
    return v0
.end method
