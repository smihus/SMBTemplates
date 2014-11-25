unit SMBBaseMDIChild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TSMBBaseMDIChildClass = class of TSMBBaseMDIChild;

  TSMBBaseMDIChild = class(TSMBBaseForm)
    plBottomButtons: TPanel;
    bnClose: TButton;
    procedure bnCloseClick(Sender: TObject); virtual;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  end;

implementation

{$R *.dfm}

procedure TSMBBaseMDIChild.bnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TSMBBaseMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TSMBBaseMDIChild.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
