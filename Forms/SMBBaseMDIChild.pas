unit SMBBaseMDIChild;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, SMBBaseForm, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.Menus;

type
  TSMBBaseMDIChildClass = class of TSMBBaseMDIChild;

  TSMBBaseMDIChild = class(TSMBBaseForm)
    plBottomButtons: TPanel;
    bnClose: TButton;
    alBase: TActionList;
    aClose: TAction;
    aCreate: TAction;
    aRead: TAction;
    aUpdate: TAction;
    aDelete: TAction;
    mmBase: TMainMenu;
    mmnActions: TMenuItem;
    mmnCreate: TMenuItem;
    mmnRead: TMenuItem;
    mmnUpdate: TMenuItem;
    mmnDelete: TMenuItem;
    mmnSepatator2: TMenuItem;
    mmnClose: TMenuItem;
    pmBase: TPopupMenu;
    mmnSepatator1: TMenuItem;
    pmnRead: TMenuItem;
    pmnSeparator1: TMenuItem;
    pmnCreate: TMenuItem;
    pmnUpdate: TMenuItem;
    pmnDelete: TMenuItem;
    pmnClose: TMenuItem;
    pmnSeparator2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure aCloseExecute(Sender: TObject);
    procedure aCreateExecute(Sender: TObject);
    procedure aReadExecute(Sender: TObject);
    procedure aUpdateExecute(Sender: TObject);
    procedure aDeleteExecute(Sender: TObject);
  private
    FCanCreateData: Boolean;
    FCanReadData: Boolean;
    FCanUpdateData: Boolean;
    FCanDeleteData: Boolean;
    procedure InitMenus;
  protected
    procedure DoCloseForm; virtual;
    procedure DoCreateData; virtual;
    procedure DoReadData; virtual;
    procedure DoUpdateData; virtual;
    procedure DoDeleteData; virtual;
    procedure GetFormActions(out CanCreateData, CanReadData, CanUpdateData, CanDeleteData: Boolean); virtual;
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

procedure TSMBBaseMDIChild.aCloseExecute(Sender: TObject);
begin
  DoCloseForm;
end;

procedure TSMBBaseMDIChild.aCreateExecute(Sender: TObject);
begin
  DoCreateData;
end;

procedure TSMBBaseMDIChild.aDeleteExecute(Sender: TObject);
begin
  DoDeleteData;
end;

procedure TSMBBaseMDIChild.aReadExecute(Sender: TObject);
begin
  DoReadData;
end;

procedure TSMBBaseMDIChild.aUpdateExecute(Sender: TObject);
begin
  DoUpdateData;
end;

constructor TSMBBaseMDIChild.Create(AOwner: TComponent);
begin
  inherited;
  GetFormActions(FCanCreateData, FCanReadData, FCanUpdateData, FCanDeleteData);
  InitMenus;
end;

procedure TSMBBaseMDIChild.DoCloseForm;
begin
  Close;
end;

procedure TSMBBaseMDIChild.DoCreateData;
begin
end;

procedure TSMBBaseMDIChild.DoDeleteData;
begin
end;

procedure TSMBBaseMDIChild.DoReadData;
begin
end;

procedure TSMBBaseMDIChild.DoUpdateData;
begin
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

procedure TSMBBaseMDIChild.GetFormActions(out CanCreateData, CanReadData,
  CanUpdateData, CanDeleteData: Boolean);
begin
  CanCreateData := False;
  CanReadData   := False;
  CanUpdateData := False;
  CanDeleteData := False;
end;

procedure TSMBBaseMDIChild.InitMenus;
begin
  aCreate.Visible := FCanCreateData;
  aUpdate.Visible := FCanUpdateData;
  aDelete.Visible := FCanDeleteData;
  aRead.Visible   := FCanReadData;
  if not FCanReadData then
  begin
    mmnSepatator1.Visible := False;
    pmnSeparator1.Visible := False;
  end;
end;

end.
