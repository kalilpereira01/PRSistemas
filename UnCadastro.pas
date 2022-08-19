unit UnCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, Datasnap.DBClient;

type
  TFrmCadastro = class(TForm)
    Panel1: TPanel;
    BtnNovo: TSpeedButton;
    BtnAlterar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtNome: TDBEdit;
    EdtRG: TEdit;
    EdtNomeMae: TDBEdit;
    EdtNomePai: TDBEdit;
    EdtCPF: TMaskEdit;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    EdtCEP: TMaskEdit;
    EdtEndereco: TDBEdit;
    Label7: TLabel;
    EdtNumero: TEdit;
    Label8: TLabel;
    EdtCidade: TDBEdit;
    Label9: TLabel;
    EdtUF: TDBEdit;
    Label10: TLabel;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    FDQ_dados: TFDQuery;
    FDQ_endereco: TFDQuery;
    BtnPesquisaCadastro: TSpeedButton;
    ds_Dados: TDataSource;
    ds_endereco: TDataSource;
    FDQ_enderecoCPF: TStringField;
    FDQ_enderecoCEP: TIntegerField;
    FDQ_enderecoENDERECO: TStringField;
    FDQ_enderecoNUMERO: TIntegerField;
    FDQ_enderecoCIDADE: TStringField;
    FDQ_enderecoESTADO: TStringField;
    FDQ_dadosNOME: TStringField;
    FDQ_dadosCPF: TStringField;
    FDQ_dadosRG: TIntegerField;
    FDQ_dadosNOME_MAE: TStringField;
    FDQ_dadosNOME_PAI: TStringField;
    FDQ_verifica: TFDQuery;
    FDQ_verificaNOME: TStringField;
    FDQ_verificaCPF: TStringField;
    FDQ_verificaRG: TIntegerField;
    FDQ_verificaNOME_MAE: TStringField;
    FDQ_verificaNOME_PAI: TStringField;
    BtnCep: TBitBtn;
    Label11: TLabel;
    EdtBairro: TDBEdit;
    FDQ_enderecoBAIRRO: TStringField;
    procedure ds_DadosStateChange(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure ExcluiCadastro;
    procedure ControlaBotoes;
    procedure EdtCEPEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure LimpaDados;
    procedure FDQ_dadosAfterScroll(DataSet: TDataSet);
    procedure EdtCPFExit(Sender: TObject);
    procedure CarregaDados(vCPF:string);
    procedure BtnSalvarClick(Sender: TObject);
    procedure BtnCepClick(Sender: TObject);
    procedure BtnPesquisaCadastroClick(Sender: TObject);
    procedure FDQ_enderecoAfterScroll(DataSet: TDataSet);
    procedure Inicializa;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadastro: TFrmCadastro;

implementation

{$R *.dfm}

uses UDatamodulo, UPesquisaCadastro;

procedure TFrmCadastro.BtnAlterarClick(Sender: TObject);
begin
    FDQ_dados.Edit;
    FDQ_endereco.Edit;
    EdtNome.SetFocus;
end;

procedure TFrmCadastro.BtnCancelarClick(Sender: TObject);
begin
    if MessageDlg('Confima o cancelamento ?' +#13+ 'Dados não salvos serão perdidos',mtConfirmation, mbYesNo,0) = mrYes then
    begin
       FDQ_dados.Cancel;
       FDQ_endereco.Cancel;

       Inicializa;
    end;
end;

procedure TFrmCadastro.BtnCepClick(Sender: TObject);
var CDS_ENDERECO: TClientDataSet;
begin

    //VERIFICA CEP DIGITADO COMPLETO E CONSUTA WEBSERVICE
    if Length(EdtCEP.Text) = 8 then
    begin
       CDS_ENDERECO := TClientDataSet.Create(self);
       CDS_ENDERECO := Datamodulo.ConsultaCEP(EdtCEP.Text);

       if CDS_ENDERECO.active then
       begin
          EdtEndereco.Text := CDS_ENDERECO.FieldByName('logradouro').Text;
          EdtCidade.Text   := CDS_ENDERECO.FieldByName('localidade').Text;
          EdtUF.Text       := CDS_ENDERECO.FieldByName('uf').Text;
          EdtBairro.Text   := CDS_ENDERECO.FieldByName('bairro').Text;
          EdtNumero.SetFocus;

          CDS_ENDERECO.Free;
       end;
    end;
end;

procedure TFrmCadastro.BtnExcluirClick(Sender: TObject);
begin
    if MessageDlg('Confirma a exclusão do registro selecionado ?', mtConfirmation, mbYesNo, 0) = mrYes then
       ExcluiCadastro;
end;

procedure TFrmCadastro.BtnNovoClick(Sender: TObject);
begin
    LimpaDados;

    FDQ_dados.Insert;
    FDQ_endereco.Insert;
    EdtNome.SetFocus;
end;

procedure TFrmCadastro.BtnSalvarClick(Sender: TObject);
begin
    if EdtNOME.Text = '' then
    begin
       ShowMessage('INFORME UM NOME');
       EdtNOME.SetFocus;
       abort;
    end;

    if EdtRG.Text = '' then
    begin
       ShowMessage('INFORME UM RG');
       EdtRG.SetFocus;
       abort;
    end;

    if EdtCPF.Text = '' then
    begin
       ShowMessage('INFORME UM CPF');
       EdtCPF.SetFocus;
       abort;
    end;

    if EdtCEP.Text = '' then
    begin
       ShowMessage('INFORME UM CEP');
       EdtCEP.SetFocus;
       abort;
    end;

    if EdtNUMERO.Text = '' then
    begin
       ShowMessage('INFORME UM NUMERO');
       EdtNUMERO.SetFocus;
       abort;
    end;

    if Edtendereco.Text = '' then
    begin
       ShowMessage('INFORME UM ENDEREÇO');
       Edtendereco.SetFocus;
       abort;
    end;

    if Edtcidade.Text = '' then
    begin
       ShowMessage('INFORME UM CIDADE');
       Edtcidade.SetFocus;
       abort;
    end;

    if EdtUF.Text = '' then
    begin
       ShowMessage('INFORME UM ESTADO');
       EdtUF.SetFocus;
       abort;
    end;

    FDQ_dadosCPF.Text         := EdtCPF.Text;
    FDQ_dadosRG.Text          := EdtRG.Text;

    FDQ_enderecoCEP.Text      := EdtCEP.Text;
    FDQ_enderecoNUMERO.Text   := EdtNumero.Text;
    FDQ_enderecoCPF.Text      := EdtCPF.Text;

    FDQ_dados.Post;
    FDQ_endereco.Post;
end;

procedure TFrmCadastro.CarregaDados(vCPF: string);
begin
    FDQ_dados.Close;
    FDQ_dados.ParamByName('pr_cpf').Value := vCPF;
    FDQ_dados.Open;
end;

procedure TFrmCadastro.ControlaBotoes;
begin
   //CONTROLA BOTÕES
   BtnNovo.Visible         :=  ds_dados.State in [dsBrowse];
   Btnalterar.Visible      := (ds_dados.State in [dsBrowse]) and ((ds_dados.Dataset as TDataSet).RecordCount >= 1);
   BtnExcluir.Visible      := (ds_dados.State in [dsBrowse]) and ((ds_dados.Dataset as TDataSet).RecordCount >= 1);
   Btnsalvar.Visible       :=  ds_dados.State in [dsEdit, dsInsert];
   Btncancelar.Visible     :=  ds_dados.State in [dsEdit, dsInsert];

   GroupBox1.Enabled       :=  ds_dados.State in [dsEdit, dsInsert];
   GroupBox2.Enabled       :=  ds_dados.State in [dsEdit, dsInsert];
end;

procedure TFrmCadastro.ds_DadosStateChange(Sender: TObject);
begin
  ControlaBotoes;
end;

procedure TFrmCadastro.EdtCEPEnter(Sender: TObject);
begin
    EdtCEP.SelectAll;
end;

procedure TFrmCadastro.EdtCPFExit(Sender: TObject);
begin
    //VERIFICA CADASTRO EXISTENTE
    if ( Length(EdtCPF.Text) = 11 ) and (EdtCPF.Text <> FDQ_dadosCPF.Text) then
    begin
      FDQ_verifica.Close;
      FDQ_verifica.ParamByName('pr_cpf').Value := EdtCPF.Text;
      FDQ_verifica.Open;

      if FDQ_verifica.RecordCount > 0 then
      begin
        if MessageDlg('Já existe um cadastro para esse CPF'+#13+'Deseja carrega-lo agora ?', mtConfirmation, mbYesNo, 0) = mrYes then
        begin
            CarregaDados(EdtCPF.Text);
        end
        else begin
          FDQ_dados.Close;
          FDQ_endereco.Close;

          Inicializa;
        end;
      end;
    end;
end;

procedure TFrmCadastro.ExcluiCadastro;
begin
    FDQ_endereco.Delete;
    FDQ_dados.Delete;

    Inicializa;

    ShowMessage('Cadastro excluído com sucesso!');
end;

procedure TFrmCadastro.FDQ_dadosAfterScroll(DataSet: TDataSet);
begin
    EdtCPF.Text     := FDQ_dadosCPF.Text;
    EdtRG.Text      := FDQ_dadosRG.text;
    EdtCEP.Text     := FDQ_enderecoCEP.text;
    EdtNumero.Text  := FDQ_enderecoNUMERO.Text;

    FDQ_endereco.Close;
    FDQ_endereco.ParamByName('pr_cpf').Value := FDQ_dadosCPF.Value;
    FDQ_endereco.Open;
end;

procedure TFrmCadastro.FDQ_enderecoAfterScroll(DataSet: TDataSet);
begin
    EdtCEP.Text       := FDQ_enderecoCEP.Text;
    EdtNumero.Text    := FDQ_enderecoNUMERO.Text;
end;

procedure TFrmCadastro.FormCreate(Sender: TObject);
begin
      Inicializa;
end;

procedure TFrmCadastro.Inicializa;
begin
    //INICIALIZA
    LimpaDados;

    FDQ_dados.Close;
    FDQ_dados.ParamByName('PR_CPF').Value := '';
    FDQ_dados.Open;

    FDQ_endereco.Close;
    FDQ_endereco.ParamByName('PR_CPF').Value := '';
    FDQ_endereco.Open;
end;

procedure TFrmCadastro.LimpaDados;
begin
    EdtCPF.Text    := '';
    EdtRG.Text     := '';
    EdtCEP.Text    := '';
    EdtNumero.Text := '';
end;

procedure TFrmCadastro.BtnPesquisaCadastroClick(Sender: TObject);
begin
  if FrmPesquisaCadastro = nil then
     Application.CreateForm(TFrmPesquisaCadastro, FrmPesquisaCadastro);

    FrmPesquisaCadastro.ShowModal;

    if FrmPesquisaCadastro.vCPFPesquisa <> '' then
        CarregaDados(FrmPesquisaCadastro.vCPFPesquisa);

    FrmPesquisaCadastro.Free;
    FrmPesquisaCadastro := nil;
end;

end.
