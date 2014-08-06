.class public Lwei/mark/standout/ui/Window$Editor;
.super Ljava/lang/Object;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwei/mark/standout/ui/Window;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# static fields
.field public static final UNCHANGED:I = -0x80000000


# instance fields
.field anchorX:F

.field anchorY:F

.field displayHeight:I

.field displayWidth:I

.field mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

.field final synthetic this$0:Lwei/mark/standout/ui/Window;


# direct methods
.method public constructor <init>(Lwei/mark/standout/ui/Window;)V
    .locals 4

    .prologue
    .line 548
    iput-object p1, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 549
    invoke-virtual {p1}, Lwei/mark/standout/ui/Window;->getLayoutParams()Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    move-result-object v1

    iput-object v1, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .line 550
    const/4 v1, 0x0

    iput v1, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    iput v1, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    .line 552
    # getter for: Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;
    invoke-static {p1}, Lwei/mark/standout/ui/Window;->access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;

    move-result-object v1

    invoke-virtual {v1}, Lwei/mark/standout/StandOutWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 553
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lwei/mark/standout/ui/Window$Editor;->displayWidth:I

    .line 554
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const/high16 v2, 0x41c80000

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lwei/mark/standout/ui/Window$Editor;->displayHeight:I

    .line 555
    return-void
.end method

.method private setPosition(IIZ)Lwei/mark/standout/ui/Window$Editor;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "skip"    # Z

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_5

    .line 663
    iget v0, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 669
    :cond_1
    if-eq p1, v4, :cond_2

    .line 670
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p1

    iget-object v2, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v2, v2

    iget v3, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 672
    :cond_2
    if-eq p2, v4, :cond_3

    .line 673
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    int-to-float v1, p2

    iget-object v2, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v2, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v2, v2

    iget v3, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 676
    :cond_3
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget v0, v0, Lwei/mark/standout/ui/Window;->flags:I

    sget v1, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v0, v1}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 678
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->gravity:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_4

    .line 679
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The window "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget v2, v2, Lwei/mark/standout/ui/Window;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gravity must be TOP|LEFT if FLAG_WINDOW_EDGE_LIMITS_ENABLE or FLAG_WINDOW_EDGE_TILE_ENABLE is set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_4
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lwei/mark/standout/ui/Window$Editor;->displayWidth:I

    iget-object v3, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    .line 684
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v1, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v1, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lwei/mark/standout/ui/Window$Editor;->displayHeight:I

    iget-object v3, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v3, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    .line 688
    :cond_5
    return-object p0
.end method

.method private setSize(IIZ)Lwei/mark/standout/ui/Window$Editor;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "skip"    # Z

    .prologue
    const/high16 v9, -0x80000000

    const/high16 v8, 0x3f800000

    const/4 v7, 0x0

    .line 590
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v6, :cond_6

    .line 591
    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_0

    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_0

    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1

    .line 592
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 595
    :cond_1
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v1, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 596
    .local v1, "lastWidth":I
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v0, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 598
    .local v0, "lastHeight":I
    if-eq p1, v9, :cond_2

    .line 599
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iput p1, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 601
    :cond_2
    if-eq p2, v9, :cond_3

    .line 602
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iput p2, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 606
    :cond_3
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v3, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxWidth:I

    .line 607
    .local v3, "maxWidth":I
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v2, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    .line 609
    .local v2, "maxHeight":I
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget v6, v6, Lwei/mark/standout/ui/Window;->flags:I

    sget v7, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_EDGE_LIMITS_ENABLE:I

    invoke-static {v6, v7}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 610
    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->displayWidth:I

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 611
    iget v6, p0, Lwei/mark/standout/ui/Window$Editor;->displayHeight:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 615
    :cond_4
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v7, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    iget-object v8, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v8, v8, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    .line 616
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget-object v7, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    iget-object v8, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v8, v8, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 619
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget v6, v6, Lwei/mark/standout/ui/Window;->flags:I

    sget v7, Lwei/mark/standout/constants/StandOutFlags;->FLAG_WINDOW_ASPECT_RATIO_ENABLE:I

    invoke-static {v6, v7}, Lwei/mark/standout/Utils;->isSet(II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 620
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    int-to-float v6, v6

    iget-object v7, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget-object v7, v7, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v7, v7, Lwei/mark/standout/ui/TouchInfo;->ratio:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 621
    .local v5, "ratioWidth":I
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    int-to-float v6, v6

    iget-object v7, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget-object v7, v7, Lwei/mark/standout/ui/Window;->touchInfo:Lwei/mark/standout/ui/TouchInfo;

    iget v7, v7, Lwei/mark/standout/ui/TouchInfo;->ratio:F

    div-float/2addr v6, v7

    float-to-int v4, v6

    .line 622
    .local v4, "ratioHeight":I
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->minHeight:I

    if-lt v4, v6, :cond_7

    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->maxHeight:I

    if-gt v4, v6, :cond_7

    .line 624
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iput v4, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->height:I

    .line 631
    .end local v4    # "ratioHeight":I
    .end local v5    # "ratioWidth":I
    :cond_5
    :goto_0
    if-nez p3, :cond_6

    .line 633
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v6, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->x:I

    int-to-float v6, v6

    int-to-float v7, v1

    iget v8, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v6, v6

    iget-object v7, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iget v7, v7, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->y:I

    int-to-float v7, v7

    int-to-float v8, v0

    iget v9, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {p0, v6, v7}, Lwei/mark/standout/ui/Window$Editor;->setPosition(II)Lwei/mark/standout/ui/Window$Editor;

    .line 637
    .end local v0    # "lastHeight":I
    .end local v1    # "lastWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "maxWidth":I
    :cond_6
    return-object p0

    .line 627
    .restart local v0    # "lastHeight":I
    .restart local v1    # "lastWidth":I
    .restart local v2    # "maxHeight":I
    .restart local v3    # "maxWidth":I
    .restart local v4    # "ratioHeight":I
    .restart local v5    # "ratioWidth":I
    :cond_7
    iget-object v6, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    iput v5, v6, Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;->width:I

    goto :goto_0
.end method


# virtual methods
.method public commit()V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    # getter for: Lwei/mark/standout/ui/Window;->mContext:Lwei/mark/standout/StandOutWindow;
    invoke-static {v0}, Lwei/mark/standout/ui/Window;->access$1(Lwei/mark/standout/ui/Window;)Lwei/mark/standout/StandOutWindow;

    move-result-object v0

    iget-object v1, p0, Lwei/mark/standout/ui/Window$Editor;->this$0:Lwei/mark/standout/ui/Window;

    iget v1, v1, Lwei/mark/standout/ui/Window;->id:I

    iget-object v2, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    invoke-virtual {v0, v1, v2}, Lwei/mark/standout/StandOutWindow;->updateViewLayout(ILwei/mark/standout/StandOutWindow$StandOutLayoutParams;)V

    .line 698
    const/4 v0, 0x0

    iput-object v0, p0, Lwei/mark/standout/ui/Window$Editor;->mParams:Lwei/mark/standout/StandOutWindow$StandOutLayoutParams;

    .line 700
    :cond_0
    return-void
.end method

.method public setAnchorPoint(FF)Lwei/mark/standout/ui/Window$Editor;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    .line 558
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p1, v2

    if-gtz v0, :cond_0

    cmpg-float v0, p2, v1

    if-ltz v0, :cond_0

    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Anchor point must be between 0 and 1, inclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    iput p1, p0, Lwei/mark/standout/ui/Window$Editor;->anchorX:F

    .line 563
    iput p2, p0, Lwei/mark/standout/ui/Window$Editor;->anchorY:F

    .line 565
    return-object p0
.end method

.method public setPosition(II)Lwei/mark/standout/ui/Window$Editor;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lwei/mark/standout/ui/Window$Editor;->setPosition(IIZ)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v0

    return-object v0
.end method

.method public setSize(II)Lwei/mark/standout/ui/Window$Editor;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lwei/mark/standout/ui/Window$Editor;->setSize(IIZ)Lwei/mark/standout/ui/Window$Editor;

    move-result-object v0

    return-object v0
.end method
