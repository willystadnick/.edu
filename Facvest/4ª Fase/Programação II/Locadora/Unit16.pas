unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  Trelatorio = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  relatorio: Trelatorio;

implementation

uses Unit15;

{$R *.DFM}

procedure Trelatorio.BitBtn1Click(Sender: TObject);
begin
     Relat.Preview;
end;

procedure Trelatorio.BitBtn2Click(Sender: TObject);
begin
   relat.print;
end;

procedure Trelatorio.BitBtn3Click(Sender: TObject);
begin
     relatorio.close;
     frmprincipal.show;
end;

end.
