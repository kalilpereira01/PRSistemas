object FrmPesquisaCadastro: TFrmPesquisaCadastro
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Pesquisar Cadastro (DUPLO CLICK PARA SELECIONAR)'
  ClientHeight = 407
  ClientWidth = 955
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 955
    Height = 45
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 810
    object Label1: TLabel
      Left = 8
      Top = 3
      Width = 51
      Height = 13
      Caption = 'Buscar por'
    end
    object CbPesquisa: TComboBox
      Left = 8
      Top = 19
      Width = 73
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'CPF'
      OnSelect = CbPesquisaSelect
      Items.Strings = (
        'CPF'
        'RG'
        'NOME')
    end
    object BtnProcessar: TBitBtn
      Left = 528
      Top = 8
      Width = 89
      Height = 32
      Caption = 'PROCESSAR'
      Glyph.Data = {
        02030000424D0203000000000000360100002800000013000000170000000100
        080000000000CC010000C30E0000C30E000040000000000000001C3404002434
        1C00242424001C3C0400243C0C00244404002C5C04003C5C240044543C005C5C
        54005C5C5C00646464006C6C6C0054743C007474740044840400747C74007C7C
        7C0084848400449404006C8C540054AC0400000000008C8C8C008C948C009494
        94009C9C9C00A4A4A400ACACAC00B4B4B4006CD404006CDC040074F404007CFC
        040084FC0C0084FC14007CDC24008CFC1C008CFC240094FC240094EC3C0094FC
        2C009CFC3C0094D45C009CF44C009CFC4400A4FC4C00A4FC5400ACFC6400B4FC
        6C00B4F47400BCF48400BCFC7C00B4C4A400ACCC9400BCCCAC00BCC4B400BCCC
        B400B4E48C00BCE49400BCDCA400C4F49400C4FC8C00C0C0C0003F3F3F3F3F3F
        191717193F3F3F3F3F3F3F3F3F003F3F3F3F3F1712111112193F3F3F3F3F3F3F
        3F003F3F3F3F19120E0C0C0E123F3F3F3F3F3F3F3F003F3F3F3F120E0C0B0B0C
        11173F3F3F3F3F3F3F003F3F3F17110C0B0A0A0B0E123F3F3F3F3F3F3F003F3F
        3F12140702010B0B0C11173F3F3F3F3F3F003F3F3F181E1E0F03100C0C0E1219
        3F3F3F3F3F003F3F3F2422231F06080C0C0C11173F3F3F3F3F003F3F2B212223
        221305170C0C0E11173F3F3F3F003F3521222323231E06090E0C0C0E12193F3F
        3F003F2B2223272726221304180E0C0C0E123F3F3F003F2926252A2F2F261F06
        08110E0C0E11173F3F0038302D232C39332E23150311110E0C0E11173F003F39
        2E28383F37312A220F0117110E0E0E1219003F3F373F3F3F3F3A30261E060917
        110E0E1117003F3F3F3F3F3F3F3F322E2315030C1712111217003F3F3F3F3F3F
        3F3F37342D2313001819171719003F3F3F3F3F3F3F3F3F3B342E231300193F3F
        3F003F3F3F3F3F3F3F3F3F3F3C3330230F011D3F3F003F3F3F3F3F3F3F3F3F3F
        3F393E31250F0D3F3F003F3F3F3F3F3F3F3F3F3F3F3F383D312320353F003F3F
        3F3F3F3F3F3F3F3F3F3F3F3F3C2A23363F003F3F3F3F3F3F3F3F3F3F3F3F3F3F
        3F3F373F3F00}
      TabOrder = 2
      OnClick = BtnProcessarClick
    end
    object EdtValor: TEdit
      Left = 87
      Top = 19
      Width = 435
      Height = 21
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 45
    Width = 955
    Height = 362
    Align = alClient
    DataSource = ds_pesquisa
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RG'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_MAE'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_PAI'
        Width = 233
        Visible = True
      end>
  end
  object FDQ_pesquisa: TFDQuery
    Connection = DataModulo.FDConexao
    SQL.Strings = (
      
        'select * from PESSOA where ISNULL(CPF,'#39#39') like :pr_cpf or ISNULL' +
        '(RG,'#39#39') like :pr_rg or ISNULL(NOME,'#39#39') like :pr_nome'
      'order by nome')
    Left = 400
    Top = 208
    ParamData = <
      item
        Name = 'PR_CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PR_RG'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PR_NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_pesquisaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQ_pesquisaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQ_pesquisaRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object FDQ_pesquisaNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 50
    end
    object FDQ_pesquisaNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 50
    end
  end
  object ds_pesquisa: TDataSource
    DataSet = FDQ_pesquisa
    Left = 512
    Top = 248
  end
end
