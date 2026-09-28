.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V
    .registers 2
    .param p1, "this$0"    # Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    .line 176
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTextPosition(Z)I
    .registers 7
    .param p1, "isActive"    # Z

    .line 179
    if-eqz p1, :cond_9

    .line 180
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v0

    return v0

    .line 183
    :cond_9
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$400(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_6e

    .line 184
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 185
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # --operator for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$306(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    .line 187
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_67

    .line 188
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z

    goto :goto_67

    .line 191
    :cond_4b
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # ++operator for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$304(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    .line 193
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-ne v0, v1, :cond_67

    .line 194
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z
    invoke-static {v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z
    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z

    .line 198
    :cond_67
    :goto_67
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    # setter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J
    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$402(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;J)J

    .line 201
    :cond_6e
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    # getter for: Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I
    invoke-static {v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v0

    return v0
.end method
