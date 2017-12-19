.class public Lcom/android/internal/app/LocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    .line 72
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "another"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .prologue
    .line 92
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->-get1()Ljava/text/Collator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocalePicker;->-set0(Ljava/text/Collator;)Ljava/text/Collator;

    .line 94
    const-string/jumbo v0, "LocalePicker"

    const-string/jumbo v1, "Collator is not initialized before localeInfo compareTo another."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->-get1()Ljava/text/Collator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    return-object v0
.end method
