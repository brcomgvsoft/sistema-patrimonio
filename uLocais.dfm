object frmLocais: TfrmLocais
  Left = 0
  Top = 0
  ClientHeight = 483
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyPress = FormKeyPress
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object pcGeral: TPageControl
    AlignWithMargins = True
    Left = 85
    Top = 3
    Width = 640
    Height = 477
    Margins.Left = 85
    ActivePage = tsInformacao
    Align = alClient
    HotTrack = True
    Style = tsButtons
    TabOrder = 0
    object tsPesquisa: TTabSheet
      Caption = 'Perquisar'
      object pnPesquisa: TPanel
        Left = 0
        Top = 405
        Width = 632
        Height = 41
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 5
        Caption = 'Pesquisa:'
        ParentBackground = False
        TabOrder = 0
        object btnPesquisar: TSpeedButton
          AlignWithMargins = True
          Left = 532
          Top = 10
          Width = 90
          Height = 24
          Cursor = crHandPoint
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 2
          Align = alRight
          Caption = 'Pesquisar'
          ExplicitLeft = 226
          ExplicitTop = 6
          ExplicitHeight = 29
        end
        object txtPesquisa: TEdit
          AlignWithMargins = True
          Left = 55
          Top = 12
          Width = 317
          Height = 21
          Margins.Left = 50
          Margins.Top = 7
          Margins.Right = 4
          Align = alClient
          TabOrder = 0
          TextHint = 'Entre com a informa'#231#227'o que deseja pesquisar'
        end
        object cbPesquisar: TComboBox
          AlignWithMargins = True
          Left = 379
          Top = 12
          Width = 145
          Height = 21
          Margins.Top = 7
          Align = alRight
          ItemIndex = 0
          TabOrder = 1
          Text = 'Descri'#231#227'o'
          Items.Strings = (
            'Descri'#231#227'o')
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 626
        Height = 399
        Cursor = crHandPoint
        Align = alClient
        DataSource = dsLocal
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'localId'
            Title.Caption = 'C'#243'digo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'titulo'
            Title.Caption = 'Titulo'
            Width = 525
            Visible = True
          end>
      end
    end
    object tsInformacao: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label2: TLabel
        Left = 3
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Titulo:'
        FocusControl = DBEdit2
      end
      object Label1: TLabel
        Left = 3
        Top = 56
        Width = 28
        Height = 13
        Caption = 'Local:'
        FocusControl = DBLookupComboBox1
      end
      object Label3: TLabel
        Left = 3
        Top = 99
        Width = 65
        Height = 13
        Caption = 'Respons'#225'vel:'
      end
      object pnAcoes: TPanel
        Left = 525
        Top = 0
        Width = 107
        Height = 446
        Align = alRight
        BevelOuter = bvNone
        BorderWidth = 5
        TabOrder = 3
        object btnNovo: TBitBtn
          AlignWithMargins = True
          Left = 8
          Top = 15
          Width = 91
          Height = 25
          Cursor = crHandPoint
          Margins.Top = 10
          Align = alTop
          Caption = 'Novo'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAEBDA66A66623791814
            6C011369002271145E9E5ED2E6D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF98CF980A83080990000794000A8F001686002C7700386A001B690487C1
            87FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BD29B048D0704A309049F0933CC6666
            FF9966FF9966FF990B89003A6C00276B0186BF86FFFFFFFFFFFFFFFFFFE0F0E0
            1390160BA8170AA3160AA315539B51FFF8FFFFF7FF66FF990099000191003B6C
            001B6B04D1E5D1FFFFFFFFFFFF71B47129B0370FA92311AA2310A922539B51FF
            F9FFFFFAFF66FF99029B06009A00108900396B005E9E5EFFFFFFFFFFFF309B30
            38BF4F33CC6666FF9966FF9933CC66F9F4F9FEF7FC66FF9966FF9966FF9966FF
            99347400217514FFFFFFFFFFFF1D992342C45D539B51FCE9F9F0E4ECF1EBF0F1
            EFF1F5F3F4FFF8FCFFF8FFFFF4FF66FF991D8300146D00FFFFFFFFFFFF1F9C25
            58CF76539B51FDECFDF2E9F2F0EBF0ECEBECEFEEEFF8F3F8FFF8FFFFF5FF66FF
            99118E00126E00FFFFFFFFFFFF37A43879DE99539B51539B51539B518EC18EF1
            EBF1F2ECF133CC66539B51539B5133CC66109403237D18FFFFFFFFFFFF79BE79
            70D68D51D47C2ECA602FC960539B51F2E8F2F0E4ED66FF9914AD2B0EA72007A3
            1212900565A865FFFFFFFFFFFFE7F5E730AB368CE8B03ACF6D2FCB64539B51FE
            ECFEFCE7F766FF9916AF2E11AA220AA91810860BDAEDDAFFFFFFFFFFFFFFFFFF
            AAE0AA3FB84E89E8AF4CD57B219827539B51539B5133CC6616B02F11AF260792
            0C97D197FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAE0AA31AC3775DB9476E19D50
            D2783BC65F30C05024B2391192159BD49BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE7F5E779BF793CA93C24A32B229F2733A13471B771E0F2E0FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnGravar: TBitBtn
          AlignWithMargins = True
          Left = 8
          Top = 46
          Width = 91
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Gravar'
          DoubleBuffered = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFECD99A0707070807F791D1D9EDFFFFEBD9E1A4E3
            E0ECFFFFF6E1EAF4D1FFFFD8E1D9E3E3D8EB08FFFFD9E1EBD0FFFFD8D9D9EBE3
            D0E307F6FFD9E1F3D0FFFFD8D9D9E307EDF7A4F7F799D9EAD0FFFFD8D9D9D8D8
            D8D8D9D9D9E1E1E2D0FFFFD8D9DAE2E2E2E2E2E2E2E2E2E1D0FFFFD8D0ECF6F6
            F6F6F6F60808F7E1D0FFFFD8D0ECF6080707070707F6ECE1D0FFFFD8D0ECFFF6
            F6F6F6F6F6F6ECE1D0FFFFD890ECFF080707070707F6ECE1D0FFFFD890ECFFFF
            F6F6F6F6F6F6ECE1D0FFFFD888ECFFF60708070708F6EC91D9FFFFF4D8EC0808
            080707070707ECD8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnGravarClick
        end
        object btnCancelar: TBitBtn
          AlignWithMargins = True
          Left = 8
          Top = 77
          Width = 91
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Cancelar'
          DoubleBuffered = True
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000C40E0000C40E00000001000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
            A6000020400000206000002080000020A0000020C0000020E000004000000040
            20000040400000406000004080000040A0000040C0000040E000006000000060
            20000060400000606000006080000060A0000060C0000060E000008000000080
            20000080400000806000008080000080A0000080C0000080E00000A0000000A0
            200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
            200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
            200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
            20004000400040006000400080004000A0004000C0004000E000402000004020
            20004020400040206000402080004020A0004020C0004020E000404000004040
            20004040400040406000404080004040A0004040C0004040E000406000004060
            20004060400040606000406080004060A0004060C0004060E000408000004080
            20004080400040806000408080004080A0004080C0004080E00040A0000040A0
            200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
            200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
            200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
            20008000400080006000800080008000A0008000C0008000E000802000008020
            20008020400080206000802080008020A0008020C0008020E000804000008040
            20008040400080406000804080008040A0008040C0008040E000806000008060
            20008060400080606000806080008060A0008060C0008060E000808000008080
            20008080400080806000808080008080A0008080C0008080E00080A0000080A0
            200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
            200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
            200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
            2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
            2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
            2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
            2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
            2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
            2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
            2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF09EAE2F3FFFFFFFF09FFFFFFFFFFECEAEA0909EAFFFFFFF4EBFFFFFF
            ECE2EA09090909E909FFFFE3ECFFFFFFEA090909090909EBF4FFFFE209FFFFFF
            09EBEBE109090909EBFFFFE1ECFFFFFFFFFFEB0909090909E2FFFFD9E2FFFFFF
            FFF6E20909E2EA09EAFFFFE1E109FFFFF6E1090909EBF409E2FFFFE3E9E1E2E3
            E1F3F309E2FFFFEAECFFFF09E1E9E9EAEAEB09E209FFFFFFFFFFFFFFECE20909
            0909E109FFFFFFFFFFFFFFFFFFECE2D9E1E309FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 2
          OnClick = btnCancelarClick
        end
        object btnApagar: TBitBtn
          AlignWithMargins = True
          Left = 8
          Top = 108
          Width = 91
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Apagar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2FC8488D5383CBA14
            1BAF141AAC383AB28585CDF2F2FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFB2B6F11324C40020D80023E00020D90019CC0011BD000BB01417A7B4B4
            E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B7F40420D6002FFF002AFB002DF800
            2BF20029EE001FE50012CA000DB50409A4B4B4E7FFFFFFFFFFFFFFFFFFF5F5FD
            1932D50035FF97A9E86888F40034FF002DFF0033FA95B1FD4570FB0019D4000D
            B61316A7F2F2FBFFFFFFFFFFFF818BE4254EF80034FFCACDDCF5EFDEB1C0EF06
            3DFFB1C4FAFFFFFBFFFFFF6187FD0012CA000CB28484CEFFFFFFFFFFFF3A51DF
            3D6AFF083CFE97A3E2F4F1E1F6F3EAE4E8F3FFFFF8FFFFFFF3F7FF446DFD0022
            E70012BE373BB6FFFFFFFFFFFF2341E34B76FF2255FF0D41FE5C7AF0EFEDEBF6
            F6F3FFFFFBCDDAFE174AFF002AFC002CF30019CB121AB2FFFFFFFFFFFF2545E7
            6489FF2E5FFF3364FF0639FCDADCEDFBF9F3FFFFFBADC0FE0033FF0236FF0030
            FA0020DA121CB5FFFFFFFFFFFF3C58E983A2FF3D6CFF3C6CFF526DE9FFFBE9B2
            BFF3D4DAF9FFFFFF6D8FFF0033FF0032FF0023E23941C2FFFFFFFFFFFF8492F1
            688AFA7096FF2958F7BABEDEF5F3E71543F70E41FDE7ECFBFFFFFF2958FE0035
            FF0021DA878DDAFFFFFFFFFFFFF3F4FF294EEF97B6FF4C75F95B6CD8546BE133
            65FF2D5FFF1745FCC7D1FA4C73FF0135FF1629CBF4F4FDFFFFFFFFFFFFFFFFFF
            B7C2FF2F53F396B3FF6F95FF3966FA396AFF2F60FF2153FE083CFF0C40FF0725
            DCBABFF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8C3FF294DF26688FA88A9FF6A
            8FFF4F7AFF3E6DFF204CF61E38DDBAC0F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF4F5FE8C99F5405DED2C4CEC2A4AE94059E58D99ECF5F6FDFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 3
          OnClick = btnApagarClick
        end
        object btnFechar: TBitBtn
          AlignWithMargins = True
          Left = 8
          Top = 139
          Width = 91
          Height = 25
          Cursor = crHandPoint
          Align = alTop
          Caption = 'Fechar'
          DoubleBuffered = True
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAECFD808CE73D54DD1C
            35D61A33D23B4DD48188DAEBEBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFAEBAFF2950F33464FD2E5EFE2F63FB2454F41B40E7183CE11B34D3AFB2
            F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFADBBFF3161FE4273FF3D6DFF2F62FFC9
            E0FFB3D2FF255DFF2552F71A3CDF1331DCAFB2F0FFFFFFFFFFFFFFFFFFE9EDFF
            3A64FF4C7AFF4674FF4573FF3668FFD0E2FFFFFFFFA3C8FF275EFF2958FE1A3C
            DF1B33D4EAEBFAFFFFFFFFFFFF7D96FE6993FE5080FF5382FF5281FF4676FF73
            9FFFFFFFFFFFFFFF9DC5FF285EFF2652F61A3CE08087DDFFFFFFFFFFFF567CFF
            76A0FF3D73FF2D66FF3069FF346DFF2B69FF709FFFFFFFFFFFFFFF93BDFF275E
            FF1E42E33A4DD7FFFFFFFFFFFF4E7AFF7EACFF7C98FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF8CB8FF224CF01A36D5FFFFFFFFFFFF5580FF
            94BEFF6B89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F9D
            FF2B58F71B38D8FFFFFFFFFFFF6990FFB1D5FF5895FF3A77FF3C7BFF3E7BFF1F
            61FF7FA0FFFFFFFFFFFFFF608FFF3567FF3562F93E56E0FFFFFFFFFFFF8FA9FF
            B1D7FF9DCEFF89C4FF89C3FF78B4FF7E9DFFFFFFFFFFFFFF5785FF4172FF4373
            FF3865F88392EDFFFFFFFFFFFFEEF2FF73A1FFC7EAFF99D2FF8BC9FF5E9CFFD7
            DDFFFFFFFF507BFF4F83FF4D7CFF4B7AFF2E55F6EDEFFFFFFFFFFFFFFFFFFFFF
            BFD0FF92BFFFCEF4FFA4D7FF6AA8FF9BABFF4E77FF5A92FF5B8CFF5584FF3565
            FFB5C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1D2FF7BA6FFBAE3FFB6DEFF72
            A2FF7BADFF75A6FF6997FF3D6AFFB6C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF0F5FF99B0FF779CFF6791FF618BFF698CFF8EA6FFEFF2FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentDoubleBuffered = False
          TabOrder = 4
          OnClick = btnFecharClick
        end
      end
      object DBEdit2: TDBEdit
        Left = 3
        Top = 30
        Width = 486
        Height = 21
        DataField = 'titulo'
        DataSource = dsLocal
        TabOrder = 0
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 3
        Top = 71
        Width = 209
        Height = 21
        DataField = 'vLocalId'
        DataSource = dsLocal
        KeyField = 'localId'
        ListField = 'titulo'
        ListSource = dsAuxLocal
        NullValueKey = 46
        TabOrder = 1
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 3
        Top = 114
        Width = 209
        Height = 21
        DataField = 'pessoaId'
        DataSource = dsLocal
        KeyField = 'pessoaId'
        ListField = 'nome'
        ListSource = dsPessoa
        NullValueKey = 46
        TabOrder = 2
      end
    end
  end
  object dsLocal: TDataSource
    DataSet = cdsLocal
    OnStateChange = dsLocalStateChange
    OnDataChange = dsLocalDataChange
    Left = 24
    Top = 16
  end
  object cdsLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocal'
    OnReconcileError = cdsLocalReconcileError
    Left = 24
    Top = 64
    object cdsLocallocalId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'localId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsLocaltitulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 100
    end
    object cdsLocalvLocalId: TIntegerField
      FieldName = 'vLocalId'
    end
    object cdsLocalpessoaId: TIntegerField
      FieldName = 'pessoaId'
      Required = True
    end
  end
  object dpsLocal: TDataSetProvider
    DataSet = dm.sqlLocal
    Options = [poAllowMultiRecordUpdates, poAutoRefresh, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 120
  end
  object dsAuxLocal: TDataSource
    DataSet = cdsAuxLocal
    Left = 26
    Top = 344
  end
  object dsPessoa: TDataSource
    DataSet = dm.sqlPessoal
    Left = 26
    Top = 230
  end
  object cdsAuxLocal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dpsLocal'
    Left = 24
    Top = 288
    object IntegerField1: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'localId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField1: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 100
    end
    object IntegerField2: TIntegerField
      FieldName = 'vLocalId'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'pessoaId'
      Required = True
    end
  end
end
