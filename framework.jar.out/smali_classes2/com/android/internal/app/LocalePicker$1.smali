.class final Lcom/android/internal/app/LocalePicker$1;
.super Landroid/widget/ArrayAdapter;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fieldId:I

.field final synthetic val$inflater:Landroid/view/LayoutInflater;

.field final synthetic val$layoutId:I


# direct methods
.method constructor <init>(Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;II)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/content/Context;
    .param p2, "$anonymous1"    # I
    .param p3, "$anonymous2"    # I
    .param p5, "val$inflater"    # Landroid/view/LayoutInflater;
    .param p6, "val$layoutId"    # I
    .param p7, "val$fieldId"    # I

    .prologue
    .line 189
    .local p4, "$anonymous3":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    iput-object p5, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iput p6, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    iput p7, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 194
    if-nez p2, :cond_1

    .line 195
    iget-object v4, p0, Lcom/android/internal/app/LocalePicker$1;->val$inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/android/internal/app/LocalePicker$1;->val$layoutId:I

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 196
    .local v3, "view":Landroid/view/View;
    iget v4, p0, Lcom/android/internal/app/LocalePicker$1;->val$fieldId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    .local v2, "text":Landroid/widget/TextView;
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 203
    .local v1, "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 206
    const v4, 0x1020001

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "cb":Landroid/view/View;
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->-get0()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->-get0()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 208
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 209
    if-eqz v0, :cond_0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 215
    :cond_0
    :goto_1
    return-object v3

    .line 199
    .end local v0    # "cb":Landroid/view/View;
    .end local v1    # "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v2    # "text":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    move-object v3, p2

    .line 200
    .restart local v3    # "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .restart local v2    # "text":Landroid/widget/TextView;
    goto :goto_0

    .line 211
    .restart local v0    # "cb":Landroid/view/View;
    .restart local v1    # "item":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 212
    if-eqz v0, :cond_0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
