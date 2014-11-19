unit SMBBaseMDIChild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls,
  SMB.Model, SMB.Controller;

type
  TSMBBaseMDIChildClass = class of TSMBBaseMDIChild;

  TSMBBaseMDIChild = class(TSMBBaseForm)
    plBottomButtons: TPanel;
    bnClose: TButton;
    procedure bnCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FModel: TModel;
    FController: TController;
    function GetModel: TModel;
    function GetController: TController;
  protected
    function CreateModel: TModel; virtual;
    function CreateController: TController; virtual;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Model: TModel read GetModel;
    property Controller: TController read GetController;
  end;

implementation

{$R *.dfm}

procedure TSMBBaseMDIChild.bnCloseClick(Sender: TObject);
begin
  inherited;
  Close;
end;

constructor TSMBBaseMDIChild.Create(AOwner: TComponent);
begin
  inherited;
  FModel      := CreateModel;
  FController := CreateController;
end;

function TSMBBaseMDIChild.CreateController: TController;
begin
  Result := nil;
end;

function TSMBBaseMDIChild.CreateModel: TModel;
begin
  Result := nil;
end;

destructor TSMBBaseMDIChild.Destroy;
begin
  if Assigned(FModel) then
    FreeAndNil(FModel);
  inherited;
end;

procedure TSMBBaseMDIChild.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

function TSMBBaseMDIChild.GetController: TController;
begin
  if not Assigned(FModel) then
    raise Exception.Create('К форме "' + Self.Name + '" не подключен контроллер!!! Обратитесь к разработчику.')
  else
    Result := FController;
end;

function TSMBBaseMDIChild.GetModel: TModel;
begin
  if not Assigned(FModel) then
    raise Exception.Create('К форме "' + Self.Name + '" не подключена модель!!! Обратитесь к разработчику.')
  else
    Result := FModel;
end;

end.
