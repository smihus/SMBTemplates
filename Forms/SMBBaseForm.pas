unit SMBBaseForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfmSMBBaseForm = class(TForm)
    pnBottomButtons: TPanel;
    bnClose: TButton;
    procedure bnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfmSMBBaseForm.bnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
