.class Lcom/android/internal/telephony/cdma/utk/SelectItemParams;
.super Lcom/android/internal/telephony/cdma/utk/CommandParams;
.source "CommandParams.java"


# instance fields
.field loadTitleIcon:Z

.field menu:Lcom/android/internal/telephony/cdma/utk/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;Lcom/android/internal/telephony/cdma/utk/Menu;Z)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cdma/utk/CommandDetails;
    .param p2, "menu"    # Lcom/android/internal/telephony/cdma/utk/Menu;
    .param p3, "loadTitleIcon"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/utk/CommandParams;-><init>(Lcom/android/internal/telephony/cdma/utk/CommandDetails;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->loadTitleIcon:Z

    .line 137
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    .line 138
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->loadTitleIcon:Z

    .line 139
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 142
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    if-eqz v2, :cond_3

    .line 143
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->loadTitleIcon:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 144
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iput-object p1, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 154
    :cond_0
    :goto_0
    const/4 v2, 0x1

    .line 156
    :goto_1
    return v2

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/SelectItemParams;->menu:Lcom/android/internal/telephony/cdma/utk/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/utk/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cdma/utk/Item;

    .line 147
    .local v1, "item":Lcom/android/internal/telephony/cdma/utk/Item;
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/utk/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 150
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/utk/Item;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 156
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/internal/telephony/cdma/utk/Item;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method
