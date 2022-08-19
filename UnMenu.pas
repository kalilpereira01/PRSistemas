unit UnMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Imaging.pngimage, frxClass, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet;

type
  TFrmMenu = class(TForm)
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    BtnRelCadastros: TBitBtn;
    GroupBox2: TGroupBox;
    BtnCadPessoa: TBitBtn;
    Image1: TImage;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    FDQ_cadastros: TFDQuery;
    FDQ_endereco: TFDQuery;
    FDQ_enderecoCPF: TStringField;
    FDQ_enderecoCEP: TIntegerField;
    FDQ_enderecoENDERECO: TStringField;
    FDQ_enderecoNUMERO: TIntegerField;
    FDQ_enderecoCIDADE: TStringField;
    FDQ_enderecoESTADO: TStringField;
    FDQ_cadastrosNOME: TStringField;
    FDQ_cadastrosCPF: TStringField;
    FDQ_cadastrosRG: TIntegerField;
    FDQ_cadastrosNOME_MAE: TStringField;
    FDQ_cadastrosNOME_PAI: TStringField;
    frxDBDataset2: TfrxDBDataset;
    FDQ_enderecoBAIRRO: TStringField;
    procedure Timer1Timer(Sender: TObject);
    procedure BtnCadPessoaClick(Sender: TObject);
    procedure BtnRelCadastrosClick(Sender: TObject);
    procedure FDQ_cadastrosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenu: TFrmMenu;

implementation

{$R *.dfm}

uses UnCadastro, UDatamodulo;

procedure TFrmMenu.BtnCadPessoaClick(Sender: TObject);
begin
  if FrmCadastro = nil then
     Application.CreateForm(TFrmCadastro, FrmCadastro);

   FrmCadastro.showmodal;

   FrmCadastro.Free;
   FrmCadastro := nil;
end;

procedure TFrmMenu.BtnRelCadastrosClick(Sender: TObject);
begin
  FDQ_cadastros.Close;
  FDQ_cadastros.Open;

  frxreport1.PrintOptions.ShowDialog            := False;
  frxreport1.ShowProgress                       := False;
  frxreport1.PreviewOptions.AllowEdit           := False;

  frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName) + 'cadastros.fr3');
  frxreport1.PrepareReport(true);
  frxreport1.ShowPreparedReport;
end;

procedure TFrmMenu.FDQ_cadastrosAfterScroll(DataSet: TDataSet);
begin
    FDQ_endereco.Close;
    FDQ_endereco.ParamByName('pr_cpf').Value := FDQ_cadastrosCPF.Value;
    FDQ_endereco.Open;
end;

procedure TFrmMenu.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text:=TimeToStr(time);
  StatusBar1.Panels[1].Text:=DateToStr(date);
end;

end.
