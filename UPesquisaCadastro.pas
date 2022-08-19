unit UPesquisaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmPesquisaCadastro = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    CbPesquisa: TComboBox;
    Label1: TLabel;
    BtnProcessar: TBitBtn;
    EdtValor: TEdit;
    FDQ_pesquisa: TFDQuery;
    FDQ_pesquisaNOME: TStringField;
    FDQ_pesquisaCPF: TStringField;
    FDQ_pesquisaRG: TIntegerField;
    FDQ_pesquisaNOME_MAE: TStringField;
    FDQ_pesquisaNOME_PAI: TStringField;
    ds_pesquisa: TDataSource;
    procedure CbPesquisaSelect(Sender: TObject);
    procedure BtnProcessarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vCPFPesquisa: string;
  end;

var
  FrmPesquisaCadastro: TFrmPesquisaCadastro;

implementation

{$R *.dfm}

uses UDatamodulo;

procedure TFrmPesquisaCadastro.BtnProcessarClick(Sender: TObject);
var vCPF, vRG, vNOME: string;
begin
    if TRIM(EdtValor.Text) = '' then
    begin
        ShowMessage('INFORME UM VALOR DE PESQUISA');
        Abort;
    end;

    vCPF    := '';
    vRG     := '';
    vNOME   := '';

    if CbPesquisa.Text = 'CPF' then
       vCPF  := EdtValor.Text;

    if CbPesquisa.Text = 'RG' then
       vRG   := EdtValor.Text;

    if CbPesquisa.Text = 'NOME' then
       vNOME := EdtValor.Text;

     FDQ_pesquisa.Close;
     if vCPF <> '' then
        FDQ_pesquisa.ParamByName('PR_CPF').Value  := vCPF + '%';

     if vRG <> '' then
        FDQ_pesquisa.ParamByName('PR_RG').Value   := vRG + '%';

     if vNOME <> '' then
        FDQ_pesquisa.ParamByName('PR_NOME').Value := vNOME + '%';
     FDQ_pesquisa.Open;
end;

procedure TFrmPesquisaCadastro.CbPesquisaSelect(Sender: TObject);
begin
    EdtValor.SetFocus;
end;

procedure TFrmPesquisaCadastro.DBGrid1DblClick(Sender: TObject);
begin
      vCPFPesquisa := FDQ_pesquisaCPF.Value;
      Close;
end;

procedure TFrmPesquisaCadastro.FormShow(Sender: TObject);
begin
  EdtValor.SetFocus;
end;

end.
