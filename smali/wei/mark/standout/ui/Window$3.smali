.class Lwei/mark/standout/ui/Window$3;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lwei/mark/standout/ui/Window$3;->this$0:Lwei/mark/standout/ui/Window;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 370
    iget-object v0, p0, Lwei/mark/standout/ui/Window$3;->this$0:Lwei/mark/standout/ui/Window;

    # getter for: Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;
    invoke-static {v0}, Lwei/mark/standout/ui/Window;->access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;

    move-result-object v0

    iget-object v1, p0, Lwei/mark/standout/ui/Window$3;->this$0:Lwei/mark/standout/ui/Window;

    iget v1, v1, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v0, v1}, Lwei/mark/standout/StandOutWindow;->hide(I)V

    .line 371
    return-void
.end method
