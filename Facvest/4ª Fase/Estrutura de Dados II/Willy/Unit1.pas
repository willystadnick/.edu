unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, ExtDlgs;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBImage1: TDBImage;
    RadioGroup1: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4;

{$R *.DFM}

procedure TForm1.Button2Click(Sender: TObject);
begin
 form3.show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 form4.show;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
 datamodule2.tb_cliente.indexname := '';
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
 datamodule2.tb_cliente.indexname := 'ind_nome';
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
 datamodule2.tb_cliente.indexname := 'ind_cidade';
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
 datamodule2.tb_cliente.findnearest([edit1.text]);
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 openpicturedialog1.execute;
 dbimage1.picture.bitmap.loadfromfile(openpicturedialog1.filename);
 dbimage1.loadpicture;
end;

end.
