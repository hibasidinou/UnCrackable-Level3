.class public Lsg/vantagepoint/uncrackable3/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnCrackable3"

.field static tampered:I = 0x0

.field private static final xorkey:Ljava/lang/String; = "pizzapizzapizzapizzapizz"


# instance fields
.field private check:Lsg/vantagepoint/uncrackable3/CodeCheck;

.field crc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "foo"

    .line 160
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lsg/vantagepoint/uncrackable3/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lsg/vantagepoint/uncrackable3/MainActivity;->showDialog(Ljava/lang/String;)V

    return-void
.end method

.method private native baz()J
.end method

.method private native init([B)V
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 3

    .line 38
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "This is unacceptable. The app is now going to exit."

    .line 41
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    new-instance p1, Lsg/vantagepoint/uncrackable3/MainActivity$1;

    invoke-direct {p1, p0}, Lsg/vantagepoint/uncrackable3/MainActivity$1;-><init>(Lsg/vantagepoint/uncrackable3/MainActivity;)V

    const/4 v1, -0x3

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private verifyLibs()V
    .locals 0

    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 104
    const/4 v0, 0x0

    sput v0, Lsg/vantagepoint/uncrackable3/MainActivity;->tampered:I

    .line 109
    new-instance v0, Lsg/vantagepoint/uncrackable3/MainActivity$2;

    invoke-direct {v0, p0}, Lsg/vantagepoint/uncrackable3/MainActivity$2;-><init>(Lsg/vantagepoint/uncrackable3/MainActivity;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 124
    invoke-virtual {v0, v1}, Lsg/vantagepoint/uncrackable3/MainActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    new-instance v0, Lsg/vantagepoint/uncrackable3/CodeCheck;

    invoke-direct {v0}, Lsg/vantagepoint/uncrackable3/CodeCheck;-><init>()V

    iput-object v0, p0, Lsg/vantagepoint/uncrackable3/MainActivity;->check:Lsg/vantagepoint/uncrackable3/CodeCheck;

    .line 132
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f09001c

    .line 133
    invoke-virtual {p0, p1}, Lsg/vantagepoint/uncrackable3/MainActivity;->setContentView(I)V

    return-void
.end method

.method public verify(Landroid/view/View;)V
    .locals 3

    const p1, 0x7f070036

    .line 138
    invoke-virtual {p0, p1}, Lsg/vantagepoint/uncrackable3/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 139
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lsg/vantagepoint/uncrackable3/MainActivity;->check:Lsg/vantagepoint/uncrackable3/CodeCheck;

    invoke-virtual {v1, p1}, Lsg/vantagepoint/uncrackable3/CodeCheck;->check_code(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Success!"

    .line 142
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "This is the correct secret."

    .line 143
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string p1, "Nope..."

    .line 145
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "That\'s not it. Try again."

    .line 146
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, -0x3

    .line 149
    new-instance v1, Lsg/vantagepoint/uncrackable3/MainActivity$3;

    invoke-direct {v1, p0}, Lsg/vantagepoint/uncrackable3/MainActivity$3;-><init>(Lsg/vantagepoint/uncrackable3/MainActivity;)V

    const-string v2, "OK"

    invoke-virtual {v0, p1, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method