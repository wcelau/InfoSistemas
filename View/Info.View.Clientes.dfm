object frmClientes: TfrmClientes
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 604
  ClientWidth = 701
  Color = 15921133
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 604
    Align = alClient
    BevelOuter = bvNone
    Color = 15921133
    ParentBackground = False
    TabOrder = 0
    object lblEnderco: TLabel
      Left = 85
      Top = 187
      Width = 135
      Height = 24
      AutoSize = False
      Caption = 'ENDERE'#199'O'
      Color = 2302755
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4737096
      Font.Height = -14
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Layout = tlCenter
    end
    object Shape1: TShape
      Left = 18
      Top = 178
      Width = 655
      Height = 3
      Brush.Color = 4737096
      Pen.Color = 4737096
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Shape2: TShape
      Left = 18
      Top = 498
      Width = 655
      Height = 3
      Brush.Color = 4737096
      Pen.Color = 4737096
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object pnlNome: TPanel
      Tag = 100
      Left = 83
      Top = 16
      Width = 525
      Height = 47
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        525
        47)
      object shpNome: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 521
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object lblNome: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Nome'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtNome: TEdit
        Left = 7
        Top = 22
        Width = 510
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edtNome'
      end
    end
    object pnlRg: TPanel
      Tag = 100
      Left = 83
      Top = 69
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 1
      DesignSize = (
        260
        47)
      object shpRg: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitWidth = 279
      end
      object lblRg: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Identidade'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtRG: TEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'M123.123.123'
      end
    end
    object pnlCpf: TPanel
      Tag = 100
      Left = 348
      Top = 69
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        260
        47)
      object shpCpf: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object lblCpf: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'CPF'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtCpf: TEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 11
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '999.999.999-99'
        OnExit = edtCpfExit
        OnKeyUp = edtCpfKeyUp
      end
    end
    object pnlTelefone: TPanel
      Tag = 100
      Left = 83
      Top = 122
      Width = 169
      Height = 47
      BevelOuter = bvNone
      TabOrder = 3
      DesignSize = (
        169
        47)
      object shpTelefone: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 165
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitWidth = 183
      end
      object lblTelefone: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Telefone'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtTelefone: TEdit
        Left = 7
        Top = 22
        Width = 154
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 11
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '(99)99999-9999'
        OnExit = edtTelefoneExit
        OnKeyUp = edtTelefoneKeyUp
      end
    end
    object pnlEmal: TPanel
      Tag = 100
      Left = 258
      Top = 122
      Width = 350
      Height = 47
      BevelOuter = bvNone
      TabOrder = 4
      DesignSize = (
        350
        47)
      object shpEmal: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 346
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object lblEmal: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'e-mail'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtEmail: TEdit
        Left = 7
        Top = 22
        Width = 335
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecLowerCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edit1'
        OnExit = edtEmailExit
      end
    end
    object pnlCep: TPanel
      Tag = 100
      Left = 83
      Top = 217
      Width = 187
      Height = 47
      BevelOuter = bvNone
      TabOrder = 5
      DesignSize = (
        187
        47)
      object shpCep: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 183
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object lblCep: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'CEP'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object shpCepSearch: TShape
        Left = 145
        Top = 7
        Width = 34
        Height = 34
        Anchors = [akTop, akRight]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object imgMenuSearch: TImage
        Left = 150
        Top = 11
        Width = 24
        Height = 24
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E40C080708109164BA330000026E4944415478DA9DD54D4854
          5114C0F1FF49B28F455FE8606585D9D7A208B312496C1C5AD4A28C3299366EA2
          5530521941F44188B9C85A68D04EA24565DA26B1148A300A9C4A10442AB4C2AC
          A6C645059525D8ED38A5BCF7E68DF39AB7D2FBF1BBE79E7BEF19C1F69934B6B0
          9B42B2F1F19928BDB47257BE92F013CB64A18C1A56C68DF94103B5899049C064
          709312FD638016DA79A5ABCF6721C51A8F5F477DA44C1E4F0198D5DC6139114E
          7145C61CDB2AA08E2246392857130066016156D0C51E89B8ADA299A9E1386394
          4A9B0BA07BBF4740891219499C2C739AB37C6183BC8907CA69D2E0F3DD57B7A4
          B899BD3449D00168782F34FC03D24892CF2CA29F596C926E3B504CA7667E8D33
          75AE441D47A9974A3B7091C37ACA27924F5760234F1924478C15E8A280ADF2D0
          13207C229325F2CE0A0CE9B55D2A435E0025C26CA6409E58819FCC60A6FCF208
          DC6627BBA4D50A4435289F0C7B043AF572DB362CA687F5E4498F4760805C5649
          BF15B8C67E2AA5DED3F46CDEF29D0CEB86C504B9CE030978020E718916D9676D
          133397F7CCA650C249A7A7F35C5F6C509A6C807654739247F893DD4553C579AD
          5079F671E3C01C5E92C505A99A72FA36AD18D3D921EDF6F6BFF5A088FBA47386
          6AEB25754CEF601A0D1272F64C54A40A1A49E31621F9E0B2F710E77475E82320
          515740876DD7D398A705F43237E89E88440FAE94239A3AA3F9F7B34E9F7EC05E
          37AC5539875ACA632DC3BCD667335E547363FFF7724C3A4CA66E348E1047B8F9
          54E89ACB261BBE69856ED6B3FF1DEB75211CC03F66B1BED02CFD61893028A3B6
          9E38C21598F2381DC47F034E2205C04EA404D888D400257C4AACE559CA408C68
          63E40FC2ACD5C401A47DB50000002574455874646174653A6372656174650032
          3032302D31322D30385430373A30383A31362B30303A3030AF82B70200000025
          74455874646174653A6D6F6469667900323032302D31322D30385430373A3038
          3A31362B30303A3030DEDF0FBE0000001974455874536F667477617265007777
          772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        Stretch = True
      end
      object spbShortCut: TSpeedButton
        Left = 146
        Top = 8
        Width = 32
        Height = 32
        Action = actBuscaCep
        Flat = True
      end
      object edtCep: TEdit
        Left = 7
        Top = 22
        Width = 130
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 11
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '36980-000'
        OnExit = edtCepExit
        OnKeyUp = edtCepKeyUp
      end
    end
    object pnlLogradouro: TPanel
      Tag = 100
      Left = 83
      Top = 270
      Width = 525
      Height = 47
      BevelOuter = bvNone
      TabOrder = 6
      DesignSize = (
        525
        47)
      object shpLogradouro: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 521
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object lblLogradouro: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Logradouro'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtLogradouro: TEdit
        Left = 7
        Top = 22
        Width = 510
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edtNome'
      end
    end
    object pnlNumero: TPanel
      Tag = 100
      Left = 83
      Top = 323
      Width = 117
      Height = 47
      BevelOuter = bvNone
      TabOrder = 7
      DesignSize = (
        117
        47)
      object shpNumero: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 113
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitWidth = 279
      end
      object lblNumero: TLabel
        Left = 6
        Top = 3
        Width = 99
        Height = 20
        AutoSize = False
        Caption = 'N'#250'mero'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtNumero: TEdit
        Left = 7
        Top = 22
        Width = 102
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'M123.123.123'
      end
    end
    object pnlComplemento: TPanel
      Tag = 100
      Left = 206
      Top = 323
      Width = 400
      Height = 47
      BevelOuter = bvNone
      TabOrder = 8
      DesignSize = (
        400
        47)
      object shpComplemento: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 396
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object lblComplemento: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Complemento'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtComplemento: TEdit
        Left = 7
        Top = 22
        Width = 385
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'Edit1'
      end
    end
    object pnlBairro: TPanel
      Tag = 100
      Left = 83
      Top = 376
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 9
      DesignSize = (
        260
        47)
      object shpBairro: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitWidth = 279
      end
      object lblBairro: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Bairro'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtBairro: TEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'M123.123.123'
      end
    end
    object pnlCidade: TPanel
      Tag = 100
      Left = 348
      Top = 376
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 10
      DesignSize = (
        260
        47)
      object shpCidade: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 43
      end
      object lblCidade: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Cidade'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtCidade: TMaskEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edtCpf'
      end
    end
    object pnlEstado: TPanel
      Tag = 100
      Left = 83
      Top = 429
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 11
      DesignSize = (
        260
        47)
      object shpEstado: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 4
        ExplicitTop = 43
      end
      object lblEstado: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Estado'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtEstado: TMaskEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        MaxLength = 2
        ParentFont = False
        TabOrder = 0
        Text = 'EDTCPF'
      end
    end
    object pnlPais: TPanel
      Tag = 100
      Left = 349
      Top = 429
      Width = 260
      Height = 47
      BevelOuter = bvNone
      TabOrder = 12
      DesignSize = (
        260
        47)
      object shpPais: TShape
        AlignWithMargins = True
        Left = 2
        Top = 1
        Width = 256
        Height = 44
        Margins.Left = 2
        Margins.Top = 1
        Margins.Right = 2
        Margins.Bottom = 2
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 43
      end
      object lblPais: TLabel
        Left = 6
        Top = 3
        Width = 134
        Height = 20
        AutoSize = False
        Caption = 'Pa'#237's'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object edtPais: TMaskEdit
        Left = 7
        Top = 22
        Width = 245
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edtPais'
      end
    end
    object pnlButtons: TPanel
      Left = 55
      Top = 506
      Width = 582
      Height = 82
      BevelOuter = bvNone
      Color = 15921133
      ParentBackground = False
      TabOrder = 13
      DesignSize = (
        582
        82)
      object btnSaiSph: TShape
        Left = 430
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnLocSph: TShape
        Left = 360
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnConSph: TShape
        Left = 291
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnCanSph: TShape
        Left = 223
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnExcSph: TShape
        Left = 152
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnAltShp: TShape
        Left = 84
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnIncShp: TShape
        Left = 15
        Top = 10
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitTop = 19
      end
      object btnIncImg: TImage
        Left = 31
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E50105020B1873FF6CE0000002B74944415478DAA5554D6853
          4110FEA6423CB405C16AEBC16AA120D58B1EF4A0569B2208061411A9D48327FF
          6A6F2A92DA263169A52ADEAAFD390922F5127BB2D0836D1A3DA8173DD9438518
          15D4D6826072885AD6D9792F2FBE97F7529F4E203BFB66F7DB9DD9996F082EA2
          6A11423BB66333D6F0F41B32788D693CA65CF95A2ADBDC803E9C42B50B6E1EF7
          90A02F1500D46A84711135F0961C6E61907EB802A87A3CC26E73B28C34A6F001
          1F59DFC8BF8368C52AD3F60CC768A10C406DC3241A45FDCEA7DCA525876B6BD1
          8D4BE6EDB238446F6C007CFA4B737B125D257C07483D8671D484D8498B1600FB
          3E2D9757482046CA3B048A10C755D9F51407742C0C8018A2628F53142B8A4AA0
          579401EA15007EB879F12D89E3F6D3D528CEF03046671DB7488A2305B4504603
          DC419784AED9E9BB3B80C4E2AD1C394AE748D5E0934C229428BBAC0780E5741E
          0DA44E609CD55FAC2EF900A8C367C98B0E526338CDCA0CB5BB84CB13806D29EC
          1727D40BEC62254C833E01C2B8CEC373528BA863A593C6AD4D2569450BFFCFF1
          9B5B5204539D78C0C302A90202ACB4D1AC69A890460250CCDD36CCE8A72C0204
          29E51320C8D92B00FFEDC2BF06B1070346108D45290AFA0498C53E1E464875E0
          21FC27D23ACE5F9D485C3DD59C533A956374CD07409C99D348659E0CE10234DB
          353B09D3B3983670FD6ADA1DA62E92DA9A472D4F2798EBFEA69CAB983B8FE827
          C416CA1A8412454C6CFDD4871545F533276911FA3100027882BD5AE1A78954A4
          B42AA6B41ED995664AFB5922D5F54CAA9B449DC079672CFEF07D0487457DC7A4
          FA552B255ADFCAB46E40E4701B4386D9F670DDDC748C8E954188E68CEF645B92
          E4E4356499DBC714DE9B8DA5911BCB1EABB1A439D816BCBDB50510C165292E2F
          29E02687DABDB599204DB88293AEFD3187FBB84159FB47725908CECE1082D881
          26ABBDBFE2E29DA47CF9DADF08B60965C7C07343000000257445587464617465
          3A63726561746500323032312D30312D30355430323A31313A32342B30303A30
          304E757DA70000002574455874646174653A6D6F6469667900323032312D3031
          2D30355430323A31313A32342B30303A30303F28C51B0000001974455874536F
          667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000000049
          454E44AE426082}
        ExplicitTop = 26
      end
      object btnIncLbl: TLabel
        Left = 19
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnIncSpb: TSpeedButton
        Left = 17
        Top = 15
        Width = 60
        Height = 60
        Action = actIncluir
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnAltImg: TImage
        Left = 100
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E501070F151D7505FC68000003344944415478DA9D957D68D5
          5518C73F8FA9DB752A1B35A7E27CD91C035B4B304537C448C5899AD594B2C5CA
          5222B11424DDFA2305415D093A1574EA54B0F2AF367A59E4CB2A88A20591DB9C
          449B6D60523A95A535DBAC4EDFDF7D73E3FE7677F1C0BDF79C739FCFF739CF39
          CF798EE1D3DC6896F1388F3299540DBBE8A0912FA8B35BB1B61603E7B2995504
          C2C3EBFA3C14EEDFE1032AAC358E800BB09D3718C65F7CCE477CCD6FD6A3D924
          C63197E51491C25DF6F2B6FDED2BE0A6524B9EFC54CA4F974F60A994493E4013
          CFD8A51801379DD38C91D7557685019BCBE414855CA5C8CEF71390F76F8457B3
          CE7A7D303317ED277190D592280CADC2C2B137F008D5B6C6D7EB34EAB8C84AEB
          8ECE1C934413B3ED4E4460379BB4F805BEDEA7E90033D4F98A251109ADA25E81
          BC6B9B83023AB866FE21C72FF6305EC50C1EEB2791C9CF3CC0C3D6EA0954F332
          BBAC7C40FC80F63E95B312E92B51A17C51D0A6ACFB9D7FC98C3DB830BE9F0DE6
          DC28654641DF405C1A97B5FEB1E64A788F0F6D4502F8B70CEF1B88ABE1699E33
          77843594DAC904F02286724612E76C61D0E6454E70D8DCF7CC24CBDA07C7EDB6
          33E5C0AB5C61A2FD27AB2C2ED160AE93070978399F00BE8FF54AA127EC62D02E
          996E3ACDF5F287A5F7C173F95297A78AD784A72885E6095F6CB78457F23AD798
          6F17A2B6D71969AE872ECBB81F5CD63748F1424863B81753DCC57B7874F1613C
          1C4203B3B429973591AE8C4C18977D366D7C67EE306B79C1DED7C4F3E85BF8BE
          44F0F0315659103B61AB35B1032F9D9DBE9F1C1C97612D4FF16C28959D52F9A6
          FB84A56C612B23F4EFE0781ABFEA27C3BB4C477985B76CA7EB6002A399C3C792
          28B38A78B8A8777893A3B6D613C8A1851EDDEFF3B45AAEC6F32511602353E3E0
          93F88921BACE6D16556B670A3556ACD10881BB827603E1493AEE0295DEB24845
          4A5649CB57E7073D21F9644B3B0E2EFBE3BCA4A766B657DE2345355B4535928F
          1DCA870BAA79F5D6E9EBFD90F0AB14D82FDEF85E59CFA35489D14C8BDF0316B5
          9AA8B25E207C913586668C849B0EAE5CBB93ACCD2E0E794F50403B343EF8B42D
          D2F1F6B2876D033C6DBE702525AA17A1D61D7C5CDBFA5B0C26F0290BF5BCB7F3
          A3AEF967F667ACC5FF98927E6CD00DEEAF0000002574455874646174653A6372
          6561746500323032312D30312D30375431353A32313A32392B30303A3030D19C
          B82B0000002574455874646174653A6D6F6469667900323032312D30312D3037
          5431353A32313A32392B30303A3030A0C100970000001974455874536F667477
          617265007777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44
          AE426082}
        ExplicitTop = 26
      end
      object btnAltLbl: TLabel
        Left = 88
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnAltSpb: TSpeedButton
        Left = 86
        Top = 15
        Width = 60
        Height = 60
        Action = actAlterar
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnExcImg: TImage
        Left = 168
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E5010502143B1CC2130C000002AB4944415478DAA5554D6C4C
          5114FE4E2563D1369128AD85D2A48960C382054AA791484C4244A452122BC5E8
          0E91A97666CCB452C4AEF46725416A33BAD2A40BED746A810D2B16958C418256
          138999C5A0B9BE77DFF3A633F3DE98E1BEC5FDEEBBF77CF79DF3CEF98EC061A8
          5AF8D0866DD888555C7E4312AF3085C7922E3E2B45C60DE8C529543BF0667017
          51F9528240AD4400175003F791C64D0CC80F4702558F47D8652D9690C0243EE0
          23F17A3E07D08215D6DE531C95F92202B5151368D4F03B6FB9238B05AEAD4617
          2E5A5F97C241799D47C0DB5F58E631F873FC0524F518C2118B62872CD804F47D
          4A7FBC42146151EE21508208AE68AB59EC376261128411D2FB1109E1AF4345D1
          A341BFF46802FEB839ED5B0CC74ADDBEEC2B62DA912C364BD220B80DBF0E5DB3
          9BEF0EB178ABAF1C91B3A26AF0492F82122DCF7C99D31934883A8E31C25F848B
          1510D4E1B3CE8B7651A3384D302D6DE59B6B8A38F66927D473EC2408C8408504
          015CE3F44CD402EA083A64CCDE6AC14917ABFB326B9FEAC0034EF3A2B2F010B4
          CA8CBDD58911178233326A9F6AC534A7EC1F02AFC42B24F0327B35C17FBBF0AF
          41EC46BF19C4117412C4C55B21C10CF6721A16D58E87A83C91D6307F8D4462F5
          5433A78C540ECBD50A0822544E3395B918C479186AD75C2898AEE6EB58BF86EC
          0E895F746DCDA196CB716A5D39E55C45ED3C0CA39C3749CA149410C27AAF4F7A
          CB20E8A3261943CB8F49E0C113EC31007F4DB0A4A45551D2BAB5558292F63327
          AA6B29AA1B341CC739B758D0F7611CD2F01D45F5AB0172B2BE85B26E52A4710B
          83E676DE8FEB62D3313B56123E7963BE97BC2331B60F732CB17D4CE2BDD5581A
          D95876DB8D25C160DBF4F9ADCD83202EE9E2721B59DC60A89D5B9B45D284CB38
          E1D81FD3B887EB92CA7F290E07C1ECF4C18BED68B2DBFB4B16EF84648ACFFE06
          7889E55639863A060000002574455874646174653A6372656174650032303231
          2D30312D30355430323A32303A35392B30303A30305347184100000025744558
          74646174653A6D6F6469667900323032312D30312D30355430323A32303A3539
          2B30303A3030221AA0FD0000001974455874536F667477617265007777772E69
          6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        ExplicitTop = 26
      end
      object btnExcLbl: TLabel
        Left = 156
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnExcSpb: TSpeedButton
        Left = 154
        Top = 15
        Width = 60
        Height = 60
        Action = actExcluir
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnCanImg: TImage
        Left = 239
        Top = 17
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
        ExplicitTop = 26
      end
      object btnCanLbl: TLabel
        Left = 227
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnCanSpb: TSpeedButton
        Left = 225
        Top = 15
        Width = 60
        Height = 60
        Action = actCancelar
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnConImg: TImage
        Left = 307
        Top = 17
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
        ExplicitTop = 26
      end
      object btnConLbl: TLabel
        Left = 295
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnConSpb: TSpeedButton
        Left = 293
        Top = 15
        Width = 60
        Height = 60
        Action = actConfirmar
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnLocImg: TImage
        Left = 376
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E501050212160F47E8FF000002604944415478DA9D945F68CD
          6118C7BF5F0AB349A3252B5B8826CBAE504B486D2C655307ADFCC924AB5D6869
          E502D9DAD5AEE4521A2D73738A7626CD22E2E2B4A24C2C4C128B3A261B4E9D1D
          F17AF69C5FBFCE797F7FF4DB73F37EDFF7F73E9FE77D9FDFFB3C448199F568C2
          6E54A21C597CC65B0C22C1AF08311638772396BFA296C5759C0B86B8DB4D337A
          B12860D717ECE74828C074E282BBF61BA3E2321FABB1C15DCBE020070301E6B8
          44CFD904BA10E79483ADC049B4A35827BFB08DA3BE00B9FB0B2CD4D92D1C65DA
          4AEB1A0CA05AE538AA99F503C4257539F703FCEB8D614A3182752A4FF3B20720
          F15FEB452650654777113578263981FCD85576089A0EF4A83AC52B0834D38723
          2A6A99B4010FB04B335FC6E910403DEEA9E8E4451BF00E6B657CCACD08315384
          B45EB48FC76C401A8B654CB011A16626B15C86FBACB30153582AE3101BFE03F8
          891219EE72AF0D18D3F736C68DA1EECBF04DC535B6D880DB527FB20395FC1402
          68C64D15EDBC64034EE0AAAA6E9E0F013CC44E15557C6303CAF051AB308D4D7C
          1FE01E435C4592B5F6B7D9A7DC830ED52FB19DDF7DDC6BF0044B543670C80F50
          2AAEE53A1B976AB02A4EA2F73AEEFD3CECC5E7CA792B1E39CDE48F24EB061E33
          A399AF472B76383B6750C154004036EF13C7E2BCF5490196E4CD67A4E053F881
          360EFB02F4A671A768BDD68F3378A52F3183C642447E535D20073E8B95967312
          5DB3A9331FA457C38BB07AB099872DD823DD7085642385E7F2C49DFF2EF538E0
          E4A9006137F11033758228723212E39DC8007F4424801F2222C08B880CF020A2
          030AFE48624E00F714C3689A23404FD18643CCFC03958DC32445DAEFFF000000
          2574455874646174653A63726561746500323032312D30312D30355430323A31
          383A32322B30303A3030D1B063570000002574455874646174653A6D6F646966
          7900323032312D30312D30355430323A31383A32322B30303A3030A0EDDBEB00
          00001974455874536F667477617265007777772E696E6B73636170652E6F7267
          9BEE3C1A0000000049454E44AE426082}
        ExplicitTop = 26
      end
      object btnLocLbl: TLabel
        Left = 364
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Localizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnLocSpb: TSpeedButton
        Left = 362
        Top = 15
        Width = 60
        Height = 60
        Action = actLocalizar
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnSaiImg: TImage
        Left = 446
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E5010502140CA47FB603000001044944415478DACD95BD0E01
          4110C7FFD3E045948442A216241A0FE3231109714281F0104A8D464350521051
          7817BAB1773977E1B8BBDD55DC343B9BECFFB733B31F430097D0470609C8D903
          5774684B42BE06498A5FC628131F9157949B7624BE5BC19FB097941690331321
          666B3AA3BA64F453D4CC31E200AE224D03650057B0441C236A290138891B6296
          6B50CF0FB0B0E62B9A7B96B431B4DD2F0807E05BA826C6B6EB492414402C6B60
          F21D1112F01BE1D6E01C8440CA2EE65B2D3E4F21AC3951A8027A64FC3B85C022
          BA47E9EC2E01F82597BF481FF27F5E65FDC714F49C3DC18706687F28FE162580
          7663D16B6D07E222361ACDB524A402D14756A1BD5FD0A5DD13EEB6ADEBBB4203
          F80000002574455874646174653A63726561746500323032312D30312D303554
          30323A32303A31322B30303A3030D50A42410000002574455874646174653A6D
          6F6469667900323032312D30312D30355430323A32303A31322B30303A3030A4
          57FAFD0000001974455874536F667477617265007777772E696E6B7363617065
          2E6F72679BEE3C1A0000000049454E44AE426082}
        ExplicitTop = 26
      end
      object btnSaiLbl: TLabel
        Left = 434
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitTop = 63
      end
      object btnSaiSpb: TSpeedButton
        Left = 432
        Top = 15
        Width = 60
        Height = 60
        Action = actSair
        Anchors = [akLeft, akBottom]
        Flat = True
        ExplicitTop = 24
      end
      object btnMailShp: TShape
        Left = 501
        Top = 9
        Width = 65
        Height = 65
        Anchors = [akLeft, akBottom]
        Brush.Color = 4926232
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object btnMailLbl: TLabel
        Left = 506
        Top = 54
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnMailImg: TImage
        Left = 518
        Top = 17
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E501070F1D2CEC02765A0000034F4944415478DA9D957D6895
          6518C67FB7B1AC40D9948C2C14995F7F85FB68236D6C834871F931A3162895E4
          A0125D3A3F5699BA39BF721BA9D32024149442C636DDD82A51D24E466A8EB910
          4BD10C9281620BA1E5667BBCCEBB7767E71C778ED3175E78DEEB7EAEEB79EEFB
          BE9EE7351EF271C63C3EE63F7B48723EEB784EC3F6071610F91591D3FCCFE607
          14702FB125440E3E9B062DA095676BE59430A89B040A062520F22C9153353CCD
          30267BE0CF7A33993808016D7B13CF6BD04A85845EF7C00ED269C191741F0117
          2C58BA06A728D57B9817E8E47111F339CFEF042CCBE2AEBC910C0DCE514E0DE3
          686212BF2885895459B12BE06B7658910D866CCE656AF551D4718DC5DA499675
          B9CD94B0D0F6DA80E472952744163297033CC10E8E48A68334BB22EC1BA633C5
          5AA304DC8B22656BD0C6865EB2B022AA30ADF7156719C93CABF7D0769218665D
          1641DE404E14D954C475DCE64D6AF99E6954DA0A0F1FCD5FB4981A6B51E45F29
          EB230B1DCA5EDEE026732CE0B6B1A2377B2F9247235FDA3B9E80C865E4469385
          8FA09E2C2E33D37E733345E820D5FEF0636BB4E012AB9680AB678E57B052EAFA
          C99A924C3313F889D976C38D916992B48F8650B48657B59B4050E08C0EC7FFAC
          5176DD61F44C1A7852792FB04E97C07119A8C25686C52FC91789762B28F098EA
          5BC250F9EA7D3BEA87FBDAB6CC7AF45541717FF65E7CB8D2B968938263AF886E
          3CBB785906DD4FB15D774BD5B6217C685BFD72358467EF61D9EAC8412B080978
          E07C2A798A1B1CD371E9D4D66B3D74AC7A9FA43A3446B8A588CFF8C836470808
          4E542117F388DA36D77EF09004AD34954F6D7594DDF6C91733ECDB28012FB485
          D514DA1EFFAB92E59C2427BCBC1EDEAAFBF0696B1F4860BD7CA723122B7BDF5E
          B7B86ECFF47EC51450F6C1DE87761336278D3334595E5C013F7BF8976DBA38BB
          22E614F205E5F6497C812A96F1A33AB24A0E699343026173AA55EAD7AC268E80
          9A193CF72976550EA9D6B9F71DE2CF39295F26DBE5D8026B296204F976C8C766
          B19B67F95B4DDE693D6E08FFD0231BBBD8025D3CCA562B8970C846DE953B03BC
          A7BFC1054E58765F6C2001947D8EDD898A64F0B9FE0CDD12C965BB7D104FE0A6
          7A7F957B1E6D7E917A325CC3B76D5F2C813CF6F0967D478C475759956EAE0CFB
          B30FB90BD43A458EEF1E7FD30000002574455874646174653A63726561746500
          323032312D30312D30375431353A32393A34342B30303A303065F39098000000
          2574455874646174653A6D6F6469667900323032312D30312D30375431353A32
          393A34342B30303A303014AE28240000001974455874536F6674776172650077
          77772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      object btnMailSpb: TSpeedButton
        Left = 504
        Top = 14
        Width = 60
        Height = 60
        Action = actEmail
        Anchors = [akLeft, akBottom]
        Flat = True
      end
    end
    object pnlLoading: TPanel
      Left = 450
      Top = -85
      Width = 251
      Height = 85
      Color = 4926232
      ParentBackground = False
      TabOrder = 14
      Visible = False
      object lblLoadingMgs: TLabel
        Left = 96
        Top = 16
        Width = 65
        Height = 21
        Caption = 'Aguarde'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lblLoadingMgsInfo: TLabel
        Left = 96
        Top = 43
        Width = 113
        Height = 21
        Caption = 'Localizando CEP'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object ActivityIndicator: TActivityIndicator
        Left = 17
        Top = 21
        IndicatorColor = aicWhite
        IndicatorSize = aisLarge
      end
    end
    object emailSendPnl: TPanel
      Left = 70
      Top = 440
      Width = 549
      Height = 69
      BevelOuter = bvNone
      Color = 4926232
      ParentBackground = False
      TabOrder = 15
      Visible = False
      DesignSize = (
        549
        69)
      object emailSendShp: TShape
        AlignWithMargins = True
        Left = 10
        Top = 10
        Width = 409
        Height = 49
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 130
        Margins.Bottom = 10
        Align = alClient
        Pen.Style = psClear
        Shape = stRoundRect
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 457
        ExplicitHeight = 47
      end
      object emailSendLbl: TLabel
        Left = 14
        Top = 13
        Width = 336
        Height = 20
        AutoSize = False
        Caption = 'Informe o destinat'#225'rio e-mail'
        Color = 10855845
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 10588553
        Font.Height = -14
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        Layout = tlCenter
      end
      object emailSendLblCan: TLabel
        Left = 428
        Top = 46
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object emailSendImgCan: TImage
        Left = 440
        Top = 11
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
      object emailSendLblSend: TLabel
        Left = 484
        Top = 46
        Width = 56
        Height = 15
        Alignment = taCenter
        Anchors = [akLeft, akBottom]
        AutoSize = False
        Caption = 'Enviar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object emailSendImgSend: TImage
        Left = 497
        Top = 11
        Width = 32
        Height = 32
        Anchors = [akLeft, akBottom]
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E501070F1D2CEC02765A0000034F4944415478DA9D957D6895
          6518C67FB7B1AC40D9948C2C14995F7F85FB68236D6C834871F931A3162895E4
          A0125D3A3F5699BA39BF721BA9D32024149442C636DDD82A51D24E466A8EB910
          4BD10C9281620BA1E5667BBCCEBB7767E71C778ED3175E78DEEB7EAEEB79EEFB
          BE9EE7351EF271C63C3EE63F7B48723EEB784EC3F6071610F91591D3FCCFE607
          14702FB125440E3E9B062DA095676BE59430A89B040A062520F22C9153353CCD
          30267BE0CF7A33993808016D7B13CF6BD04A85845EF7C00ED269C191741F0117
          2C58BA06A728D57B9817E8E47111F339CFEF042CCBE2AEBC910C0DCE514E0DE3
          686212BF2885895459B12BE06B7658910D866CCE656AF551D4718DC5DA499675
          B9CD94B0D0F6DA80E472952744163297033CC10E8E48A68334BB22EC1BA633C5
          5AA304DC8B22656BD0C6865EB2B022AA30ADF7156719C93CABF7D0769218665D
          1641DE404E14D954C475DCE64D6AF99E6954DA0A0F1FCD5FB4981A6B51E45F29
          EB230B1DCA5EDEE026732CE0B6B1A2377B2F9247235FDA3B9E80C865E4469385
          8FA09E2C2E33D37E733345E820D5FEF0636BB4E012AB9680AB678E57B052EAFA
          C99A924C3313F889D976C38D916992B48F8650B48657B59B4050E08C0EC7FFAC
          5176DD61F44C1A7852792FB04E97C07119A8C25686C52FC91789762B28F098EA
          5BC250F9EA7D3BEA87FBDAB6CC7AF45541717FF65E7CB8D2B968938263AF886E
          3CBB785906DD4FB15D774BD5B6217C685BFD72358467EF61D9EAC8412B080978
          E07C2A798A1B1CD371E9D4D66B3D74AC7A9FA43A3446B8A588CFF8C836470808
          4E542117F388DA36D77EF09004AD34954F6D7594DDF6C91733ECDB28012FB485
          D514DA1EFFAB92E59C2427BCBC1EDEAAFBF0696B1F4860BD7CA723122B7BDF5E
          B7B86ECFF47EC51450F6C1DE87761336278D3334595E5C013F7BF8976DBA38BB
          22E614F205E5F6497C812A96F1A33AB24A0E699343026173AA55EAD7AC268E80
          9A193CF72976550EA9D6B9F71DE2CF39295F26DBE5D8026B296204F976C8C766
          B19B67F95B4DDE693D6E08FFD0231BBBD8025D3CCA562B8970C846DE953B03BC
          A7BFC1054E58765F6C2001947D8EDD898A64F0B9FE0CDD12C965BB7D104FE0A6
          7A7F957B1E6D7E917A325CC3B76D5F2C813CF6F0967D478C475759956EAE0CFB
          B30FB90BD43A458EEF1E7FD30000002574455874646174653A63726561746500
          323032312D30312D30375431353A32393A34342B30303A303065F39098000000
          2574455874646174653A6D6F6469667900323032312D30312D30375431353A32
          393A34342B30303A303014AE28240000001974455874536F6674776172650077
          77772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      end
      object emailSendSpbSend: TSpeedButton
        Left = 487
        Top = 10
        Width = 49
        Height = 49
        Action = actEmailSend
        Anchors = [akLeft, akBottom]
        Flat = True
      end
      object emailSendSpbCan: TSpeedButton
        Left = 431
        Top = 10
        Width = 49
        Height = 49
        Action = actEmailCanc
        Anchors = [akLeft, akBottom]
        Flat = True
      end
      object emailSendEdt: TEdit
        Left = 15
        Top = 32
        Width = 390
        Height = 21
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        CharCase = ecLowerCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 5131854
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Text = 'edit1'
      end
    end
  end
  object aclClientes: TActionList
    Left = 608
    Top = 203
    object actIncluir: TAction
      Category = 'catOper'
      Hint = 'Registrar um novo cliente'
      OnExecute = actIncluirExecute
    end
    object actAlterar: TAction
      Category = 'catOper'
      OnExecute = actAlterarExecute
    end
    object actExcluir: TAction
      Category = 'catOper'
      OnExecute = actExcluirExecute
    end
    object actCancelar: TAction
      Category = 'catOper'
      OnExecute = actCancelarExecute
    end
    object actConfirmar: TAction
      Category = 'catOper'
      OnExecute = actConfirmarExecute
    end
    object actLocalizar: TAction
      Category = 'catOper'
      OnExecute = actLocalizarExecute
    end
    object actSair: TAction
      Category = 'catOper'
      OnExecute = actSairExecute
    end
    object actBuscaCep: TAction
      Category = 'catGeral'
      OnExecute = actBuscaCepExecute
    end
    object actEmail: TAction
      Category = 'catOper'
      OnExecute = actEmailExecute
    end
    object actEmailSend: TAction
      Category = 'catOper'
      OnExecute = actEmailSendExecute
    end
    object actEmailCanc: TAction
      Category = 'catOper'
      OnExecute = actEmailCancExecute
    end
  end
end
