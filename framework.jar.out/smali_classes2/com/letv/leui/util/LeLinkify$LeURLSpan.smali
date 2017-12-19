.class public Lcom/letv/leui/util/LeLinkify$LeURLSpan;
.super Landroid/text/style/URLSpan;
.source "LeLinkify.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeURLSpan"
.end annotation


# instance fields
.field public extraPaddingEnd:F

.field public extraPaddingStart:F

.field private mLinkColor:I

.field private mLinkSpec:Lcom/letv/leui/util/LinkSpec;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 745
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    .line 735
    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingStart:F

    .line 736
    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    .line 746
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v0}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    .line 751
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    .line 752
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    .line 753
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    .line 754
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    .line 755
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    .line 756
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    .line 744
    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/util/LinkSpec;)V
    .locals 2
    .param p1, "linkSpec"    # Lcom/letv/leui/util/LinkSpec;

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v0, p1, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 735
    iput v1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingStart:F

    .line 736
    iput v1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    .line 740
    iput-object p1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    .line 741
    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->color:I

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    .line 738
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 777
    const/16 v0, 0x19

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURLType()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 817
    instance-of v0, p1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 818
    check-cast v0, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    invoke-interface {v0, p1, p0}, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;->onClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z

    .line 816
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 823
    const/4 v0, 0x0

    .line 824
    .local v0, "handled":Z
    instance-of v1, p1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 825
    check-cast v1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    invoke-interface {v1, p1, p0}, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;->onLongClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z

    move-result v0

    .line 827
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 811
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 810
    return-void

    .line 811
    :cond_0
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    goto :goto_0
.end method

.method public updateDrawState(Lcom/letv/leui/text/LeTextPaint;Z)V
    .locals 2
    .param p1, "ds"    # Lcom/letv/leui/text/LeTextPaint;
    .param p2, "isPressed"    # Z

    .prologue
    .line 801
    if-eqz p2, :cond_0

    .line 802
    iget v0, p1, Lcom/letv/leui/text/LeTextPaint;->linkSelectedColor:I

    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setColor(I)V

    .line 806
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setUnderlineText(Z)V

    .line 800
    return-void

    .line 804
    :cond_0
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/letv/leui/text/LeTextPaint;->linkColor:I

    :goto_1
    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 766
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 767
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 771
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    return-void
.end method
