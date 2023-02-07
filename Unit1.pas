unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.Win.ADODB, AdvMemo, AdvmPS, Vcl.ExtCtrls, AdvSmoothLabel,
  DBAdvSmoothLabel, Vcl.Menus, AdvMenus;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    AdvMemo1: TAdvMemo;
    AdvPascalMemoStyler1: TAdvPascalMemoStyler;
    DBRichEdit1: TDBRichEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ADOQuery2: TADOQuery;
    StatusBar1: TStatusBar;
    DBAdvSmoothLabel1: TDBAdvSmoothLabel;
    AdvMainMenu1: TAdvMainMenu;
    Add: TMenuItem;
    Aboute1: TMenuItem;
    Exit1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBRichEdit1Change(Sender: TObject);
    procedure Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Aboute1Click(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3;

procedure TForm1.Aboute1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.AddClick(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
Var
  Nam, info, Noe, Unite: string;
begin

  Nam := Edit1.Text;
  info := Edit2.Text;
  if ComboBox1.ItemIndex > 0 then
    Noe := ComboBox1.Text;
  if ComboBox2.ItemIndex > 0 then
    Unite := ComboBox2.Text;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('Select * From TableA Where Nam Like :T1 and info Like :T2 and Noe Like :T3 and Unit Like :T4 Order By Nam');
  ADOQuery1.Parameters.ParamByName('T1').Value := '%' + Trim(Nam) + '%';
  ADOQuery1.Parameters.ParamByName('T2').Value := '%' + Trim(info) + '%';
  ADOQuery1.Parameters.ParamByName('T3').Value := '%' + Trim(Noe) + '%';
  ADOQuery1.Parameters.ParamByName('T4').Value := '%' + Trim(Unite) + '%';
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;

end;

procedure TForm1.ComboBox2Change(Sender: TObject);
Var
  Nam, info, Noe, Unite: string;
begin

  Nam := Edit1.Text;
  info := Edit2.Text;
  if ComboBox1.ItemIndex > 0 then
    Noe := ComboBox1.Text;
  if ComboBox2.ItemIndex > 0 then
    Unite := ComboBox2.Text;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('Select * From TableA Where Nam Like :T1 and info Like :T2 and Noe Like :T3 and Unit Like :T4 Order By Nam');
  ADOQuery1.Parameters.ParamByName('T1').Value := '%' + Trim(Nam) + '%';
  ADOQuery1.Parameters.ParamByName('T2').Value := '%' + Trim(info) + '%';
  ADOQuery1.Parameters.ParamByName('T3').Value := '%' + Trim(Noe) + '%';
  ADOQuery1.Parameters.ParamByName('T4').Value := '%' + Trim(Unite) + '%';
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;

end;

procedure TForm1.DBRichEdit1Change(Sender: TObject);
begin
  AdvMemo1.Lines.Clear;
  AdvMemo1.Lines.Text := DBRichEdit1.Text;
end;

procedure TForm1.Edit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Nam, info, Noe, Unite: string;
begin

  Nam := Edit1.Text;
  info := Edit2.Text;
  if ComboBox1.ItemIndex > 0 then
    Noe := ComboBox1.Text;
  if ComboBox2.ItemIndex > 0 then
    Unite := ComboBox2.Text;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('Select * From TableA Where Nam Like :T1 and info Like :T2 and Noe Like :T3 and Unit Like :T4 Order By Nam');
  ADOQuery1.Parameters.ParamByName('T1').Value := '%' + Trim(Nam) + '%';
  ADOQuery1.Parameters.ParamByName('T2').Value := '%' + Trim(info) + '%';
  ADOQuery1.Parameters.ParamByName('T3').Value := '%' + Trim(Noe) + '%';
  ADOQuery1.Parameters.ParamByName('T4').Value := '%' + Trim(Unite) + '%';
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;

end;

procedure TForm1.Edit2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  Nam, info, Noe, Unite: string;
begin

  Nam := Edit1.Text;
  info := Edit2.Text;
  if ComboBox1.ItemIndex > 0 then
    Noe := ComboBox1.Text;
  if ComboBox2.ItemIndex > 0 then
    Unite := ComboBox2.Text;

  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add
    ('Select * From TableA Where Nam Like :T1 and info Like :T2 and Noe Like :T3 and Unit Like :T4 Order By Nam');
  ADOQuery1.Parameters.ParamByName('T1').Value := '%' + Trim(Nam) + '%';
  ADOQuery1.Parameters.ParamByName('T2').Value := '%' + Trim(info) + '%';
  ADOQuery1.Parameters.ParamByName('T3').Value := '%' + Trim(Noe) + '%';
  ADOQuery1.Parameters.ParamByName('T4').Value := '%' + Trim(Unite) + '%';
  ADOQuery1.ExecSQL;
  ADOQuery1.Open;

end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  try
    ADOConnection1.Close;
  finally
    Close;
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQuery1.Close;
  ADOConnection1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
Var
  Masir: string;
begin
  Masir := GetCurrentDir;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  i: Integer;
  TF: Boolean;
begin

  TF := True;
  ComboBox1.ItemIndex := 0;
  ComboBox2.ItemIndex := 0;
  Edit1.Clear;
  Edit2.Clear;
  AdvMemo1.Lines.Clear;

  try
    ADOConnection1.Connected := True;
  Except
    On E: Exception do
    begin
      ShowMessage('There is no connection to the database!');
      TF := False;
      Add.Enabled := False;
      DBAdvSmoothLabel1.Visible := False;
    end;
  end;

  if TF = True then
  begin
    ComboBox2.Items.Clear;
    ComboBox2.Items.Add('All Units');
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('Select Unit From TableA Group by Unit Order By Unit');
    ADOQuery2.ExecSQL;
    ADOQuery2.Open;
    for i := 0 to ADOQuery2.RecordCount - 1 do
    begin
      ADOQuery2.RecNo := i + 1;
      ComboBox2.Items.Add(ADOQuery2.FieldByName('Unit').AsString);
    end;

    ComboBox1.Items.Clear;
    ComboBox1.Items.Add('All Types');
    ADOQuery2.Close;
    ADOQuery2.SQL.Clear;
    ADOQuery2.SQL.Add('Select Noe From TableA Group by Noe Order By Noe');
    ADOQuery2.ExecSQL;
    ADOQuery2.Open;
    for i := 0 to ADOQuery2.RecordCount - 1 do
    begin
      ADOQuery2.RecNo := i + 1;
      ComboBox1.Items.Add(ADOQuery2.FieldByName('Noe').AsString);
    end;
    ADOQuery2.Close;
    ADOQuery1.Open;
  end;

end;

end.
