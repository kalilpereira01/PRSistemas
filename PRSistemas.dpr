program PRSistemas;

uses
  Vcl.Forms,
  UnMenu in 'UnMenu.pas' {FrmMenu},
  Vcl.Themes,
  Vcl.Styles,
  UnCadastro in 'UnCadastro.pas' {FrmCadastro},
  UDatamodulo in 'UDatamodulo.pas' {DataModulo: TDataModule},
  UPesquisaCadastro in 'UPesquisaCadastro.pas' {FrmPesquisaCadastro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Sky');
  Application.CreateForm(TDataModulo, DataModulo);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.Run;
end.
