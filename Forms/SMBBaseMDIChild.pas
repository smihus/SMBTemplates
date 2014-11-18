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
    procedure bnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TSMBBaseMDIChild.bnCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TSMBBaseMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

end.
