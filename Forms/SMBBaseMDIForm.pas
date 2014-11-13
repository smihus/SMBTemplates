unit SMBBaseMDIForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.Menus, System.Actions,
  Vcl.ActnList;

type
  TBaseMDIForm = class(TSMBBaseForm)
    mmMenu: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    alMain: TActionList;
  end;

implementation

{$R *.dfm}

end.
