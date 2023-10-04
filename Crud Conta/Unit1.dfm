object fmConta: TfmConta
  Left = 0
  Top = 0
  Caption = 'Conta Crud'
  ClientHeight = 578
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 23
    Height = 32
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 70
    Height = 32
    Caption = 'LIMITE'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 141
    Height = 32
    Caption = 'NOM CONTA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 224
    Width = 108
    Height = 32
    Caption = 'SALDO R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 55
    Width = 268
    Height = 17
    Caption = 'Alerta: Se caso o id ja existir, ele vai atualizar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 355
    Width = 28
    Height = 17
    Caption = 'Lista'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = '@Microsoft JhengHei'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 26
    Width = 217
    Height = 23
    DataField = 'CODCON'
    DataSource = dsConta
    TabOrder = 0
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 296
    Width = 340
    Height = 27
    DataSource = dsConta
    TabOrder = 1
    OnClick = DBNavigator1Click
  end
  object DBEdit2: TDBEdit
    Left = 120
    Top = 80
    Width = 217
    Height = 23
    DataField = 'LIMITE'
    DataSource = dsConta
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 192
    Top = 144
    Width = 185
    Height = 23
    DataField = 'NOMCON'
    DataSource = dsConta
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 160
    Top = 224
    Width = 137
    Height = 23
    DataField = 'SALDO'
    DataSource = dsConta
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 378
    Width = 592
    Height = 120
    DataSource = dsConta
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object dsConta: TDataSource
    DataSet = dmBancario.sds
    Left = 552
    Top = 392
  end
end
