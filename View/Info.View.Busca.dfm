object frmBusca: TfrmBusca
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 513
  ClientWidth = 616
  Color = clCream
  TransparentColor = True
  TransparentColorValue = clCream
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 616
    Height = 513
    Align = alClient
    BevelOuter = bvNone
    Color = 15921133
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 64
    ExplicitTop = 152
    ExplicitWidth = 185
    ExplicitHeight = 41
    object dbgClientes: TDBGrid
      AlignWithMargins = True
      Left = 3
      Top = 108
      Width = 610
      Height = 311
      Margins.Top = 0
      Margins.Bottom = 10
      Align = alClient
      BorderStyle = bsNone
      Color = 15921133
      DataSource = dtsClientes
      DrawingStyle = gdsClassic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5131854
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Options = [dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = dbgClientesDblClick
      OnKeyUp = dbgClientesKeyUp
      Columns = <
        item
          Expanded = False
          FieldName = 'Id'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 340
          Visible = True
        end>
    end
    object pnlBottom: TPanel
      Left = 0
      Top = 429
      Width = 616
      Height = 84
      Align = alBottom
      BevelOuter = bvNone
      Color = 15921133
      ParentBackground = False
      TabOrder = 2
      ExplicitTop = 480
      DesignSize = (
        616
        84)
      object btnCanSph: TShape
        Left = 345
        Top = 4
        Width = 134
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object btnConSph: TShape
        Left = 133
        Top = 4
        Width = 134
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object btnConImg: TImage
        Left = 142
        Top = 19
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E5010502113A16B2D7DF000002AC4944415478DA9D954B4895
          5110C77F53600B1584B26CD143088A841E8B5A6849578216176A21A1D8A25541
          B77621A2A5F7FA885EB4B3326917610437775A6069D2A2226869209666505A51
          A02ECCE434DFF93EBB8FEFBB8F3A9B9973CEFCFF67CE9C333342C030C584A961
          0F5B29C1F083F7BC61886199F3DB8A0F5C462B27290CE07D48BD98AC04660DCD
          9CA728C82B1E297C29AB0766831A557A93654679C2349F542BA182B55C0C8227
          11980A06D86CD539AE734BBE9365982AAAE57212819EFEDA83C789C82CE4800F
          524CBBC43C02BDFB33EBBCA193983F5081705862B78CB90431A276AF43A29037
          BC4EFAAD07FA70E336F2718EFFC3E916EE12DC246243B72DCFBB27C195C014F1
          D99EDF269D39E0953C4E873B04F5F4A9FC4D59CE871BF4C31D825E4EA91C969A
          FF813B04AFD8AFB259AE78A6BBE8D5604EE7077708BEB24E6583F479F0214A99
          2094A0C80677081629501992116BDCC835BBFE97223BDC47A08026DCCB4C7148
          2683236FED42FA7B6131ED0A766BE55F4ED0C2DD4CA79B06EEAB98F5053185C2
          1D81CE9B162EA97829E60EA755199150CA768222C3DDCD73AA55F488A9E30101
          1FC9A3C8042FD5FFBB5A15CD9E42BED8AF1C93F634A3264DEE40B8EE7568E584
          053D5627DD9CD5C9BC26D34C9AD90E791708DFA8F9EB94DDDB12115B8DC66DAC
          FBA9CD95CE16BE4A6BE731E709D92E536E418912B37B5DD29A07411717AC62CB
          8F4B50C0530E388A3E4D5B362FF4F40EFD1D0E6A94C34E9D5E29AAEBB5A86EB1
          6A3F67D2639174F71E8E5A75927DF2CD5112657DA7967597629E1B74BBDB290F
          774E9B8EDBB13E109631775D524CE21CF426CBBCD0C6F2511B0B6CD2827F842A
          FBEE58E76B13F4A9ADAD80361A6D72651A8B9AAD5DF22BB1E06FAEE5347122B0
          3FCE738FAB3295BA280186E8EF0C13622FE5DA17E1A7DEF9AD26EF802CF86DFF
          0071D508C9C0CCA3B20000002574455874646174653A63726561746500323032
          312D30312D30355430323A31373A35382B30303A30308E0E6E8D000000257445
          5874646174653A6D6F6469667900323032312D30312D30355430323A31373A35
          382B30303A3030FF53D6310000001974455874536F667477617265007777772E
          696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      object btnConLbl: TLabel
        Left = 187
        Top = 28
        Width = 64
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnConSpb: TSpeedButton
        Left = 133
        Top = 4
        Width = 134
        Height = 60
        Anchors = [akLeft, akBottom]
        Flat = True
        OnClick = btnConSpbClick
      end
      object btnCanImg: TImage
        Left = 356
        Top = 19
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E50105021D0905D7F9C5000002C44944415478DA95954B4895
          4114C77FC7C002158AD22C281382B05AD4A2163D44450AB4077509C316AD92B0
          A04544680F6F3ECA6A15F4505741842DD2554A21296A8B6A538BA8C08549D143
          138314BCBDA6F3CD5C957BBD9F7E7736DF3933E7FF3FDFFCE7CC1921C1301994
          52C426D6B058DD1F0CF29A6E3A647C76ACCC02677381A3A425E09DE02E75F26D
          0E02B3902A4E938EFF18E73A8DF22B2181594E3BDBA2CE5FFA78C2473E615846
          1E05EC645174ED1921199E456036D0C96A6BFED42CB765346E6B9954728A25D6
          19A244DEC61068F69751781B9533FC71242B6951791DC516199926D0BD77DB9F
          37D41116E32780C6B5531275FA29F6B47004616AEC64ADD4F8EB1703F746839C
          B7047A700356F9360E05CADEC93FF6E837429E0C7A04B7541E4FBAB57E7B8F83
          1F64296FAC9CCD725C4C3A5F6CFE8B52E70B4FE5217BADF9980332A9333584F1
          4A2B5BCC615AD5FCA3E66890EC12B173597A0E5E5D948969E1981A3D52141C6E
          E7BB28B69B302FD8AA4695342603D7952A2EEBE7B998112D552897D664E0BA16
          525D60584C8454350AA4777EE96256F3F1109129827CE94F06AEEB855ABD96C0
          6D2124ED417F3E1A51CE7DB7052762B55C4906AE31D53438119BA950A34B7625
          03D7A85EF2F5D324A68C076A4C92E30A39203C53EB77811A7A7BD2F86A4B392C
          97E6976E9AA0563BA72B65756E72429D3136321A24BB2256E8FDF5DAEE1DA914
          DB8D06C850F7112981E0299A66BF7784AC9321D750DCDD9A1A73C235BA9E73D6
          B0EDC711A4F2941D41E09ABD966A8BEAD396F67BA6A9666953CDB1660715F2D9
          77EF4DECB3E6076DAADF3D63A6ADAFD7DC8E628C1B2A4F5C77D2833BA98F8E7B
          B1062995776E5E6242DAF4F97063529F8F1EDE33A2C2AED286BF9BEDF6DCB13F
          1F72D9E308AC161739632F97DF88708D7A9FA72D4A92CB598E247C1FC7B9C755
          198A9D94048168759652C86672A79FF7577A793B656276EC7FB21D1265DABA5A
          380000002574455874646174653A63726561746500323032312D30312D303554
          30323A32393A30392B30303A3030E7B23DEF0000002574455874646174653A6D
          6F6469667900323032312D30312D30355430323A32393A30392B30303A303096
          EF85530000001974455874536F667477617265007777772E696E6B7363617065
          2E6F72679BEE3C1A0000000049454E44AE426082}
      end
      object btnCanLbl: TLabel
        Left = 402
        Top = 28
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnCanSpb: TSpeedButton
        Left = 345
        Top = 4
        Width = 134
        Height = 60
        Anchors = [akLeft, akBottom]
        Flat = True
        OnClick = btnCanSpbClick
      end
    end
    object pnlTop: TPanel
      Left = 0
      Top = 0
      Width = 616
      Height = 108
      Align = alTop
      BevelOuter = bvNone
      Color = 15921133
      ParentBackground = False
      TabOrder = 0
      DesignSize = (
        616
        108)
      object shpPesquisa: TShape
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 576
        Height = 49
        Margins.Left = 20
        Margins.Top = 20
        Margins.Right = 20
        Margins.Bottom = 15
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 352
        ExplicitTop = 8
        ExplicitWidth = 65
        ExplicitHeight = 65
      end
      object edtPesquisa: TEdit
        Left = 32
        Top = 34
        Width = 552
        Height = 31
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -17
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyUp = edtPesquisaKeyUp
        ExplicitWidth = 700
      end
      object Panel1: TPanel
        Left = 0
        Top = 84
        Width = 616
        Height = 24
        Align = alBottom
        Color = 4926232
        ParentBackground = False
        TabOrder = 1
        ExplicitTop = 61
        DesignSize = (
          616
          24)
        object Label1: TLabel
          Left = 3
          Top = 4
          Width = 81
          Height = 15
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = 'ID'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 88
          Top = 4
          Width = 155
          Height = 15
          Alignment = taCenter
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = 'CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 249
          Top = 4
          Width = 81
          Height = 15
          Anchors = [akLeft, akBottom]
          AutoSize = False
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object memClientes: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    StoreDefs = True
    Left = 488
    Top = 352
    object memClientesId: TIntegerField
      FieldName = 'Id'
    end
    object memClientesCPF: TStringField
      Alignment = taCenter
      FieldName = 'CPF'
    end
    object memClientesNome: TStringField
      FieldName = 'Nome'
      Size = 100
    end
  end
  object dtsClientes: TDataSource
    DataSet = memClientes
    Left = 400
    Top = 352
  end
end
