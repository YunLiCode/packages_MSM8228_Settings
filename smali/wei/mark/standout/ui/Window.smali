.class public Lwei/mark/standout/ui/Window;
.super Landroid/widget/FrameLayout;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwei/mark/standout/ui/Window$Editor;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Window"

.field public static final VISIBILITY_GONE:I = 0x0

.field public static final VISIBILITY_TRANSITION:I = 0x2

.field public static final VISIBILITY_VISIBLE:I = 0x1


# instance fields
.field public cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;"
        }
    .end annotation
.end field

.field public data:Landroid/os/Bundle;

.field public flags:I

.field public focused:Z

.field public id:I

.field private final mContext:Lwei/mark/standout/StandOutWindow;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public originalParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

.field public touchInfo:Lwei/mark/standout/ui/TouchInfo;

.field public visibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    .line 86
    return-void
.end method

.method public constructor <init>(Lwei/mark/standout/StandOutWindow;I)V
    .locals 5
    .param p1, "context"    # Lwei/mark/standout/StandOutWindow;
    .param p2, "id"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p1}, Lwei/mark/standout/StandOutWindow;->getThemeStyle()I

    move-result v2

    invoke-virtual {p1, v2}, Lwei/mark/standout/StandOutWindow;->setTheme(I)V

    .line 92
    iput-object p1, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lwei/mark/standout/ui/Window;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lwei/mark/standout/ui/Window;->cls:Ljava/lang/Class;

    .line 96
    iput p2, p0, Lwei/mark/standout/ui/Window;->id:I

    .line 97
    invoke-virtual {p1, p2, p0}, Lwei/mark/standout/StandOutWindow;->getParams(ILwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v2

    iput-object v2, p0, Lwei/mark/standout/ui/Window;->originalParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .line 98
    invoke-virtual {p1, p2}, Lwei/mark/standout/StandOutWindow;->getFlags(I)I

    move-result v2

    iput v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    .line 99
    new-instance v2, Lwei/mark/standout/ui/TouchInfo;

    invoke-direct {v2}, Lwei/mark/standout/ui/TouchInfo;-><init>()V

    iput-object v2, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    .line 100
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-object v3, p0, Lwei/mark/standout/ui/Window;->originalParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v3, v3

    iget-object v4, p0, Lwei/mark/standout/ui/Window;->originalParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v4, v4, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v2, Lwei/mark/standout/ui/TouchInfo;->ratio:F

    .line 101
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lwei/mark/standout/ui/Window;->data:Landroid/os/Bundle;

    .line 107
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-direct {p0}, Lwei/mark/standout/ui/Window;->getSystemDecorations()Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, "content":Landroid/view/View;
    sget v2, Lwei/mark/standout/R$id;->body:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 118
    .local v0, "body":Landroid/widget/FrameLayout;
    :goto_0
    invoke-virtual {p0, v1}, Lwei/mark/standout/ui/Window;->addView(Landroid/view/View;)V

    .line 120
    new-instance v2, Lwei/mark/standout/ui/Window$1;

    invoke-direct {v2, p0, p1, p2}, Lwei/mark/standout/ui/Window$1;-><init>(Lwei/mark/standout/ui/Window;Lwei/mark/standout/StandOutWindow;I)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    invoke-virtual {p1, p2, v0}, Lwei/mark/standout/StandOutWindow;->createAndAttachView(ILandroid/widget/FrameLayout;)V

    .line 142
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "You must attach your view to the given frame in createAndAttachView()"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    .end local v0    # "body":Landroid/widget/FrameLayout;
    .end local v1    # "content":Landroid/view/View;
    :cond_0
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 114
    .restart local v1    # "content":Landroid/view/View;
    sget v2, Lwei/mark/standout/R$id;->content:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    move-object v0, v1

    .line 115
    check-cast v0, Landroid/widget/FrameLayout;

    .restart local v0    # "body":Landroid/widget/FrameLayout;
    goto :goto_0

    .line 147
    :cond_1
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_FIX_COMPATIBILITY_ALL_DISABLE:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    invoke-virtual {p0, v0}, Lwei/mark/standout/ui/Window;->fixCompatibility(Landroid/view/View;)V

    .line 151
    :cond_2
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_ALL_DISABLE:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 152
    invoke-virtual {p0, v0}, Lwei/mark/standout/ui/Window;->addFunctionality(Landroid/view/View;)V

    .line 156
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lwei/mark/standout/ui/Window;->setTag(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method static synthetic access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    return-object v0
.end method

.method private getSystemDecorations()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 344
    iget-object v7, p0, Lwei/mark/standout/ui/Window;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v8, Lwei/mark/standout/R$layout;->system_window_decorators:I

    invoke-virtual {v7, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 347
    .local v2, "decorations":Landroid/view/View;
    sget v7, Lwei/mark/standout/R$id;->window_icon:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 348
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v7, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v7}, Lwei/mark/standout/StandOutWindow;->getAppIcon()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 349
    new-instance v7, Lwei/mark/standout/ui/Window$2;

    invoke-direct {v7, p0, v4}, Lwei/mark/standout/ui/Window$2;-><init>(Lwei/mark/standout/ui/Window;Landroid/widget/ImageView;)V

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget v7, Lwei/mark/standout/R$id;->title:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 362
    .local v5, "title":Landroid/widget/TextView;
    iget-object v7, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v8, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v7, v8}, Lwei/mark/standout/StandOutWindow;->getTitle(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    sget v7, Lwei/mark/standout/R$id;->hide:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 366
    .local v3, "hide":Landroid/view/View;
    new-instance v7, Lwei/mark/standout/ui/Window$3;

    invoke-direct {v7, p0}, Lwei/mark/standout/ui/Window$3;-><init>(Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 376
    sget v7, Lwei/mark/standout/R$id;->close:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "close":Landroid/view/View;
    new-instance v7, Lwei/mark/standout/ui/Window$4;

    invoke-direct {v7, p0}, Lwei/mark/standout/ui/Window$4;-><init>(Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    sget v7, Lwei/mark/standout/R$id;->titlebar:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 387
    .local v6, "titlebar":Landroid/view/View;
    new-instance v7, Lwei/mark/standout/ui/Window$5;

    invoke-direct {v7, p0}, Lwei/mark/standout/ui/Window$5;-><init>(Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 398
    sget v7, Lwei/mark/standout/R$id;->corner:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, "corner":Landroid/view/View;
    new-instance v7, Lwei/mark/standout/ui/Window$6;

    invoke-direct {v7, p0}, Lwei/mark/standout/ui/Window$6;-><init>(Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 411
    iget v7, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_HIDE_ENABLE:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 412
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 414
    :cond_0
    iget v7, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_CLOSE_DISABLE:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 415
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 417
    :cond_1
    iget v7, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_MOVE_DISABLE:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 418
    invoke-virtual {v6, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 420
    :cond_2
    iget v7, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v8, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_RESIZE_DISABLE:I

    invoke-static {v7, v8}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 421
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_3
    return-object v2
.end method


# virtual methods
.method addFunctionality(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 442
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_RESIZE_DISABLE:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    sget v2, Lwei/mark/standout/R$id;->corner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "corner":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 445
    new-instance v2, Lwei/mark/standout/ui/Window$7;

    invoke-direct {v2, p0}, Lwei/mark/standout/ui/Window$7;-><init>(Lwei/mark/standout/ui/Window;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 459
    .end local v0    # "corner":Landroid/view/View;
    :cond_0
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v3, Lwei/mark/standout/constants/StandOutFlags;->FLAG_ADD_FUNCTIONALITY_DROP_DOWN_DISABLE:I

    invoke-static {v2, v3}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 460
    sget v2, Lwei/mark/standout/R$id;->window_icon:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, "icon":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 462
    new-instance v2, Lwei/mark/standout/ui/Window$8;

    invoke-direct {v2, p0, v1}, Lwei/mark/standout/ui/Window$8;-><init>(Lwei/mark/standout/ui/Window;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    .end local v1    # "icon":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 227
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v2, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2, p0, p1}, Lwei/mark/standout/StandOutWindow;->onKeyEvent(ILwei/mark/standout/ui/Window;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    const-string v0, "Window"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cancelled by implementation."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 240
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 235
    :pswitch_0
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v1, p0}, Lwei/mark/standout/StandOutWindow;->unfocus(Lwei/mark/standout/ui/Window;)Z

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public edit()Lwei/mark/standout/ui/Window$Editor;
    .locals 1

    .prologue
    .line 321
    new-instance v0, Lwei/mark/standout/ui/Window$Editor;

    invoke-direct {v0, p0}, Lwei/mark/standout/ui/Window$Editor;-><init>(Lwei/mark/standout/ui/Window;)V

    return-object v0
.end method

.method fixCompatibility(Landroid/view/View;)V
    .locals 5
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 490
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 491
    .local v2, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 493
    const/4 v3, 0x0

    .line 494
    .local v3, "view":Landroid/view/View;
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "view":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .restart local v3    # "view":Landroid/view/View;
    if-nez v3, :cond_1

    .line 505
    return-void

    .line 498
    :cond_1
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v0, v3

    .line 499
    check-cast v0, Landroid/view/ViewGroup;

    .line 500
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 501
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    .locals 1

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .line 327
    .local v0, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lwei/mark/standout/ui/Window;->originalParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .line 330
    :cond_0
    return-object v0
.end method

.method public onFocus(Z)Z
    .locals 7
    .param p1, "focus"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 251
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v5, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUSABLE_DISABLE:I

    invoke-static {v2, v5}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iget-boolean v2, p0, Lwei/mark/standout/ui/Window;->focused:Z

    if-ne p1, v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return v3

    .line 259
    :cond_1
    iput-boolean p1, p0, Lwei/mark/standout/ui/Window;->focused:Z

    .line 262
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v5, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v2, v5, p0, p1}, Lwei/mark/standout/StandOutWindow;->onFocusChange(ILwei/mark/standout/ui/Window;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 263
    const-string v5, "Window"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Window "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " focus change "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_2

    const-string v2, "(true)"

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " cancelled by implementation."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz p1, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lwei/mark/standout/ui/Window;->focused:Z

    goto :goto_0

    .line 263
    :cond_2
    const-string v2, "(false)"

    goto :goto_1

    :cond_3
    move v2, v4

    .line 264
    goto :goto_2

    .line 268
    :cond_4
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v5, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_FOCUS_INDICATOR_DISABLE:I

    invoke-static {v2, v5}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 270
    sget v2, Lwei/mark/standout/R$id;->content:I

    invoke-virtual {p0, v2}, Lwei/mark/standout/ui/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    .local v0, "content":Landroid/view/View;
    if-eqz p1, :cond_7

    .line 273
    sget v2, Lwei/mark/standout/R$drawable;->border_focused:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 287
    .end local v0    # "content":Landroid/view/View;
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    .line 288
    .local v1, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {v1, p1}, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->setFocusFlag(Z)V

    .line 289
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v3, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v2, v3, v1}, Lwei/mark/standout/StandOutWindow;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 291
    if-eqz p1, :cond_9

    .line 292
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v2, p0}, Lwei/mark/standout/StandOutWindow;->setFocusedWindow(Lwei/mark/standout/ui/Window;)V

    :cond_6
    :goto_4
    move v3, v4

    .line 299
    goto :goto_0

    .line 276
    .end local v1    # "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    .restart local v0    # "content":Landroid/view/View;
    :cond_7
    iget v2, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v5, Lwei/mark/standout/constants/StandOutFlags;->FLAG_DECORATION_SYSTEM:I

    invoke-static {v2, v5}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 278
    sget v2, Lwei/mark/standout/R$drawable;->border:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 281
    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3

    .line 294
    .end local v0    # "content":Landroid/view/View;
    .restart local v1    # "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    :cond_9
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v2}, Lwei/mark/standout/StandOutWindow;->getFocusedWindow()Lwei/mark/standout/ui/Window;

    move-result-object v2

    if-ne v2, p0, :cond_6

    .line 295
    iget-object v2, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwei/mark/standout/StandOutWindow;->setFocusedWindow(Lwei/mark/standout/ui/Window;)V

    goto :goto_4
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 161
    invoke-virtual {p0}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v0

    .line 164
    .local v0, "params":Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v1}, Lwei/mark/standout/StandOutWindow;->getFocusedWindow()Lwei/mark/standout/ui/Window;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 166
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v2, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2}, Lwei/mark/standout/StandOutWindow;->focus(I)Z

    .line 171
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    iget v1, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v2, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    invoke-static {v1, v2}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 172
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    const-wide/high16 v2, 0x3ff0000000000000L

    iput-wide v2, v1, Lwei/mark/standout/ui/TouchInfo;->scale:D

    .line 173
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    const-wide/high16 v2, -0x4010000000000000L

    iput-wide v2, v1, Lwei/mark/standout/ui/TouchInfo;->dist:D

    .line 174
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v2, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-double v2, v2

    iput-wide v2, v1, Lwei/mark/standout/ui/TouchInfo;->firstWidth:D

    .line 175
    iget-object v1, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v2, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-double v2, v2

    iput-wide v2, v1, Lwei/mark/standout/ui/TouchInfo;->firstHeight:D

    .line 176
    const/4 v1, 0x1

    .line 179
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/high16 v13, 0x3f000000

    const-wide/high16 v10, 0x4000000000000000L

    const/4 v12, 0x1

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 198
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_0

    iget v6, p0, Lwei/mark/standout/ui/Window;->flags:I

    sget v7, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_PINCH_RESIZE_ENABLE:I

    invoke-static {v6, v7}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 202
    .local v2, "x0":F
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 203
    .local v4, "y0":F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 204
    .local v3, "x1":F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 206
    .local v5, "y1":F
    sub-float v6, v2, v3

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-float v8, v4, v5

    float-to-double v8, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 208
    .local v0, "dist":D
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_1

    .line 222
    .end local v0    # "dist":D
    .end local v2    # "x0":F
    .end local v3    # "x1":F
    .end local v4    # "y0":F
    .end local v5    # "y1":F
    :cond_0
    :goto_1
    return v12

    .line 188
    :pswitch_0
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v6}, Lwei/mark/standout/StandOutWindow;->getFocusedWindow()Lwei/mark/standout/ui/Window;

    move-result-object v6

    if-ne v6, p0, :cond_1

    .line 189
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    invoke-virtual {v6, p0}, Lwei/mark/standout/StandOutWindow;->unfocus(Lwei/mark/standout/ui/Window;)Z

    .line 193
    :cond_1
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;

    iget v7, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v6, v7, p0, p0, p1}, Lwei/mark/standout/StandOutWindow;->onTouchBody(ILwei/mark/standout/ui/Window;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 210
    .restart local v0    # "dist":D
    .restart local v2    # "x0":F
    .restart local v3    # "x1":F
    .restart local v4    # "y0":F
    .restart local v5    # "y1":F
    :pswitch_1
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v6, v6, Lwei/mark/standout/ui/TouchInfo;->dist:D

    const-wide/high16 v8, -0x4010000000000000L

    cmpl-double v6, v6, v8

    if-nez v6, :cond_2

    .line 211
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iput-wide v0, v6, Lwei/mark/standout/ui/TouchInfo;->dist:D

    .line 213
    :cond_2
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v7, v6, Lwei/mark/standout/ui/TouchInfo;->scale:D

    iget-object v9, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v9, v9, Lwei/mark/standout/ui/TouchInfo;->dist:D

    div-double v9, v0, v9

    mul-double/2addr v7, v9

    iput-wide v7, v6, Lwei/mark/standout/ui/TouchInfo;->scale:D

    .line 214
    iget-object v6, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iput-wide v0, v6, Lwei/mark/standout/ui/TouchInfo;->dist:D

    .line 217
    invoke-virtual {p0}, Lwei/mark/standout/ui/Window;->edit()Lwei/mark/standout/ui/Window$Editor;

    move-result-object v6

    invoke-virtual {v6, v13, v13}, Lwei/mark/standout/ui/Window$Editor;->setAnchorPoint(FF)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v6

    iget-object v7, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v7, v7, Lwei/mark/standout/ui/TouchInfo;->firstWidth:D

    iget-object v9, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v9, v9, Lwei/mark/standout/ui/TouchInfo;->scale:D

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget-object v8, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v8, v8, Lwei/mark/standout/ui/TouchInfo;->firstHeight:D

    iget-object v10, p0, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget-wide v10, v10, Lwei/mark/standout/ui/TouchInfo;->scale:D

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lwei/mark/standout/ui/Window$Editor;->setSize(II)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v6

    invoke-virtual {v6}, Lwei/mark/standout/ui/Window$Editor;->commit()V

    goto :goto_1

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 208
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 306
    instance-of v0, p1, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    .line 307
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Window"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": LayoutParams must be an instance of StandOutLayoutParams."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
