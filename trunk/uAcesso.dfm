object frmAcesso: TfrmAcesso
  Left = 0
  Top = 0
  ClientHeight = 287
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnAcoes: TPanel
    Left = 0
    Top = 246
    Width = 482
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 304
    ExplicitWidth = 185
    object btnConfirmar: TSpeedButton
      AlignWithMargins = True
      Left = 286
      Top = 6
      Width = 90
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Confirmar'
      ExplicitLeft = 226
    end
    object btnCancelar: TSpeedButton
      AlignWithMargins = True
      Left = 386
      Top = 6
      Width = 90
      Height = 29
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alRight
      Caption = 'Cancelar'
      ExplicitLeft = 391
    end
  end
  object dsEmpresa: TDataSource
    DataSet = dm.cdsEmpresa
    Left = 24
    Top = 32
  end
end
