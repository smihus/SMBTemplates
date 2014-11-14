unit SMBBaseMDIForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.Menus, System.Actions,
  Vcl.ActnList, SMBFormFactory;

type
  TBaseMDIForm = class(TSMBBaseForm)
    mmMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    alMain: TActionList;
  private
    FFormFactory: TSMBFormFactory;
  protected
    function CreateFormFactory(): TSMBFormFactory; virtual; abstract;
    procedure CreateAndShowMDIChild(aName: String);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

{ TBaseMDIForm }

constructor TBaseMDIForm.Create(AOwner: TComponent);
begin
  inherited;
  FFormFactory := CreateFormFactory;
end;

procedure TBaseMDIForm.CreateAndShowMDIChild(aName: String);
var
  Form: TForm;
begin
  Form := FFormFactory.createForm(aName, Self);
  Form.Show;
end;

destructor TBaseMDIForm.Destroy;
begin
  FreeAndNil(FFormFactory);
  inherited;
end;

end.
