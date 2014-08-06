.class Lcom/android/settings/screenfilter/HUDView;
.super Landroid/view/View;
.source "FilterService.java"


# instance fields
.field private mLoadPaint:Landroid/graphics/Paint;

.field ps:Lcom/android/settings/screenfilter/FilterService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/screenfilter/MainActivity;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mactivity"    # Lcom/android/settings/screenfilter/MainActivity;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 120
    check-cast p1, Lcom/android/settings/screenfilter/FilterService;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/settings/screenfilter/HUDView;->ps:Lcom/android/settings/screenfilter/FilterService;

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/screenfilter/HUDView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u591c\u95f4\u6a21\u5f0f\u5df2\u5f00\u542f"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    sput-object p2, Lcom/android/settings/screenfilter/FilterService;->mactivity:Lcom/android/settings/screenfilter/MainActivity;

    .line 123
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/screenfilter/HUDView;->mLoadPaint:Landroid/graphics/Paint;

    .line 124
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    sget-boolean v0, Lcom/android/settings/screenfilter/FilterService;->filterOn:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/screenfilter/HUDView;->mLoadPaint:Landroid/graphics/Paint;

    const/16 v1, 0x96

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/screenfilter/HUDView;->mLoadPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    const/4 v1, 0x0

    const/high16 v2, -0x3ee00000

    const v3, 0x4628c000

    const/high16 v4, 0x46960000

    iget-object v5, p0, Lcom/android/settings/screenfilter/HUDView;->mLoadPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 139
    :cond_0
    return-void
.end method
