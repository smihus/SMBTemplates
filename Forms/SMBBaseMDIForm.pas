unit SMBBaseMDIForm;

interface

uses
  SMBFormManager, SMBBaseForm, Vcl.Menus, System.Classes;

type
  TBaseMDIForm = class (TSMBBaseForm)
    mmMenu: TMainMenu;
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
  FFormManager.AppendTo(mmMenu);
end;

procedure TBaseMDIForm.SetFormManager(const Value: IFormManager);
begin
  FFormManager := Value;
end;

end.
