unit SMBBaseMDIForm;

interface

uses
  SMBFormManager, SMBBaseForm, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.StdActns;

type
  TBaseMDIForm = class (TSMBBaseForm)
    mmBase: TMainMenu;
    alBase: TActionList;
    aWindowClose: TWindowClose;
    aWindowCascade: TWindowCascade;
    aWindowTileHorizontal: TWindowTileHorizontal;
    aWindowTileVertical: TWindowTileVertical;
    aWindowMinimizeAll: TWindowMinimizeAll;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    procedure FormShow(Sender: TObject);
  private
    FFormManager: IFormManager;
    FUser: string;
    function GetUserFromWindows: string;
  public
    constructor Create(AOwner: TComponent); override;
    procedure SetFormManager(const Value: IFormManager);
    property User: String read FUser;
  end;

implementation

uses
  Winapi.Windows;

{$R *.dfm}

{ TBaseMDIForm }

function TBaseMDIForm.GetUserFromWindows: string;
var
  UserName    : string;
  UserNameLen : DWord;
begin
  UserNameLen := 255;
  SetLength(UserName, UserNameLen);
  if GetUserName(PChar(UserName), UserNameLen) then
    Result := Copy(UserName,1,UserNameLen - 1)
  else
    Result := 'Unknown';
end;
constructor TBaseMDIForm.Create(AOwner: TComponent);
begin
  inherited;
  FUser := GetUserFromWindows;
end;

procedure TBaseMDIForm.FormShow(Sender: TObject);
begin
  inherited;
  FFormManager.AppendTo(mmBase);
end;

procedure TBaseMDIForm.SetFormManager(const Value: IFormManager);
begin
  FFormManager := Value;
  FFormManager.SetOwner(Self);
end;

end.
