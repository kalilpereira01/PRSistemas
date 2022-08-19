object FrmCadastro: TFrmCadastro
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados Cadastrais'
  ClientHeight = 212
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 41
    Height = 212
    Align = alLeft
    TabOrder = 0
    object BtnNovo: TSpeedButton
      Left = 4
      Top = 3
      Width = 32
      Height = 32
      Hint = 'NOVO CADASTRO'
      Glyph.Data = {
        5A010000424D5A010000000000005A0000002800000010000000100000000100
        08000000000000010000120B0000120B0000090000000900000000000000FFFF
        FF00FF00FF00B5B5B5008C8C8C00848484007777770052525200FFFFFF000202
        0202020202020202020202020202020202020202040707040202020202020202
        0202020205030607020202020202020202020202050306070202020202020202
        0202020205030607020202020202020202020202050306070202020202020204
        0707070707030607070707070402020506060606060606060606060607020205
        0303030303030603030303030702020405050505050306070707070704020202
        0202020205030607020202020202020202020202050306070202020202020202
        0202020205030607020202020202020202020202050306070202020202020202
        020202020405050402020202020202020202020202020202020202020202}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnNovoClick
    end
    object BtnAlterar: TSpeedButton
      Left = 4
      Top = 40
      Width = 32
      Height = 32
      Hint = 'ALTERAR CADASTRO'
      Glyph.Data = {
        02020000424D0202000000000000020100002800000010000000100000000100
        08000000000000010000520B0000520B0000330000003300000000000000FFFF
        FF00FF00FF00FBFBFB00F7F7F700F3F3F300EAEAEA00DEDEDE00DADADA00D6D6
        D600D2D2D200CECECE00C9C9C900C6C6C600C5C5C500C3C3C300C2C2C200C1C1
        C100BDBDBD00BBBBBB00B9B9B900B5B5B500B1B1B100A8A8A800A6A6A600A4A4
        A400A0A0A0009C9C9C009B9B9B00999999009595950090909000878787008484
        84007C7C7C007B7B7B00797979007878780076767600737373006E6E6E006B6B
        6B0067676700636363005959590057575700535353004D4D4D00434343002D2D
        2D00FFFFFF0002021B1B1B1B1B1B1B1B1B1B1B1B1B02020216060708090B0B0E
        1111110C1B02020216060D0D0D0D0D0D0D0D0D0E1B0202021505312E0C080B0E
        0E0E110E1B02020215052E302C0C090B0E0E0E111B02020212030D2A25302812
        0D0D0D0E1B0202021101042A292123280C0B0B0B1B0202020E01030426131822
        280C0B0B1B0202020E010D0D1F0A0F192228120C170202020C010101031F0A0F
        1823280C140202020C01010101031F0A10182428120202020B010D0D0D0D0D1F
        0A1D1E2D2F0202020B010101010101031F1C27272D2F02020901010101010101
        082B1520270202020B03040404040404081A2B2B020202020B0A0A0A0A0B0B0A
        0E1B02020202}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnAlterarClick
    end
    object BtnExcluir: TSpeedButton
      Left = 4
      Top = 77
      Width = 32
      Height = 32
      Hint = 'EXCLUIR REGISTRO'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000077777000000077777000000077770F0F0F0F0777700000007777
        0F0F0F0F07777000000077770F0F0F0F07777000000077770F0F0F0F07777000
        000077770F0F0F0F07777000000077770F0F0F0F07777000000077770F0F0F0F
        07777000000077770F0F0F0F07777000000077770F0F0F0F0777700000007777
        0F0F0F0F0777700000007770000000000077700000007770FFFFFFFFF0777000
        0000777700000000077770000000777777700077777770000000777777777777
        777770000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnExcluirClick
    end
    object BtnPesquisaCadastro: TSpeedButton
      Left = 3
      Top = 173
      Width = 32
      Height = 32
      Hint = 'BUSCAR CADASTRO'
      Glyph.Data = {
        C6010000424DC601000000000000C60000002800000010000000100000000100
        08000000000000010000340B0000340B0000240000002400000000000000FFFF
        FF00FF00FF00FBFBFB00F7F7F700F3F3F300EEEEEE00EAEAEA00E6E6E600E2E2
        E200DADADA00D6D6D600D2D2D200CECECE00CDCDCD00CACACA00C9C9C900C5C5
        C500C1C1C100BDBDBD00B9B9B900B5B5B500B1B1B100ADADAD00A9A9A900A8A8
        A800A4A4A400A0A0A0009898980090909000888888007F7F7F00777777006666
        660062626200FFFFFF00022219020202020202020202020202021C1F20170202
        020202020202020202021A191E201702020202020202020202020219191F2017
        020202020202020202020202191A1F2019020202020202020202020202191A1F
        21021D1613150202020202020202190C1C1B090707070C140202020202020212
        13090707070604051B020202020202180B0D0807060403010E02020202020212
        0B11080605030304081702020202020F0B140B07060505060816020202020211
        0A14110906060606081602020202021709090D100B0807070C02020202020202
        1101041114100A091A02020202020202021008090B0A0B150202020202020202
        02021615121202020202}
      ParentShowHint = False
      ShowHint = True
      OnClick = BtnPesquisaCadastroClick
    end
  end
  object Panel2: TPanel
    Left = 41
    Top = 0
    Width = 903
    Height = 212
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 413
      Height = 204
      Align = alLeft
      Caption = 'Dados pessoais'
      TabOrder = 0
      object Label1: TLabel
        Left = 9
        Top = 16
        Width = 34
        Height = 16
        Caption = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 9
        Top = 60
        Width = 22
        Height = 16
        Caption = 'CPF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 118
        Top = 60
        Width = 16
        Height = 16
        Caption = 'RG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 9
        Top = 106
        Width = 83
        Height = 16
        Caption = 'NOME DA M'#195'E'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 9
        Top = 150
        Width = 78
        Height = 16
        Caption = 'NOME DO PAI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object EdtNome: TDBEdit
        Left = 9
        Top = 34
        Width = 386
        Height = 24
        DataField = 'NOME'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object EdtRG: TEdit
        Left = 118
        Top = 78
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 7
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
      end
      object EdtNomeMae: TDBEdit
        Left = 9
        Top = 124
        Width = 386
        Height = 24
        DataField = 'NOME_MAE'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object EdtNomePai: TDBEdit
        Left = 9
        Top = 167
        Width = 386
        Height = 24
        DataField = 'NOME_PAI'
        DataSource = ds_Dados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EdtCPF: TMaskEdit
        Left = 9
        Top = 78
        Width = 105
        Height = 24
        EditMask = '!999.999.999-99;0;'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 1
        Text = ''
        OnExit = EdtCPFExit
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 423
      Top = 4
      Width = 476
      Height = 204
      Align = alClient
      Caption = 'Endere'#231'o'
      TabOrder = 1
      ExplicitTop = 3
      object Label6: TLabel
        Left = 9
        Top = 16
        Width = 22
        Height = 16
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 9
        Top = 60
        Width = 62
        Height = 16
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 399
        Top = 60
        Width = 14
        Height = 16
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 171
        Top = 106
        Width = 43
        Height = 16
        Caption = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 399
        Top = 106
        Width = 15
        Height = 16
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 9
        Top = 106
        Width = 44
        Height = 16
        Caption = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BtnCep: TBitBtn
        Left = 91
        Top = 26
        Width = 32
        Height = 32
        Hint = 'CONSULTAR WEBSERVICE'
        Glyph.Data = {
          C6010000424DC601000000000000C60000002800000010000000100000000100
          08000000000000010000340B0000340B0000240000002400000000000000FFFF
          FF00FF00FF00FBFBFB00F7F7F700F3F3F300EEEEEE00EAEAEA00E6E6E600E2E2
          E200DADADA00D6D6D600D2D2D200CECECE00CDCDCD00CACACA00C9C9C900C5C5
          C500C1C1C100BDBDBD00B9B9B900B5B5B500B1B1B100ADADAD00A9A9A900A8A8
          A800A4A4A400A0A0A0009898980090909000888888007F7F7F00777777006666
          660062626200FFFFFF00022219020202020202020202020202021C1F20170202
          020202020202020202021A191E201702020202020202020202020219191F2017
          020202020202020202020202191A1F2019020202020202020202020202191A1F
          21021D1613150202020202020202190C1C1B090707070C140202020202020212
          13090707070604051B020202020202180B0D0807060403010E02020202020212
          0B11080605030304081702020202020F0B140B07060505060816020202020211
          0A14110906060606081602020202021709090D100B0807070C02020202020202
          1101041114100A091A02020202020202021008090B0A0B150202020202020202
          02021615121202020202}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = BtnCepClick
      end
      object EdtCEP: TMaskEdit
        Left = 9
        Top = 34
        Width = 76
        Height = 24
        EditMask = '00000\-999;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 9
        ParentFont = False
        TabOrder = 0
        Text = ''
        OnEnter = EdtCEPEnter
      end
      object EdtEndereco: TDBEdit
        Left = 9
        Top = 78
        Width = 386
        Height = 24
        DataField = 'ENDERECO'
        DataSource = ds_endereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object EdtNumero: TEdit
        Left = 399
        Top = 78
        Width = 67
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 3
      end
      object EdtCidade: TDBEdit
        Left = 171
        Top = 124
        Width = 224
        Height = 24
        DataField = 'CIDADE'
        DataSource = ds_endereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object EdtUF: TDBEdit
        Left = 399
        Top = 124
        Width = 67
        Height = 24
        DataField = 'ESTADO'
        DataSource = ds_endereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object BtnSalvar: TBitBtn
        Left = 279
        Top = 169
        Width = 91
        Height = 32
        Caption = 'SALVAR'
        Glyph.Data = {
          42010000424D4201000000000000760000002800000011000000110000000100
          040000000000CC00000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7777700000007777777777777777700000007777777774F77777700000007777
          7777444F77777000000077777774444F777770000000700000444F44F7777000
          000070FFF444F0744F777000000070F8884FF0774F777000000070FFFFFFF077
          74F77000000070F88888F077774F7000000070FFFFFFF0777774F000000070F8
          8777F07777774000000070FFFF00007777777000000070F88707077777777000
          000070FFFF007777777770000000700000077777777770000000777777777777
          777770000000}
        TabOrder = 6
        OnClick = BtnSalvarClick
      end
      object BtnCancelar: TBitBtn
        Left = 375
        Top = 169
        Width = 91
        Height = 32
        Caption = 'CANCELAR'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF646464666666666666656565636363636363FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF8181817272727C7C7C8686868C
          8C8C8686867D7D7D727272646464646464FF00FFFF00FFFF00FFFF00FFFF00FF
          7B7B7B818181A8A8A8D4D4D4F8F8F8FFFFFFFFFFFFE4E4E4B6B6B68484846C6C
          6C5F5F5FFF00FFFF00FFFF00FF8888888C8C8CC3C3C3FFFFFFFFFFFFFFFFFFF6
          F6F6FEFEFEFFFFFFFFFFFFE3E3E38C8C8C6B6B6B636363FF00FFFF00FF888888
          C2C2C2FFFFFFFFFFFF9696968C8C8C8E8E8E868686898989CDCDCDFFFFFFE4E4
          E4868686636363FF00FF7F7F7FA4A4A4FFFFFFFFFFFFCDCDCDD3D3D39C9C9C8E
          8E8E8E8E8E949494CBCBCBCDCDCDFFFFFFB5B5B57272726868688A8A8AC5C5C5
          FFFFFFE6E6E69F9F9FD5D5D5FAFAFAA1A1A1A4A4A4F8F8F8CDCDCD8A8A8AFFFF
          FFE6E6E67E7E7E686868949494DEDEDEFFFFFFAEAEAEA6A6A6A0A0A0D5D5D5FF
          FFFFFFFFFFCECECE8E8E8E8A8A8AE5E5E5FFFFFF8A8A8A6A6A6A9F9F9FE9E9E9
          FFFFFFAFAFAFA6A6A6A5A5A5B0B0B0FFFFFFFFFFFFA5A5A5939393909090DADA
          DAFFFFFF9292926C6C6CA2A2A2EAEAEAFFFFFFBBBBBBA8A8A8B8B8B8FFFFFFD0
          D0D0CECECEFFFFFFACACAC959595F6F6F6FAFAFA8C8C8C6C6C6C989898E5E5E5
          FFFFFFF0F0F0B3B3B3FFFFFFCFCFCFA7A7A7A4A4A4CBCBCBFFFFFFB7B7B7FFFF
          FFD8D8D8838383696969FF00FFA3A3A3FFFFFFFFFFFFCACACABFBFBFA8A8A8A8
          A8A8A8A8A8A5A5A5C1C1C1FFFFFFFFFFFFAFAFAF797979FF00FFFF00FFA3A3A3
          F5F5F5FFFFFFFFFFFFEFEFEFBABABAB0B0B0B3B3B3D0D0D0FFFFFFFFFFFFC7C7
          C78B8B8B797979FF00FFFF00FFFF00FFBCBCBCF8F8F8FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFC7C7C79494947D7D7DFF00FFFF00FFFF00FFFF00FF
          FF00FFA9A9A9E0E0E0FAFAFAFFFFFFFFFFFFF6F6F6DCDCDCB1B1B18E8E8E8E8E
          8EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA4A4A4BABABABD
          BDBDADADAD9696968A8A8AFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 7
        OnClick = BtnCancelarClick
      end
      object EdtBairro: TDBEdit
        Left = 9
        Top = 124
        Width = 157
        Height = 24
        DataField = 'BAIRRO'
        DataSource = ds_endereco
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
    end
  end
  object FDQ_dados: TFDQuery
    AfterScroll = FDQ_dadosAfterScroll
    Connection = DataModulo.FDConexao
    SQL.Strings = (
      'SELECT * FROM PESSOA where CPF =:PR_CPF')
    Left = 344
    Top = 80
    ParamData = <
      item
        Name = 'PR_CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_dadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQ_dadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQ_dadosRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object FDQ_dadosNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 50
    end
    object FDQ_dadosNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 50
    end
  end
  object FDQ_endereco: TFDQuery
    AfterScroll = FDQ_enderecoAfterScroll
    Connection = DataModulo.FDConexao
    SQL.Strings = (
      'SELECT * FROM ENDERECO where CPF =:PR_CPF')
    Left = 552
    Top = 152
    ParamData = <
      item
        Name = 'PR_CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_enderecoCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 50
    end
    object FDQ_enderecoCEP: TIntegerField
      FieldName = 'CEP'
      Origin = 'CEP'
      Required = True
    end
    object FDQ_enderecoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 150
    end
    object FDQ_enderecoNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Required = True
    end
    object FDQ_enderecoCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 50
    end
    object FDQ_enderecoESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 3
    end
    object FDQ_enderecoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
  end
  object ds_Dados: TDataSource
    DataSet = FDQ_dados
    OnStateChange = ds_DadosStateChange
    Left = 424
    Top = 72
  end
  object ds_endereco: TDataSource
    DataSet = FDQ_endereco
    Left = 632
    Top = 152
  end
  object FDQ_verifica: TFDQuery
    Connection = DataModulo.FDConexao
    SQL.Strings = (
      'SELECT * FROM PESSOA where CPF =:PR_CPF')
    Left = 760
    Top = 112
    ParamData = <
      item
        Name = 'PR_CPF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_verificaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQ_verificaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 50
    end
    object FDQ_verificaRG: TIntegerField
      FieldName = 'RG'
      Origin = 'RG'
    end
    object FDQ_verificaNOME_MAE: TStringField
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 50
    end
    object FDQ_verificaNOME_PAI: TStringField
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 50
    end
  end
end
