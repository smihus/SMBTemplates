unit SMBBaseDialogForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSMBBaseDialogForm = class(TSMBBaseForm)
    plBottomButtons: TPanel;
    bnClose: TButton;
    procedure bnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TSMBBaseDialogForm.bnCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
