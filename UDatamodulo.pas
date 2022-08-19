unit UDatamodulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  inifiles, vcl.forms, vcl.dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Datasnap.DBClient,
  rest.json, json,REST.Response.Adapter;

type
  TDataModulo = class(TDataModule)
    FDConexao: TFDConnection;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure DataModuleCreate(Sender: TObject);
    function ConsultaCEP(vCEP:string): TClientDataSet;
    procedure JsonToDataset(aDataset: TClientdataset; aJSON: string);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DataModulo: TDataModulo;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

function TDataModulo.ConsultaCEP(vCEP: string): TClientDataSet;
var CDS: TClientDataSet;
vResultado: string;
begin
     try
        RESTClient1.BaseURL           := 'https://viacep.com.br/ws/'+vCEP+'/json';
        RESTRequest1.Execute;

        vResultado                    := RESTResponse1.Content;

        if pos('"erro": "true"',vResultado) > 0 then
        begin
            ShowMessage('CEP INVÁLIDO OU NÃO ENCONTRADO');
            abort;
        end;

        CDS := TClientDataSet.Create(self);
        JsonToDataset(CDS,vResultado);

        result := CDS;
     except
        on E: Exception do
        begin
          ShowMessage('Erro ao consultar webservice: ' + E.Message );
          abort;
        end;
     end;
end;

procedure TDataModulo.DataModuleCreate(Sender: TObject);
var
  Lf_ArqIni: tIniFile;
begin
  try
    // LE ARQUIVO .INI
    Lf_ArqIni                          := tIniFile.Create(ExtractFilePath(Application.ExeName) + 'PRSistemas.Ini');
    FDConexao.Connected                := false;
    FDConexao.Params.Database          := Lf_ArqIni.ReadString('bd','BASE',      '');
    FDConexao.Params.Values['Server']  := Lf_ArqIni.ReadString('bd','SERVIDOR',  '');
    FDConexao.Params.Password          := Lf_ArqIni.ReadString('bd','SENHABD',   '');
    FDConexao.Params.UserName          := Lf_ArqIni.ReadString('bd','USUARIOBD', '');
    FDConexao.Connected                := true;
    Lf_ArqIni.Free;
  except
    showmessage('Erro de Conexão com o Banco de Dados, Verifique Parametros no PRSistemas.ini');
    Application.Terminate;
  end;
end;

procedure TDataModulo.JsonToDataset(aDataset: TClientdataset; aJSON: string);
var
  JObj: TJSONObject;
  JArr: TJSONArray;
  vConv : TCustomJSONDataSetAdapter;
  i: Integer;
begin
  if (aJSON = EmptyStr) then
  begin
    Exit;
  end;
  if copy(aJSON,1,1) <> '[' then
     aJSON := '[' + aJSON;

  if copy(aJSON,length(ajson),1) <> ']' then
     aJSON := aJSON + ']';

  JArr := nil;
  JObj := nil;

  try
    JArr := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
  except
    JObj := TJSONObject.ParseJSONValue(aJSON) as TJSONObject;
  end;

  vConv := TCustomJSONDataSetAdapter.Create(Nil);

  try
    vConv.Dataset := aDataset;

    if JObj <> nil then
      vConv.UpdateDataSet(JObj)
    else
      vConv.UpdateDataSet(JArr);

  finally
    vConv.Free;
    JObj.Free;
    JArr.Free;
  end;
end;

end.
