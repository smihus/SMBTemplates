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
  public
    procedure SetFormManager(const Value: IFormManager);
  end;

implementation

{$R *.dfm}

{ TBaseMDIForm }

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
