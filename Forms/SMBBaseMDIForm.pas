unit SMBBaseMDIForm;

interface

uses
  SMBFormManager, SMBBaseForm, Vcl.Menus, System.Classes;

type
  TBaseMDIForm = class (TSMBBaseForm)
    mmMenu: TMainMenu;
    procedure FormShow(Sender: TObject);
  private
    FFormManager: TSMBFormManager;
    procedure SetFormManager(const Value: TSMBFormManager);
  public
    property FormManager: TSMBFormManager read FFormManager write SetFormManager;
  end;

implementation

{$R *.dfm}

{ TBaseMDIForm }

procedure TBaseMDIForm.FormShow(Sender: TObject);
begin
  inherited;
  FFormManager.AppendTo(mmMenu);
end;

procedure TBaseMDIForm.SetFormManager(const Value: TSMBFormManager);
begin
  FFormManager := Value;
end;

end.
