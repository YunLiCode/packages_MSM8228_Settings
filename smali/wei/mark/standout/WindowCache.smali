.class public Lwei/mark/standout/WindowCache;
.super Ljava/lang/Object;
.source "WindowCache.java"


# instance fields
.field public sWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lwei/mark/standout/ui/Window;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    .line 17
    return-void
.end method


# virtual methods
.method public getCache(ILjava/lang/Class;)Lwei/mark/standout/ui/Window;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)",
            "Lwei/mark/standout/ui/Window;"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 47
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    if-nez v0, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 51
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lwei/mark/standout/ui/Window;

    goto :goto_0
.end method

.method public getCacheIds(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    iget-object v3, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 119
    .local v2, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    if-nez v2, :cond_1

    .line 120
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 127
    :cond_0
    return-object v1

    .line 123
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 125
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCacheSize(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 103
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 107
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_0
.end method

.method public isCached(ILjava/lang/Class;)Z
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    invoke-virtual {p0, p1, p2}, Lwei/mark/standout/WindowCache;->getCache(ILjava/lang/Class;)Lwei/mark/standout/ui/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putCache(ILjava/lang/Class;Lwei/mark/standout/ui/Window;)V
    .locals 2
    .param p1, "id"    # I
    .param p3, "window"    # Lwei/mark/standout/ui/Window;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;",
            "Lwei/mark/standout/ui/Window;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 66
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    .end local v0    # "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 68
    .restart local v0    # "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method public removeCache(ILjava/lang/Class;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lwei/mark/standout/StandOutWindow;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lwei/mark/standout/StandOutWindow;>;"
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 85
    .local v0, "l2":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lwei/mark/standout/ui/Window;>;"
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 87
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lwei/mark/standout/WindowCache;->sWindows:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
