unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, OleCtrls, BarcodeReaderLib_TLB;

type
  TForm1 = class(TForm)
    BarcodeDecoder1: TBarcodeDecoder;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: integer;
begin
  BarcodeDecoder1.LinearFindBarcodes:= 7;
  BarcodeDecoder1.DecodeFile(Edit1.Text);
  for i:= 0 to BarcodeDecoder1.Barcodes.length-1 do begin
    ShowMessage(BarcodeDecoder1.Barcodes.item(i).Text);
  end
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  BarcodeDecoder1.AboutBox();
end;

end.
