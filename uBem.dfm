object frmBem: TfrmBem
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  ClientHeight = 645
  ClientWidth = 965
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 17
  object pcGeral: TPageControl
    AlignWithMargins = True
    Left = 111
    Top = 4
    Width = 710
    Height = 637
    Cursor = crHandPoint
    Margins.Left = 111
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    ActivePage = tsPesquisa
    Align = alClient
    HotTrack = True
    TabOrder = 0
    OnChange = pcGeralChange
    object tsPesquisa: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Perquisar'
      object pnPesquisa: TPanel
        Left = 0
        Top = 551
        Width = 702
        Height = 54
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alBottom
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 5
        Caption = 'Pesquisa:'
        ParentBackground = False
        TabOrder = 0
        object txtPesquisa: TEdit
          AlignWithMargins = True
          Left = 70
          Top = 14
          Width = 319
          Height = 31
          Margins.Left = 65
          Margins.Top = 9
          Margins.Right = 5
          Margins.Bottom = 4
          Align = alClient
          TabOrder = 0
          TextHint = 'Entre com a informa'#231#227'o que deseja pesquisar'
          ExplicitHeight = 25
        end
        object cbPesquisar: TComboBox
          AlignWithMargins = True
          Left = 398
          Top = 14
          Width = 189
          Height = 25
          Margins.Left = 4
          Margins.Top = 9
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 1
          Text = 'Identifica'#231#227'o/Tombamento'
          Items.Strings = (
            'Identifica'#231#227'o/Tombamento'
            'Descri'#231#227'o')
        end
        object Button1: TButton
          AlignWithMargins = True
          Left = 595
          Top = 9
          Width = 98
          Height = 36
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alRight
          Caption = 'Pesquisar'
          TabOrder = 2
          OnClick = Button1Click
        end
      end
      object DBGrid1: TDBGrid
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 694
        Height = 543
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Align = alClient
        DataSource = dsBem
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'bemId'
            Title.Caption = 'C'#243'digo'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'identificacao'
            Title.Caption = 'Identifica'#231#227'o'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Especifica'#231#227'o'
            Width = 390
            Visible = True
          end>
      end
    end
    object tsInformacao: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label2: TLabel
        Left = 9
        Top = 21
        Width = 203
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Identifica'#231#227'o (Ex: Tombamento):'
        FocusControl = idenficacao
      end
      object Label3: TLabel
        Left = 9
        Top = 84
        Width = 149
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Descri'#231#227'o/Especifica'#231#227'o:'
        FocusControl = dbmDescricao
      end
      object Label4: TLabel
        Left = 9
        Top = 313
        Width = 43
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Grupo:'
        FocusControl = edtGrupo
      end
      object Label5: TLabel
        Left = 9
        Top = 421
        Width = 98
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Estado do bem:'
        FocusControl = edtEstado
      end
      object Label6: TLabel
        Left = 9
        Top = 213
        Width = 101
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Org'#227'o/Empresa:'
        FocusControl = edtLocalizacao
      end
      object Label12: TLabel
        Left = 569
        Top = 21
        Width = 68
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Valor atual:'
        FocusControl = valor
      end
      object Label14: TLabel
        Left = 9
        Top = 366
        Width = 72
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Sub-Grupo:'
        FocusControl = subgrupoId
      end
      object Label1: TLabel
        Left = 9
        Top = 265
        Width = 54
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Unidade:'
        FocusControl = subLocalId
      end
      object Label15: TLabel
        Left = 483
        Top = 21
        Width = 75
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Quantidade:'
        FocusControl = quantidade
      end
      object Label7: TLabel
        Left = 9
        Top = 469
        Width = 47
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Gest'#227'o:'
        FocusControl = editGestao
      end
      object Label16: TLabel
        Left = 9
        Top = 523
        Width = 114
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Valor de Aquisi'#231#227'o:'
        FocusControl = valorAquisicao
      end
      object Label20: TLabel
        Left = 148
        Top = 523
        Width = 133
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Identifica'#231#227'o Anterior:'
        FocusControl = identificacaoAnterior
      end
      object idenficacao: TDBEdit
        Left = 9
        Top = 42
        Width = 207
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'identificacao'
        DataSource = dsBem
        TabOrder = 0
      end
      object edtGrupo: TDBEdit
        Left = 9
        Top = 335
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'grupoId'
        DataSource = dsBem
        TabOrder = 10
      end
      object edtEstado: TDBEdit
        Left = 9
        Top = 442
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'estadoId'
        DataSource = dsBem
        TabOrder = 14
      end
      object edtLocalizacao: TDBEdit
        Left = 9
        Top = 234
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'localId'
        DataSource = dsBem
        TabOrder = 6
      end
      object dbmDescricao: TDBMemo
        Left = 9
        Top = 109
        Width = 399
        Height = 102
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'descricao'
        DataSource = dsBem
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object dblGrupo: TDBLookupComboBox
        Left = 148
        Top = 335
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'grupoId'
        DataSource = dsBem
        KeyField = 'grupoId'
        ListField = 'grupoId;descricao'
        ListFieldIndex = 1
        ListSource = dsGrupoPrincipal
        TabOrder = 11
      end
      object dblEstado: TDBLookupComboBox
        Left = 148
        Top = 442
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'estadoId'
        DataSource = dsBem
        KeyField = 'estadoId'
        ListField = 'estadoId;descricao'
        ListFieldIndex = 1
        ListSource = dsEstado
        TabOrder = 15
      end
      object dblLocal: TDBLookupComboBox
        Left = 148
        Top = 234
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'localId'
        DataSource = dsBem
        KeyField = 'localId'
        ListField = 'localId;titulo'
        ListFieldIndex = 1
        ListSource = dsUnidade
        TabOrder = 7
      end
      object valor: TDBEdit
        Left = 569
        Top = 42
        Width = 112
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'valor'
        DataSource = dsBem
        TabOrder = 3
      end
      object tipoIdentificacao: TDBRadioGroup
        Left = 417
        Top = 99
        Width = 264
        Height = 112
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Tipo de identifica'#231#227'o'
        DataField = 'tipoIdentificacao'
        DataSource = dsBem
        Items.Strings = (
          '01 - Plaqueta  Convencional'
          '02 - Plaqueta c/ Cod. de Barras'
          '03 - Sem plaqueta')
        ParentBackground = True
        TabOrder = 5
        Values.Strings = (
          '1'
          '2'
          '3')
      end
      object subgrupoId: TDBEdit
        Left = 9
        Top = 387
        Width = 130
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'subgrupoId'
        DataSource = dsBem
        TabOrder = 12
      end
      object dblSubGrupo: TDBLookupComboBox
        Left = 146
        Top = 387
        Width = 534
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'subgrupoId'
        DataSource = dsBem
        KeyField = 'grupoId'
        ListField = 'grupoId;descricao'
        ListFieldIndex = 1
        ListSource = dsGrupo
        NullValueKey = 46
        TabOrder = 13
      end
      object subLocalId: TDBEdit
        Left = 9
        Top = 286
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'subLocalId'
        DataSource = dsBem
        TabOrder = 8
      end
      object dblsubLocalId: TDBLookupComboBox
        Left = 148
        Top = 286
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'subLocalId'
        DataSource = dsBem
        KeyField = 'localId'
        ListField = 'localId;titulo'
        ListFieldIndex = 1
        ListSource = dsLocalizacao
        NullValueKey = 46
        TabOrder = 9
      end
      object tipoAquisicao: TDBRadioGroup
        Left = 224
        Top = 21
        Width = 251
        Height = 48
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Tipo de aquisi'#231#227'o:'
        Columns = 2
        DataField = 'tipoAquisicao'
        DataSource = dsBem
        Items.Strings = (
          '01 - Pr'#243'pria'
          '02 - Terceiros')
        ParentBackground = True
        TabOrder = 1
        Values.Strings = (
          '1'
          '2')
      end
      object quantidade: TDBEdit
        Left = 483
        Top = 42
        Width = 78
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'quantidade'
        DataSource = dsBem
        TabOrder = 2
      end
      object editGestao: TDBEdit
        Left = 9
        Top = 490
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'gestaoId'
        DataSource = dsBem
        TabOrder = 16
      end
      object dblGestao: TDBLookupComboBox
        Left = 148
        Top = 490
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'gestaoId'
        DataSource = dsBem
        KeyField = 'gestaoId'
        ListField = 'gestao'
        ListSource = dsGestao
        NullValueKey = 46
        TabOrder = 17
      end
      object valorAquisicao: TDBEdit
        Left = 9
        Top = 544
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'valorAquisicao'
        DataSource = dsBem
        TabOrder = 18
      end
      object identificacaoAnterior: TDBEdit
        Left = 148
        Top = 544
        Width = 533
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'identificacaoAnterior'
        DataSource = dsBem
        TabOrder = 19
      end
    end
    object tsAquisicao: TTabSheet
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Caption = 'Informa'#231#245'es de aquisi'#231#227'o'
      ImageIndex = 2
      object Label8: TLabel
        Left = 21
        Top = 33
        Width = 118
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Data incorpora'#231#227'o:'
        FocusControl = DBEdit2
      end
      object Label9: TLabel
        Left = 161
        Top = 33
        Width = 85
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Data da nota:'
        FocusControl = DBEdit3
      end
      object Label10: TLabel
        Left = 299
        Top = 33
        Width = 70
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Fornecedor'
        FocusControl = DBEdit4
      end
      object Label11: TLabel
        Left = 21
        Top = 469
        Width = 39
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'bemId'
        FocusControl = DBEdit1
        Visible = False
      end
      object Label13: TLabel
        Left = 21
        Top = 93
        Width = 150
        Height = 17
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'N'#250'mero/Chave da Nota:'
        FocusControl = numeroNota
      end
      object Label17: TLabel
        Left = 21
        Top = 156
        Width = 116
        Height = 17
        Caption = 'N'#250'mero Conv'#234'nio:'
      end
      object Label18: TLabel
        Left = 21
        Top = 214
        Width = 113
        Height = 17
        Caption = 'N'#250'mero Processo:'
      end
      object Label19: TLabel
        Left = 21
        Top = 267
        Width = 117
        Height = 17
        Caption = 'N'#250'mero Empenho:'
      end
      object Label21: TLabel
        Left = 21
        Top = 323
        Width = 136
        Height = 17
        Caption = 'Modalidade arquisi'#231#227'o:'
      end
      object DBEdit2: TDBEdit
        Left = 21
        Top = 52
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'data'
        DataSource = dsAquisicao
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 161
        Top = 52
        Width = 131
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'dataNota'
        DataSource = dsAquisicao
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 299
        Top = 52
        Width = 79
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'fornecedorId'
        DataSource = dsAquisicao
        TabOrder = 2
      end
      object dblFornecedor: TDBLookupComboBox
        Left = 386
        Top = 52
        Width = 307
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'fornecedorId'
        DataSource = dsAquisicao
        KeyField = 'fornecedorId'
        ListField = 'razaoSocial'
        ListSource = dsFornecedor
        NullValueKey = 16430
        TabOrder = 3
      end
      object DBEdit1: TDBEdit
        Left = 21
        Top = 490
        Width = 175
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'bemId'
        DataSource = dsAquisicao
        ParentColor = True
        ReadOnly = True
        TabOrder = 4
        Visible = False
      end
      object numeroNota: TDBEdit
        Left = 21
        Top = 114
        Width = 672
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'numeroNota'
        DataSource = dsAquisicao
        TabOrder = 5
      end
      object btRemoverFornecedor: TBitBtn
        AlignWithMargins = True
        Left = 424
        Top = 493
        Width = 269
        Height = 33
        Cursor = crHandPoint
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Remover informa'#231#245'es de aquisi'#231#227'o'
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
        TabOrder = 6
        OnClick = btRemoverFornecedorClick
      end
      object dblConvenio: TDBLookupComboBox
        Left = 21
        Top = 175
        Width = 672
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'convenioId'
        DataSource = dsAquisicao
        KeyField = 'convenioId'
        ListField = 'numeroConvenio'
        ListSource = dsConvenio
        NullValueKey = 16430
        TabOrder = 7
      end
      object dblProcesso: TDBLookupComboBox
        Left = 21
        Top = 233
        Width = 672
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'processoId'
        DataSource = dsAquisicao
        KeyField = 'processoId'
        ListField = 'numeroProcesso'
        ListSource = dsProcesso
        NullValueKey = 16430
        TabOrder = 8
      end
      object dblEmprenho: TDBLookupComboBox
        Left = 21
        Top = 286
        Width = 672
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'empenhoId'
        DataSource = dsAquisicao
        KeyField = 'empenhoId'
        ListField = 'numeroEmpenho'
        ListSource = dsEmpenho
        NullValueKey = 16430
        TabOrder = 9
      end
      object dblModalidade: TDBLookupComboBox
        Left = 21
        Top = 342
        Width = 672
        Height = 25
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        DataField = 'modalidadeId'
        DataSource = dsAquisicao
        KeyField = 'modalidadeId'
        ListField = 'descricao'
        ListSource = dsModalidade
        NullValueKey = 16430
        TabOrder = 10
      end
    end
  end
  object pnAcoes: TPanel
    AlignWithMargins = True
    Left = 825
    Top = 10
    Width = 140
    Height = 635
    Margins.Left = 0
    Margins.Top = 10
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alRight
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 1
    object btnNovo: TBitBtn
      AlignWithMargins = True
      Left = 9
      Top = 18
      Width = 122
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 13
      Margins.Right = 4
      Margins.Bottom = 4
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
      Left = 9
      Top = 58
      Width = 122
      Height = 33
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Left = 9
      Top = 99
      Width = 122
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Left = 9
      Top = 139
      Width = 122
      Height = 33
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
      Left = 9
      Top = 180
      Width = 122
      Height = 32
      Cursor = crHandPoint
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
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
  object pnLateral: TPanel
    Left = 0
    Top = 0
    Width = 85
    Height = 645
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BevelOuter = bvNone
    BorderStyle = bsSingle
    TabOrder = 2
    object imgLateral: TImage
      Left = 0
      Top = 0
      Width = 81
      Height = 641
      Margins.Left = 4
      Margins.Top = 4
      Margins.Right = 4
      Margins.Bottom = 4
      Align = alClient
      Picture.Data = {
        0954506E67496D61676589504E470D0A1A0A0000000D49484452000000640000
        02F60806000000B7D333350000000473424954080808087C0864880000000970
        48597300000B1200000B1201D2DD7EFC0000041174455874584D4C3A636F6D2E
        61646F62652E786D70003C3F787061636B657420626567696E3D222020202220
        69643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0A
        3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574
        612F2220783A786D70746B3D2241646F626520584D5020436F726520342E312D
        633033342034362E3237323937362C20536174204A616E203237203230303720
        32323A33373A33372020202020202020223E0A2020203C7264663A5244462078
        6D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F31393939
        2F30322F32322D7264662D73796E7461782D6E7323223E0A2020202020203C72
        64663A4465736372697074696F6E207264663A61626F75743D22220A20202020
        2020202020202020786D6C6E733A7861703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F223E0A2020202020202020203C7861703A
        43726561746F72546F6F6C3E41646F62652046697265776F726B73204353333C
        2F7861703A43726561746F72546F6F6C3E0A2020202020202020203C7861703A
        437265617465446174653E323031312D30342D31375432323A33363A34345A3C
        2F7861703A437265617465446174653E0A2020202020202020203C7861703A4D
        6F64696679446174653E323031312D30342D31375432323A34313A35345A3C2F
        7861703A4D6F64696679446174653E0A2020202020203C2F7264663A44657363
        72697074696F6E3E0A2020202020203C7264663A4465736372697074696F6E20
        7264663A61626F75743D22220A202020202020202020202020786D6C6E733A64
        633D22687474703A2F2F7075726C2E6F72672F64632F656C656D656E74732F31
        2E312F223E0A2020202020202020203C64633A666F726D61743E696D6167652F
        706E673C2F64633A666F726D61743E0A2020202020203C2F7264663A44657363
        72697074696F6E3E0A2020203C2F7264663A5244463E0A3C2F783A786D706D65
        74613E0A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020A12FB13D0000001874455874536F667477617265004164
        6F62652046697265776F726B734FB31F4E00000016744558744372656174696F
        6E2054696D650030342F31372F31312439D3AD000004BB70725657789CED5B4B
        8ED430100D90D8933646E22C7315246ED06BD8220E42DF80FF776083C41E9405
        7BFE7F587103425C65276E4F123BE99E3C8426DD5E4D4FAADEAB57558EEDBCFA
        F3E2777631BB529B6B5DD787759DD5D5BAAE0EEB2AAB3759556755B5AEAAC3AA
        CAAACDBADA649B4D569F5EA7D7FF7565A5F6AF72698D67B9D60269BF94DAF3E0
        FCE2F60B347E362C70F1171E033924FEF282B43E2C1FFF5C4B65BEB8F82B898D
        BF96EC82B90A807D45E03904CBE35F4963DE0900947F8D02590390FC53B2AD01
        18FCCAA53F02BF31AFB0F597F8A701C12FBA16B042E43FD32F30F12F1AF3B2CD
        004CFC053EFE0299FF9C82A61001EC73FC1537C1E5F96FF07B0E20E6DFC231A0
        20FD9F2CBB0C581E7FE1CC0B4CFF6DF07300880180FE1BF4147D2A8028FC4401
        E8F9C399371F00FF8DEE8C073C0D42E307F47F45F061F80BA37E631E167F41E6
        05D55F40FE51FE0BC9051091FFC232601400B02F846500157F79D055C0E5F19F
        69A4672E2E4180FE6F8C6B0A02447F4DFFB71EE0F25F31FF98F84B8E3F8A7FCE
        7F651D40CC7F1C7C107ED21E4B10825FD8ABD11F24FF95F00AD0F2F8CF3AFDE3
        E2CFF04D0010F5473A01980208CA7F5B81B5C0F1CF0508695F40FA8FABFF3C05
        42E6BF112062FEDF5ED0FC670720EB6F5E02A2F1E3E6BFAC7F64FF37CFA0C8F8
        0B4CFE7BF2C3E4BF23C04C4030FAD73CFF681C00AD3FB5332050FFD75CFF11F9
        5FCA6EFE8D89BF3EC70B406640F2DF7B0242E4BFB2F19790F8AFA4B3AE40FA27
        CB921B1066FD9F9EFDA6F5BF6B2ABB7AFDF2F3ECE0C64BFDFAD291CE9EFEACB7
        C6D18FE3E3C9F76E3CFEC623573601EDFCEFE197BA1D773FF0B8F7B11BF73FF1
        78F09987FFFB475FBBE1EE6F866FD70CDFA752BA0D089EFF8538DC78F6AB1B43
        BF897110FA61F1B72BE0C6BEF1BD8F039F8790039F87A91CD8FD1FBB02592463
        9B83BF8F83A6FE28A77E137FE7BBC363B0DD793FCCC1AE5AA0FD7F039D168073
        F27161FCBCFE6CD71F43FC631CCCD582CF43CEDB9F760324DFF2F524F0871CD0
        FE7FFBCDB77C1EE320351F625AA0FCD742B9F5CF3E7F4F1C7FBB0357925F310E
        F6990FA574092029FFC3FAB80B1763F7E9F05BD382F73F42FC612D18E3608E16
        0A67DEEE7F0DF589A95CC4FED7D928EDCE2BA9C0E28F69A08F83B95AC8956E0F
        0085F853799833BAF8BBD3275C7F7C6DA672909A0F7D3CB4FAF3F2AFAF4FEC9B
        8736FE9A8E7EB4E74F86F00F7170FBDD6EF9906B3EFFC99F62B04FEC9B072FFF
        9D03A4BFD07E0CFF1007A95AE0F3FF82A360FB6F0A07BBF2E0C59FCFBF9103C7
        F1CFE1608A16721FBFCE07FBC4180F73B8E8EA9FEF40B9F56C30250F1C0753B5
        E0DE7F10F6FC756CDE14E321958B2EFED6342541DE8B3F55030653C841AC36E6
        7CF69ECE1F6AB9EAED117379E8E323FC1BBDFFC3AF6034DF34FCFBE0C0F15068
        46CEDF72B457EECA43DF30EFFF288A3E9F3F0D9F8FE77270EB6D5A3E50FCD97C
        8B3FE4202527E6F250BAB79FA4DE9A7FEC827F8C83500B79FBFE159FBF4C9D3B
        EE9B87700CDD7B8A06420E76E9934BF33007FF1807A9F93065EE98CAC3542EC6
        EED367379607631CC4E60A53B510E321858BD8FFCFD1401F07FBD2C25C1EE68E
        98065238584A0B27C1C354FC210737DFA471F0AFF23074FF540D182C7D1CEC92
        0F4BF230077F8C83295AF0EF13D3428487BF93967AD26CF2FE80000000486D6B
        4246FADECAFE0000000400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000029A433A100003A8A6D6B5453789CED7D5D57DBC8B2B6
        F6ECC94C48483299D96BCEC5B961ADF7BCEB5C85AD6FCB9718636062C0DB32F9
        BAC9B2656BC2194272803093CDF27F3F55D5DDB2D46AC992B0C1CC081264ABD5
        52EBA9EAA7AAABABA58397ADABEB577DFFE4BA397DD53F38B936A69DFE766CD3
        FFD7E1C9B539310DDB31CCE99BEE7678AD4FDFB2CDEBFD76786DE8FA746F7F10
        5E371C6FDADFF1E18339EDFBC72770406B17CE11F29F69AFDBBDBA6EF5E0CFF6
        D6E0E25A5BD3465AA0BDD77ADA443B834F27DAE974FFF0004A1E41C9199418DA
        0B283DD1FE80234EA7FDF6D1084FBA7548E7DE82465B136FDA6AEF63435B07D0
        FA1036B07B386DF93B7490DFA1327F8F36AD2EED6CBDA4CDF6213FC14E87BEF7
        077450A745DF3A7DDA1CB29D7E0F1072A7AD012B1CB0B30F7C769103763EB6D9
        DFC2561E62ABF469FBC838B9F66063E269DA47166D3AB0D3848DC936166EA685
        90F90F1532DA86B6057B2FE1FB0BF8740ADBA1760125E3DBC4CCB82166C6B230
        7BCC31DBD5CE0197CFDA0728BBD426B9D8D80C9B490E36BA129B204860A3E760
        13780C1BCB2C8D8E613378860C9E2183C763F0780C1E6FEAF7DEC1554653DFE7
        DBDE11A0E60C6107FF500CC0E71CC06DED1328D7278011540B942E7E641C4C38
        31A1693A79680E0BA029695A1E9A92A60D17DB3B0942D75540E8F75AACC467DB
        38A40F39A42DEA8F275AC0017DC601F501CC10747143EBC3A72FB06F3CB7D72A
        B134427BB1FDD60A2AF6DB61D97E9B85D13AC7680FF69F93BA75A1F46C59FDB6
        841D28818DBE1C6C9EA5B0B9A1FE2CD852DE3D42EBA91E56597BE4BE55467FEE
        B86F094A6F133A1F4837183E3F707C6225F40DB56804249F8F93B9A21C64DE12
        4E03E87527E049DC579CAC85E3F44C89D3AC57DE47948C85A3F454891267F1F2
        18DDB95DCB43C86108390C21E7467AB407DBA176A57DBD979E9191F4D91D0693
        C3601A3298860C26B5479E86692D82E91318B7CB5B741A735DF0C0AE68D97406
        8DCEA0D119343A834667D0E80968D639345BC02EE760DD5BF0F70B82C4017AC8
        012AC64028D3183EAECD00A2F2B90079760E4034B68B4134BEA1676432844C86
        90CD10B21942361BF0A15813233EBC0D1AAEC08E32188A71F300D4EB0F50B22F
        6CE0978FA492A8F281349A1C4A7394377896A12C357CAE0CA6D92C06E6530EE6
        3628DC2985607E8DC20D5F39A0DF71405F038C9709181B638663438466D41D36
        CF11C5AA890E6BCEEFB0953D51D32B86608BC71F5A95F05A8B75E28FF0F993F6
        293FA0C55133ACC2831B43B7CBF39CA333D8884011B8302FDA500DB977C82C3C
        EE6019E3D2D8E513A0D0372F60C84D16E45EE879EE85B95465AB0AD0BF80D74E
        F0A80440B6C3003246926E8968A9CE300AF2880DD562BE6E910189E1E472234A
        4AB5945E29EB56446C553B681F4A47D441CF72D5CC682E56CFEE82D4E2183D8E
        30FA403E7C00080CA3B0E9F7C9184421EAE2C8905ACD75D10C33E0F0A0092C08
        8F3BE1E4859511200A9C16B39B0515ACFF0EA78C26F0A195D6AB7CCC84466D93
        AF81B49FEFF34BB8D14D294CA5845B2328AF56368F2F0FB95E59637BD1B8293A
        664B449BB9B9298F648F0CC0E5FC193409C9D02E603D43BB82020A7EE340921F
        B7781C113E5F78704870CC95131F7A2DE1CB890FFDD210577190D59E1DCD9464
        C31C98E5F535728F1D93E1CC3A7C31A08D4961FF2E02D10C9583D76DB21A5FC9
        362479B10FFB7F9B1341F3185A4D861699CA9852EA371DB8DA0C2B060DDE83C7
        8D2E8D49102C9CCB42B4CC1CB41C3E7C05F3C622204D8697CB017339622ED74D
        D6A3F1C328946694D05BEEEF91F12F0666B9816E729C4BE3AD8AE1FF223D3C8D
        6601D5B34C95EAB91C490E64168E511F17381656CA87515FC6E9E140FBAD4C2F
        2E0464316F508D247566343AA3851B6B224BEAC302C87E9C35198F66232A18B2
        43890838D132C0D0B8D4D519AA678B9D982A1837D0179390A086D34D4DB9B738
        8A7E2B3DC59E0F563C3A7C0ECCB8A11DF04F13EDBC084B96D146C39914895FA9
        7DA06582C7C257E9804131ECF6689CF2818F573E90DF73AE4C4E20A34A7D594F
        D818668A533646392C21FFA768D060B854EC8A432542ECDD08A26C4593E35281
        32BA67E60CE06663940ABEF6D2F42C6E72678EB6E8B6863749E0F91DC7F34891
        13834153F4097112DEA729C1218FC8E777D9A172BC57C010E3C02A2798100C19
        9226F76C02531AEE8DB917C81CFC393604D892E1E971403D8668C0538D028E69
        E0C916193FF4C58774D24C3FFA205CC85E9F5B9D7E5F38E47E7AF4A812C5A398
        284E68AC336F5E7658D6D4082708CDEF3C1DB6249F52D86E31CEA1EE92F2288D
        02FE37EEED7069749834086332CD5BE46110D4988D84A6DA761988463817C39F
        D443193E2B500CD54645540B996FEEA9874329F4CAB9C11E2540B555A0BAB65A
        991D3ED1E4F09926D82663FFCC19EA93EFE3FB7D0E38FF8E401B6161A01F4741
        A15BE00A6B5C882BA411634415B961ED8C2190CD874036C3D60A18B6B4B5684B
        2ACBBABC9216C80140B4498DFB4CADCB72810FB0A28B8F195117457C27316720
        E6FE8CE1E4A6737F5C731D890F92460DFD519FF2AEB3C1158A5B145C019C1146
        2E3B0128B9EE4F387EAF490D273CBC41099E15DCF790E31826710C870BA2D59B
        BA516A4A3555C321E608C48D57340A92A762E663F830F24C8BE43048F3A79133
        5A6CAE1E433D25C741516727AEB8517848997E1CC5E166637472F0C587FE514C
        5F75A6AF52166D718C8B0DDE4D4F1982A351D302111663774BC4DF9CE200ABFD
        584BA5AC947A9C959CAC8A7DF4392D7ED23E4ADD9C6593E4D3A5A5C24E9A0553
        8E952CBDB89527B54FF7F2913D3F161771A5148B433D27F4D8078B7D60761EDC
        7D66E7F103F9A1AECE0C3D999EBE5055E65215C354CCF577D09552218A371333
        EE8237CB58F7DCB50684A12AC6A9B63F1C534B8569E0A91DA7261F58357958AE
        E9323F94DC2311326ACDDC2511429246F6F315F32D0D4FF3ED4FB253179ABE28
        8463523347CA0C27C9FB54DA9F2C239E15244E4E0471D8C88C17864FF89AB86E
        E34C0B31EB041709A960341CAE8E6E521D8725ACB8ABE4465DC58D2C205C250F
        4A306372E58BC9A991B6166D59BF75B94991ED763668330FF27FA1EB0E691C94
        4F894ED549ED12C6848D7762A3C912B3B6A09D4A4AC4FD1DBEBFC3F647DD970C
        7583DBE9066345D18D8914F7D8B048954F760CF89D91ADFE423EB8F0CD1F7064
        2DAD5D618AAC512417AF488CC94A9AE7A406C2BD2AC691C5C63AA6A7189EEF31
        CFA70C4E3F739C5ED1B83BA09CFC0B5AE387514D5C72B541B3BAB89E213FAB40
        19AE6373E44591B4E62319248D35F93BE9384729282DEE975B3CC11AB6448A7C
        9A82C73D98BDE68626E151920AC706EC5E72BC9E9108992590F588473F504A02
        465527A96417197CB76A90C9281E548EBC78CB2D3FD326BCF8798B08F78453B9
        97762AE741F768D6E7416B77C96BFF3DBFF72B3DCC62A9B842698DF9863C507A
        98C644E50D19B7DAFD9F479EE329A5A6958D2CAB63F437C78F125E62A1E5A172
        242E102C12CF90FD492582A29FF7A3F870DA0D2F0A69C49ACB873435DBAB2452
        ABE925C3F5A1D22AA943C6D2BC79A0564B95932EAF0B9E05EAB9998F073919FA
        70830D87F99F6E39F09F4483F34F34BEFC00C0F394A47C2258DCBAA03CEBE529
        D35231461043DC2C1396CB2202E6C8FB6967741E824F6308FE41018E0D0A8694
        C690D2B44A24E44738DAF35DFACA4F47409FBD8019A21852D050E479D0AC31ED
        101F84ADEFF15113DE229B528A0DA3E4707251537604FB2FC9159BB79C7411A6
        CC293E2722117173FE9854E4DA4883A93C4336ED74DB57D79D789E70C8475213
        D85ED278EA578008B9F53C52E090677CA98E392E700C87B9C3EEB3C3FA7687DD
        5F6787B4B0D36FD321FD3E2BDBC31BEAF86F68B31BB5F7399C3D889E0631E61E
        F565ECE106171171057C5E11DB1068BF41A713CF8EE8ECBE02140EB7E9FABBFB
        F079B7878F44E9B0279EE8F4338D1519A2883F0C05CBDE62997EF3F318154F21
        8AF04721511636B8A4F1C7B9C04B92A8FA98E302C75493A8C5246A18B548CB88
        F47B2ED21605342EA2F05A18E50EE2DE63E5DE6A820A98A0825A4E65E4F490CB
        C927444E62EB3D994C0E09A58F64958E334BAA494C6712D3130D5AE30DE24F4F
        8871BAB870BCE438B3A45A934CD624B356A2324AF438E2EF139A2B4BDAE2B5C8
        CE32F4D2AA142FB9114B5BB5DCCAC8ED51C2EEA29B1F773EE3B654941DE79455
        939CCD2467D7922B23B9275C723B7CA5DC677A165B5C7E4FB88C54471CCF3DA2
        9A2C9B4C96CD5A966564B9CE65898BB4475A9BEEF80345884430388C167127CB
        8FE7945793A2C1ED326EDB46ACE19DB699F86625BED9896F839164D7678EC690
        F46CB60C22E4B35F62FF71C6FE6A77E3B09B716A9DACE216F6C8A30A624FB908
        795C53EC3FCED85F4D5A0D26AD462DAD2AD2EA1022E3080F2195D9FEE38CFDD5
        A4E5316979B5B4CA484B8C70FA6473D933BD644F7956227BCAB3926A321B3399
        8D6B9955E961AF29A37292EA61B3FDC719FBAB496BC2A435A9A555655CD39BCD
        B645FEC6A3C852C5CB8E73CAAA492E6492C3FBDBA500761501FE1013E01738AA
        4F4B24DE523E009BD89E89D15262D7D4F59119C74EDF746602C8934D40C04A32
        5ED64516A00095007E2E011C8356ECCB827873D688916E0E8759F73F0EA13859
        D8946BE6C2BCE00BDD15D4429777289F85E6B928D3609712DEA0560C6857D536
        53B78264DBF44DD313A5C6A8D93046C9523B02C798D8217C4B94BAA2D01D4E02
        DD4816369CEC131B728B64F1DDBFE6DF9552FC952C5425809E7280B064447DE6
        9296C8C9D4A454395DB73C6CBF5AE574DD6C0E1B592A0794EECA75DDBCAA8D9C
        AA86DCA2423D66A59B7F570AF18C2B04730522F29C67ADB2CD71CC84E83AFECF
        6CB64A70CBBAC85DC38BA9B09F28EBF2523BE20BFB7E9D4F4A66531F3ACD0C32
        69288DC50DCE73D7AC1D71F58CBFE701242835AF5545002A769EBB02682DC6DA
        385CC760EC0C185BD59A66C3760DC9B7B3A2BB1D8DBD40B2FF5E54EA06E6C470
        95373209C7A3609CC6F46E9A7057E278C4C5117B321994CD319E7053AEEB266F
        78667D3CDDD365FB32B33EAE2B6B67CCFA60C58654D8888D97B07A56CF877F05
        8DE74A37FFAE158119CFB4C9CCA09AECF6F0916F41CA2A729EBBA62C9F9E4D7A
        25519652C59A56131A9EA562B689BF592A367246D6C8C85031D74DEBEE4CC5C6
        13FC5582806AED151D90AD74F3EF4A0D1E476AF099A745E223BA3FCE27CBB4C7
        67C60B5364336BB039CC71D4655F118C4E9C6A32076E6A57E29EB57D1161D19D
        4EFBEA7AA713CB1C98902AEC53D23106625AF0F78A9ED62992F426D17290A176
        39DDE9F957D7EDED1DFCF3925464470B697127AAC7013D8C685F6B4FDBDBAFA0
        F4FF6BD75A834A5DCD805F5D33B517F039803DF809F78DE96D721EEC6B40894E
        BF0E1DD980BF0694E037687CECAA6BB3766A03ED2BAA27BFE2DF343D71E4A3D8
        91AF6939CBA5F6811FFB0DB6483A7AF658AA2D72F24FA333FF1D8EB634476A87
        4F5D06BB477E3B1ED3B3C14EB9871C75357EF4F7DAFF2314F9AF54D3A7855F63
        8A43AA6AEAB35FE96EB026D63AD246DAFF3019F17A0FE03A1840B8801627AFD6
        A204F34BCAE6F12913FA32F3AED6C49AAA14B6F2914F62C8B6F9137D86343B1C
        C757BE8367317C0F2893EC92BFF9E6846C92B89621D56249F2097D5622370614
        54C83DA58711FCCE47D2D803C6A9FA6B49E4413742E98EF748DAF96788493D75
        8667141EC5E75A5FC06F87C65469DD91DB91C630DE43F7E14C6C65E7097FD312
        3BCBB79CDC27D23D24F13BE3CFB5B988F4E81BE8A58E546707EEF557EA111FD8
        FA65D2C2536D9CA91B515F8BDE987546F52EA21A56A2C63A3D32EE42FB2DF3F8
        E4159E477ACA34FA3C530BE59AFF0D12F80D90EA50EF9DD038F79CF7E223A879
        0ABD9E3DB7EA23E8E52742E71CF6C5313F86E30FD9D24D7E95C731C6DD88712E
        51740576EE53A6C5AF353B176667A766E79A9D6B76AED97989ECFC2367671FCE
        2D169FB2E36944ADB11767D59C5D94B3CD9AB36BCEAE39BBE6EC2572F65AE451
        7FA1EBA13C6B862ECAD06ECDD03543D70C5D33F42D3074CCABAE19BA30431B35
        43D70C5D3374CDD04B64E8479CA1DF51DF7A07D7F815C6EE354717E568BBE6E8
        9AA36B8EAE39FA16BCE81847D70C5D98A1AD9AA16B86AE19BA66E81B33B4429B
        EF6DE69DB122EC5C67DED5EC5CB373CDCE6A769E69E822D8F9FE64DEAD0A3BD7
        9977353BD7EC5CB3F332D9F9CF9279B72A9C5D67DED59C5D7376CDD9CBE4ECFB
        9979B72A0C5D67DED50C5D3374CDD0B7C1D0F72BF36E5518BACEBCAB19BA66E8
        9AA197C9D0F735F36E5538BACEBCAB39BAE6E89AA36FC38BBE5F9977ABC2D075
        E65DCDD03543D70C7D73866EC351D807623C20E57670142AB0F310E4D7D46CF8
        1DC35D7A0B61E77CC692F5D59522C24F13B5D55242E63617A6E58F12579C97C9
        1D3F963D8A75C6435E0E0E697B62C15D38B7A26D428336123A5456DB9E716D9B
        BDF5E07DE2A8FBA87D43498F8A68DFDFB4C60AEA9E3C22BC4FBAF794EB5EDCDE
        C9DEE843AE7D981B015ECBBDC833B624F965FBA272E6429D655C7BA2F7DD1335
        2489FE353DD164BF5E354F747DC6A7C0D03129DF80A1F1BDE827D49F579FA165
        D6AD19BA66E8BF0E43D7B182D567E827333ED5C6B91CFD2CD1FB37A8B5EC5585
        A789519C4F089F5059BCC626FE56E0EC118CE174286D12F74E88B36DEA2F82B3
        71643784DF10785A8CBBF0680FBE87A01563383EC9D9FF09576A015A2161C9FA
        E77B40ED9C740C7BF4EFF0FD32421A75F4DF11660FE8CA1BF83771D687DAB860
        3CE181369438FD1B68A3231D13CCE9A572FF5A8E86CC9368152D7994581B2ACA
        CAEB8649AFFFF340C68030B0D60B92396A81D00DDC3722ED1847ACE491071092
        16A15597ED79B625B12BB2FB5D31A22BE9D47CB6B2579AADD47A534503D71367
        BA599CC9E1BE62485E22FA920DF8B5E1F8EA5A5836CEE4485E431D675AFC3846
        A52D49DD5B87368EC1BFFD42786FC4E4C6B4EE67B8DFF3C8FBE47D4FFBA7DC7F
        2BDB4A0BB4C902DB3722FD62FAD7048D34129A88E563388B4EF61435B6491EEF
        986CA63CBE598EAD7C0E6D4823F19E50FF04F89D452C26EBCF33B28B71B48AD4
        5A8E5E949367395DF92EBE4EAB822E8C41AE0EE883C1E5FB82D8690CAC238F75
        BD8845501790B7C6F05F274DBA0D5D588E6C92F895C37E0DC688C2B65E54EE8D
        C8EB3694878432B30B06DCA7A3908079A712F8018EC3FE734EE3BAF7DCE6BF07
        BD16AF21CF9AF94CD6FBC0FB42BAE6DF491B9DDCABCE6A8F34F612C2ECBA4F33
        5A7C0E6718653247D6F5E2B554575B27BE645C53E44A4F62C717BF4AF63D4D32
        47AC79F734AB55FC9EB2AF94754FF95779AAB8CA3CAD7AA6BC52118D92D11057
        4CEA53DE9D15ABF154D9C2F95ABB064722477D84BFB20619B947C6E52267D0C7
        8F4C632B672CC58F96EFF2367859C5ADE5D8F931947FA1B8E046FC5C37666823
        6268BB66E89AA16B86AE19FA2FC9D059FC5AD687DE26395F911C1633A29D4423
        5A6BE546B4EB33C9D2D93E69273406BC98EEF600B4DDDEE0EAFA4D771B5F56FB
        966DA6B37DA6E3B0BDF8612AE90369E1C2CF89F1FE459EF3B1D0D5859E75593E
        485A37CB69F7A3D86BA23778EB4E2B7920631AA50FB93F81331926E5AD256387
        A8F3C3C48C34CDD25166DB44D2EF9B44F21E64CE08ABE2D7DF830C3ED36C204A
        E46BC4ABE9F9D3B5D8EC23C66AC6B71E3956C9AB9CCC9F6B7BA4DFFFD47C9A8B
        FE42D7469EC068CF62186E1C319CB9720C87BE64FABE8B44DF7EA0F9A3F2B1BE
        75A8714AC7467361524BD5B9038FA01E63A2BB8A0C16D195A4F63D80ABE1F399
        26318EE9108BB2795936935D659413523E8B0E1A838C81239A90E64767F3133A
        8D729049EE7694B3ACBEAFC2711EFA3FF028AE7852D606F788B6A0159F7106A0
        D27C25CAC0A45E3BA41E1EC0D6A619ECF878D3A1B9A162F947F74912F3314D4A
        E5DB687E88C964F6BD4A2F30A02CA471871D8DF5854FB94A63FDE5603FC32E1F
        E3A7941182990CC8AC1BA2F4065170C4DDA2B93A9B74DEA4F3A3CEDB3437E590
        D783E8A2741C286B9255444984847C702BB8FF48488A3B1763AF73A515F9065A
        98B4233F65D6FE5FD80EB5D3848FF40DEAD82D483D5F9AF33401E5296CD6CD35
        C101CC3CE23117EED3253B14F219299BFA62489A6090C41DCAFBC16C4D1C5379
        74C430E5EB2ECBD3F918BBF3A426C8793B4D498EFFC8AC9B9D1D743B9A9027CD
        7C4D58D7DE69F8A49B8F0BD082265F8F83727723DFD6241EC6B53A23D202D413
        97C64523D28090464A2679C3680D6F27E6FA6F7ED765B9E0B9B2E65DF240B604
        F325BF161DBD41D23CAF94779DB4BDE65FCEF6AA50CCC7FD076D17CEF085464A
        27C4188BB0C4F1D90E3D9AEDB0564E0AFFA01868FCEEE3FD48D8D92F51DEDA8F
        D0C64D1AE164FFBAB7E2DFCE935A52EADFF35CA273CA2B3F8BD836B1F7463DCF
        A0ACD89022DD2C0BA449ECDB48C95CE4A6FDB97A5E36964524F10CCE784659E3
        AC6423CA9FACDA07934C68AF3013FE44366E76EFEF6946E282D6E52EA207E69D
        5F65631DC94EFE9C53FFB260BEFFB232A6F3B5A688E6C97BCB6B5A40FA83711E
        CC9266511FB6AE291DF569FC097BBE8CA01CEF39A4390A8C1C0AD6DD221F7363
        5652B9974F08459DB27B4714670B085F8B7CDC80DB5CFCEBD05A2E91B58E9EED
        84FC631C0BDF8E8F3BA4BB7E0F388BBB2ED6FF7E52D6FCC2B7F2DA85AC48EDB2
        583F4B9672DF63EB0E93B9E1E2B9177BD4E24FF7609D61326BBA7EE3D45DAD34
        4CCAA15E69F8675D69E8A6F253E6AF3434A41AF3561A6264A0ECEA9DE4F16556
        EF78B7C0CADF66ACD851B3B0783EDC219D1F7DBB2AF3EB3513FF3599585E095C
        33F19F9589CBAFF95E3E13A757FCAEDA4ACA2C2EFE0E903E25DF7F0C7723F25E
        B0A5EC6CE7A44DA8091B8923ABAD4F9AD04A4917463B013133CEFACD329F3C1A
        23E11C50538BAFEBC6FF211D7B3BB341CBCA10998F6A921B83A8243DBE423E11
        71164B7A46C11A69EAD79C5AD80AD816D085EF6E28F590A2CF368F35067CCEA7
        19CBB867ABF975D08BBB5DCDBFAC5569AB235FB4ED9FA9A56C765864C589B5AA
        3D62CE4BB2001F34F69435B4A357A4A7F1FBACA20918F39C906711928F8591E9
        09D5109A30244DC095D42EE5C6E9E49731BD694209CE1F2E2EF3F15BEA8F41CC
        B6DCCEBC6C399CF1E7C007114E7B5B83ABEBD676F7E43AE43FD30EFBD6A49F69
        A71749FA21C5FEDECF9EE410F9D861CAC73ECE2CE9B78F46D7FAB433689DE066
        A7431BFFE0E4DA846F83936B63DAE9B7E9907E9F95EDB1CD1BDC4C076F5A57D7
        ECC20FC0FC203C27DA19DCCECBABEBD73D38C6D3A77B7C3BF0DFC1F974F8B00F
        7731D86F9F5C37C2B11DEA08C0E04D6731279AEEBCE95D5D770E06D8BEED2E35
        BAD7A53BE96D11C8DD43B6AFCF4ED21BF0EF808431DDEA75D9C6C79BDEDADAA6
        6F5B6DDAF8709A091CD9C60ABB5DBAC42FBD7F9D5C3BB8F5D9D723B6E961FDDD
        CE3E6E7EF1F198216C77D8D7019EEE17BF45C0767B84E821366ED7EFE2BEAE7F
        8C9B36DB747D92C0B67F80D576B67DBC99C3B73E7EEBFAF46D6F708027D91B30
        12681351A24AFE4E5B4ACE9ABEE95013DF1C50FB077D3A1DD4C4CD9BF6169DBC
        F3064EA04D0F0FECAB6BF87372ED4E6913B28DC136BAB4816D078F07F571A6B4
        01E2DD39DCC6ED60AB4B97EBBDA68B6343A1F0E0102A1C1CB6E96AD3FD0382AB
        B7DF651BDCFD5FD0660C724F28EC176A214FA40EB98971813E86FC313101B918
        2CB1C0A644049BE8A4892607303A0068F7BB0CDAB7807377EB2D74B497BBB8E3
        B84F12EFF23EF29A2E8BBD7508FD1C61EB76E9060E7C3AEE609B4ED3DE27F8B7
        BBD82177F094DB2F71FF4E17AF359DBEDA87FB7BC50E9A4E53D7D3F9F5BE9F5D
        07AE6924AEA5B36B19F9D7EA0DF6A21D65F8E309E78F1DB40F3406BA24AE1CC6
        DEB8A12A3BCE29ABC6264DC626B0D98D5AF71CCEC8E207625E6A42638559C6B7
        F05E9EC071C967CCBEA6D54138C6ECECBE022A403584EBEFEEC3E7DD1EAE53E8
        EC6E3388820008205EB4D96C98F0238E088266138F80EF6FF1107D61A733F2CE
        A4D34FDE99C4118C3A578E835BFD1E11EE80C9FC688032EF1FE2414D733C1C4E
        07476FC2EB17A6051FDEC207C399F6B63BA8E43D1F0A2C67D3F26CD768C05728
        B69AD6A6ABBB76C39DF676A0D86C6CBA4DD3D23DF80AC55EC3DAB40CDB6A9AD3
        5E074F4BACDE8112A3D1DCF49ABADD80921634B3D702D3B0EF13A7B7FC2E22DE
        EB019E3614A716B350733DD79A1EFAED906EB5F50ECED17A47ACD6DA7A47FD7C
        56118F48563559D586E315AD8A87F2CA46D1EBA6ABEAF9D785CADB0806720107
        83500019A497F4F4FA3E3462FA6A07D1DA344C67DA3EA6AE1BC1737448A78855
        8E2131AFBA99571D6F60DE090CC5094A54D7B3AB97B977A8DE87AEBA641D3E18
        BC019BA9EBB073D3C193C32EDDC0961EE8266D0C9D6D0C7648C381361F18ACCC
        84B217A255B0DB34A8076EEAAEE979F0D5C47B9DF6B701867EDBC72ADDCE001A
        8A7D141808AAF4F7E13B1CDB3A82AD034D07577AB0053AB573D4E13048766FBA
        DB6F5F5DEF6267076708BB3A6C081D17B66FD9965928977EA0461B461DBB6DB2
        7FBBED978CECF03F7CDB430FA9FD0AB5F8C8271B73E46F91FFD16B6FC365FB3E
        9A9157FD036669B6639BFEBFC0CB3327A6613B86394DCAF9F53EEF687B7883D4
        9176000040BCEF1FE3E95B82E0C9A4F6D00EB76696748DE683DF83CFCF46FC27
        310B3A22DB84F1E81EECFF03E35EC24AB6B6C8EF6C6D41A3AD09A0DADEA75E7A
        7080DE56EB00760F81A576E8209F5CAA169A4BD8B4C84968B55ED266FB909F80
        D9DB569F48B7D521805A1DD2D8D621DBE9032F37DD698B59E8D6809D7DE0B38B
        1CB0F3B1CDFE16B6F2105B05EECE91011A0F1B134FD33EB268D331D080B53B26
        DB58B8991642E63F54C8D0AA8133F2275ED0FA81138AC8E12ADC5BC4CCB82166
        C6B2307BCC316396F973E4E5E46163336C2639D8E84A6C8220818D9E834DE031
        6C2CB3343A86CDE0193278860C1E8FC1E33178BCA9DF035F23184D7D9F6F718C
        65C278CAF7F98762003EE700CE9C48F680CCF8917130E1C484A6E9E4A1392C80
        A6A46979684A9A365C6CEF24088166D310FABD162BF1D9360EE9430E698BFA23
        78FB512E1D035444CC37B43ECF3119CFEDB54A2C8DD05E6CBFB5828AFD7658B6
        DF6661B4CE31DAA3C8D198C781CE96D56F4BD88112D8E8CBC1E6590A9B1BEACF
        822DE5DD23B49EEA6195B547EE5B65F4E78EFB96A0F436A1F3817443E4D4337C
        6225F40DB588C587F37032579483CC5BC26940B1EECFF716276BE1383D53E234
        EB95F7112563E1283D55A2C459BC3C46776ED7F2107218420E43C8B9911EEDF1
        60FCD77BE91919499FDD6130390CA6218369C860527BE46998D622983E518AD0
        ED398DB92E786057B46C3A834667D0E80C1A9D41A33368F40434EB1C9A2D6017
        F666BF73CAB7FE10BD2165C4A3DB451808651AC3C7B51940543E1720CFCE0188
        C6763188C637F48C4C8690C910B219423643C866033E146B62C487B741C315D8
        510643316EC659DC3F34F6DC8E798A6629892A1F48A3C9A1344779836719CA52
        C3E7CA609ACD62603EE5606E53FA007BC48B08377C8D124618A03855769980B1
        31663836446846DD61F31C51AC9AE8B0E6FC0E5BD91335BD6208B678FCA15509
        AFB5582766E9779FF2035A1C35C32A3CB83174BB3CCF393A838D0814810BF3A2
        0DD5907B87CCC2E30E96312E8D5D3E010A7DF30286DC6441EE859EE75E984B55
        B6AA00FD0B788DE5FAC401B21D06903192744B444B75865190476CA816F3758B
        0C480C27971B5152AAA5F44A59B72262ABDA41FB9455841DF42C57CD8CE662F5
        EC2E482D8ED1E30823B6BA2EA0DCAED368ED5422065188BA3832A456735D34C3
        0C383C68020BC2E34E38796165048802A7C5EC664105EBBFC329A3097C68A5F5
        2A1F33A151DB51224EBECF2FE14637A53095126E8DA0BC5AD93CBE3CE47A658D
        ED45E3A6E8982D116DE6E6A63C923D96253E7F064D4232B40B58CFD0AEA08082
        DF3890E4C72D1E4784CF171E1C121C73E5C4875E4BF872E243BF34C4551C64B5
        67473325D9300766797D8DDC63C76438B30E5F0C686352D8BF8B403443E5E075
        9BACC657B20D495EC4A731FD362782E631B49A0C2D329531A5D46F3A70B51956
        0C1ABC078F1B5D1A9320583897C512B1B2D172F8F015CC1B8B8034195E2E07CC
        E588B95C37598FC60FA3509A51426FB9BF47C6BF1898E506BAC9712E8DB72A86
        FF8BF4F0349A0554CF3255AAE7722439905938467D5CE05858291F467DF903A5
        E5FD56A6171702B29837A846923A331A9DD1C28D359125F56101643FCE9A8C47
        B311150CD9A144049C681960685CEAEA0CD5B3C54E4C158C1BE88B494850C3E9
        A6A6DC5B1C45BF959E62CF072B1E1D3E076664CFCAC04F984D5B8025CB68A3E1
        4C8AC4AFD43ED032C163E1AB74C0A018767B7C6DE3EC19BB32762239818C2AF5
        653D616398294ED918E5B084FC9FA24183E152B12B0E9508B1CF9681662B9A1C
        970A94D13D336700371BA354F0B597A66771933B73B445B735BC4902CFEF389E
        478A9C180C9A7EA254EB0D5A42744ACB74D36A2777D9A172BC57C010E3C02A27
        98100C199226F76C02531AEE8DB917C81CFC393604D892E1E971403D8668C053
        8D028E69E0C916193FF4C58774D24C3FFA205CC85E9F5B1DCC70670EB99F1E3D
        AA44F128260AB68A74DEBCECB0ACA9114E109ADF793A6C493EA5B0DD629C43DD
        25E5511A05FC6FDCDBE1D2E8306910C6649AB7C8C320A8311B094DB5ED32108D
        702E863FA987327C56A018AA8D8AA81632DFDC530F8752E89573833D4A806AAB
        40756DB5323B7CA2C9E1334DB04DC6FE9933D427DFC7F7FB1C70FE1D8136C2C2
        403F8E8242B7C015D6B810574823C6882A72C3DA1943209B0F816C86AD15306C
        696BD19654967579252D90038068931AF7995A97E5029FAF8F3FA3B5A5057C27
        316720E6FE8CE1E4A6737F5C731D890F92460DFD519FF2AEB3C1158A5B145C01
        9C11462E3B0128B9EE4F387EAFD99325787823FE968732EE7BC8710C933886C3
        05D1EA4DDD2835A59AAAE1107304E2C62B1A05C95331F3317C1879A6457218A4
        F9D3C8192D36578FA19E92E3A0A8B31357DC283CA44C3F8EE270B3313A39F8E2
        43FF28A6AF3AD357298BB638C6C506EFA6A70CC1D1A86981088BB1BB25E26F4E
        7180D57EACA552564A3DCE4A4E56C53EFA9C163F691FA56ECEB249F2E9D25261
        27CD8229C74A965EDCCA93DAA77BF9C89E1F8B8BB8528AC5A19E137AEC83C53E
        303B0FEE3EB3F3F881FC505767869E4C4F5FA82A73A98A612AE6FA3BF4206305
        A2783331E32E78B38C75CF5D6B4018AA629C6AFBC331B55498069EDA716AF281
        559387E59A2EF343C93D1221A3D6CC5D12212469643F5F31DFD2F034DFFE243B
        75A1E98B4238263573A4CC7092BC4FA5FDC932E25941E2E44410878DCC7861F8
        84AFC91E18840F4E406FF34405A3E170757493EA382C61C55D2537EA2A6E6401
        E12A79508219932B5F4C4E8DB4B568CBFAADCB4D8A6CB7B3419B7990EC19F5F4
        DCA45CCD73AA4E6A9730266CBC131B4D9698B505ED545222EEEFF0FD1DB63FEA
        BE64A81BDC4E37182B8A6E4CA4B8C78645AA7C327CE2EF99367BD393F0CD1F70
        642DAD5D618AAC512417AF488CC94A9AE7A406C2BD2AC691C5C63AA6A7189EEF
        31CFA70C4E3F739CD8F35A02CAC9BFE06F0662EBF937685697DE2A5862BA4764
        9199451C1D81A4351FC92069ACC9DF49C7394A416971BFDCE209D6B02552E4D3
        143CEEC1EC353734098F9254383660F792E3F58C44C82C81AC473CFA813DAE86
        1E792327BBC8E0BB55834C46F1A072E4C55B6EF99936E1C5CF5B44B8279CCABD
        B453390FBA47B33E0F5A2B9EB396DBFB951E66B1545CA1B4C67C431E283D4C63
        A2F2868C5BEDFECF23CFF19452D3CA4696D531FA9BE347092FB1D0F250391217
        08168967C8FEA41241D1CFFB517C38ED8617853462CDE5439A9AED5512A9D5F4
        92E1FA506995D4216369DE3C50ABA5CA4997D705CF02F5DCCCC7839C0C7DB8C1
        86C3FC4FB71CF84FA2C1F9271A5F7EA0D7A45ECC5D826D2C6E5D509EF5F29469
        A9182388216E9609CB65110173E4FDB4333A0FC1A73104FFA000C70605434A63
        48695A2512F2231CEDF92E7DE5A723A0CF5EC00C510C296828F23C68D6987688
        0FC2D6F7F8A8096F914D29C586517238B9A829638FB43D2DB09C7411A6CC293E
        2722117173FE9854E4DA4883A93C4336ED74DB57D7B1E7613DE5CFC3EAF3E7F2
        B1B7C27D216E9DBD3D2FE4195FAA638E0B1C53ED095943F684ACE1AD3F212BFD
        202A63F6B42B7A184AB14763153B4FC9676219AA876129242A9E33FC893A02C7
        4B92A8FA98E302C75493A8C5246A18B548CB88F47B2ED21605342EA2F05A18E5
        0EE2DE63E5DE6A820A98A0825A4E65E4B41A0F27EDC4E364AC41FCE909314E17
        178E971C6796546B92C99A64D64A5446891E47FC7D427365495BBC16D9D9E85D
        B892DCE225376269AB965B19B93D4AD85DF999A2715B2A3F535455564D723693
        9C5D4BAE8CE4E63F13F6099751F69361F38EB867CF87BDD7B25CE7B264CF336E
        D31D7FA00891080687D122EE64F9F19CF26A5234B85DC66DDB8835BCD33613DF
        ACC4373BF18D9E23AB763486A467B36510219FFD12FB8F33F657BB1B87DD8C53
        EB6415B7B0471E55107BCA45C8E39A62FF71C6FE6AD26A3069356A6955915687
        BD6B27C2434865B6FF38637F3569794C5A5E2DAD32D212239C3ED95CF64C2FD9
        539E95C89EF2ACA49ACCC64C66E35A66557AD86B8DBDA241EE61B3FDC719FBAB
        496BC2A435A9A555655CD39BCDB645FEC6A3C852C5CB8E73CAAA492E6492C3FB
        DBA500761501FE1013E01738AA4F4B24DE523E009BD89E89D15262D7D4F59199
        7C3F813313409E6C02D5EB1496759105284025809F4B00C7A015FBB220DE9C35
        62A49BC361D6FD8F432896DE1021D7CC8579C117BA2BA8852EEF503E0BCD7351
        A6C12E25BCE14BC26740BBAAB699BA957A6B87E9895263D46C18A364A91D8163
        4CEC10BE254A5D51E80E27816E240B1B4EF6890DB945B2F8EE5FF3EF4A29FE4A
        16AA12404F39405832A23E73494BE4646A52AA9CAE5B1EB65FAD72BA6E36878D
        2C95034A77E5BA6E5ED5464E55436E51A11EB3D2CDBF2B8578C61582B9021179
        CEB356D9E6386642F8EB3BB29AAD12DCB22E72D7F0622AEC27CABABCD48EF8C2
        BE5FE79392D9D4874E33834C1A4A637183F3DC356B475C3DE3EF7900094ACD6B
        55B157781539CF5D01B41663EDCFF49ACFF31830B6AA35CD86ED1A926F674577
        3B1A7B8164FFBDA8D40DCC89E12A6F64128E47C1388DE9DD34E1AEC4F1888B23
        F66432289B633CD98B8EB2AC8FA77BBA6C5F66D6C77565ED8C591FACD8900A1B
        B1F11256CFEAF9F0AFA0F15CE9E6DFB52230E3993699195493DD1E3EF22D4859
        45CE73D794E5D3B349AF24CA52AA58D36A42C3B354CC36F1374BC546CEC81A19
        192A26DE30A656B1F1047F9520A05A7B4507642BDDFCBB5283C7911A7CE66991
        F888EE8FF3C932EDF199F1C214D9CC1A6C0E731C75D95704A313A79ACC819BDA
        95B8676D5F445874A7D3BEBA8EBD77FC0989F5BDB64F49C71888696913EAEFB3
        A7C84EA2E52043EDB2C2DBC51B54EAD29BC4F1ADE12FE073007BCCE8EDE2F836
        390FF635E8EDE2F8EBD0910DF86B40097E9B4AEF598FDAA90DB4AFA89EFC8A7F
        93DE14FE2876E46B5ACE72A97DC87CAFF8A3D863A9B6C8C99FBDABFCEF70B4A5
        39523B7CEA32D83DF2DBF1989E0D76CA3DE4A8ABC5DE0E1FCE7EA59A3E2DFC1A
        531C5255539FFD4A77E3D35BCC7F8741CB48FB1F26235EEF015C07030817D2BB
        D71F035E5F28DE8DD93C3E65425F66DED59A585395C2563EF2490CD9367FA2CF
        906687E3F8CA77F02C86EF0165925DF237DF9C904D12D732A45A2C493EA1CF4A
        E4F005D52AE49ED2C3087EE72369EC01E354FDB524F2A01BA174C77B24EDFC33
        C4A49E3AC3330A8FE273AD2FE0B74363AAB4EEC8ED486318EFA1FB7026B6B2F3
        84BF69899DE55B4EEE13E91E92F89DF1E7DA5C447AF40DF45247AAB303F7FA2B
        F5880F6CFD3269E1A936CED48DA8AF456FCC3AA37A17510D2B51639D1E1977A1
        FD96797CF20ACF233D651A7D9EA98572CDFF0609FC064875A8F74E689C7BCE7B
        F111D43C855ECF9E5BF511F4F213A1730EFBE2981FC3F1876CE926BFCAE318E3
        6EC4389728BA023BF729D3E2D79A9D0BB3B353B373CDCE353BD7ECBC4476FE91
        B3B30FE7168B4FD9F134A2D6D88BB36ACE2ECAD966CDD93567D79C5D73F61239
        7B2DF2A8BFD0F5509E3543176568B766E89AA16B86AE19FA16183AE655D70C5D
        98A18D9AA16B86AE19BA66E82532F423CED0EFA86FBD836BFC0A63F79AA38B72
        B45D7374CDD13547D71C7D0B5E748CA36B862ECCD056CDD03543D70C5D33F48D
        195AA1CDF736F3CE581176AE33EF6A76AED9B96667353BCF347411EC7C7F32EF
        56859DEBCCBB9A9D6B76AED97999ECFC67C9BC5B15CEAE33EF6ACEAE39BBE6EC
        6572F6FDCCBC5B1586AE33EF6A86AE19BA66E8DB60E8FB9579B72A0C5D67DED5
        0C5D3374CDD0CB64E8FB9A79B72A1C5D67DED51C5D7374CDD1B7E145DFAFCCBB
        5561E83AF3AE66E89AA16B86BE3943B7E128EC03311E90723B380A15D87908F2
        6B6A36FC8EE12EBD85B0733E63C9FAEA4A11E1A789DA6A2921739B0BD3F24789
        2BCECBE48E1FCB1EC53AE3212F0787B43DB1E02E9C5BD136A1411B091D2AAB6D
        CFB8B6CDDE7AF03E71D47DD4BEA1A44745B4EF6F5A6305754F1E11DE27DD7BCA
        752F6EEF646FF421D73ECC8D00AFE55EE4195B92FCB27D513973A1CE32AE3DD1
        FBEE891A9244FF9A9E68B25FAF9A27BA3EE35360E898946FC0D0F85EF413EACF
        ABCFD032EBD60C5D33F45F87A1EB58C1EA33F493199F6AE35C8E7E96E8FD1BD4
        5AF6AAC2D3C428CE27844FA82C5E63137F2B70F608C6703A9436897B27C4D936
        F517C1D938B21BC26F083C2DC65D78B407DF43D08A311C9FE4ECFF842BB500AD
        90B064FDF33DA0764E3A863DFA77F87E19218D3AFAEF08B30774E50DFC9B38EB
        436D5C309EF0401B4A9CFE0DB4D1918E09E6F452B97F2D4743E649B48A963C4A
        AC0D1565E575C3A4D7FF792063401858EB05C91CB540E806EE1B91768C2356F2
        C80308498BD0AACBF63CDB92D815D9FDAE18D195746A3E5BD92BCD566ABDA9A2
        81EB8933DD2CCEE4705F31242F117DC906FCDA707C752D2C1B677224AFA18E33
        2D7E1CA3D296A4EEAD431BC7E0DF7E21BC376272635AF733DCEF79E47DF2BEA7
        FD53EEBF956DA505DA6481ED1B917E31FD6B82461A094DC4F2319C45277B8A1A
        DB248F774C36531EDF2CC7563E8736A491784FA87F02FCCE221693F5E719D9C5
        385A456A2D472FCAC9B39CAE7C175FA7554117C6205707F4C1E0F27D41EC3406
        D691C7BA5EC422A80BC85B63F8AF9326DD862E2C473649FCCA61BF066344615B
        2F2AF746E4751BCA434299D90503EED35148C0BC5309FC00C761FF39A771DD7B
        6EF3DF835E8BD79067CD7C26EB7DE07D215DF3EFA48D4EEE5567B5471A7B0961
        76DDA7192D3E87338C329923EB7AF15AAAABAD135F32AE2972A527B1E38B5F25
        FB9E269923D6BC7B9AD52A7E4FD957CABAA7FCAB3C555C659E563D535EA98846
        C968882B26F529EFCE8AD578AA6CE17CAD5D832391A33EC25F59838CDC23E372
        9133E8E347A6B1953396E247CB77791BBCACE2D672ECFC18CABF505C70237EAE
        1B33B41131B45D3374CDD03543D70CFD9764E82C7E2DEB436F939CAF480E8B19
        D14EA211ADB57223DAF59964E96C9FB4131A035E4C777B00DA6E6F7075FDA6BB
        8D2FAB7DCB36D3D93ED371D85EFC3095F481B470E1E7C478FF22CFF958E8EA42
        CFBA2C1F24AD9BE5B4FB51EC35D11BBC75A7953C90318DD287DC9FC0990C93F2
        D692B143D4F96162469A66E928B36D22E9F74D22790F32678455F1EBEF41069F
        69361025F235E2D5F4FCE95A6CF6116335E35B8F1CABE4554EE6CFB53DD2EF7F
        6A3ECD457FA16B234F60B467310C378E18CE5C3986435F327DDF45A26F3FD0FC
        51F958DF3AD438A563A3B930A9A5EADC8147508F31D15D45068BE84A52FB1EC0
        D5F0F94C9318C7748845D9BC2C9BC9AE32CA09299F45078D41C6C0114D48F3A3
        B3F9099D4639C824773BCA5956DF57E1380FFD1F7814573C296B837B445BD08A
        CF38035069BE12656052AF1D520F0F606BD30C767CBCE9D0DC50B1FCA3FB2489
        F99826A5F26D343FC46432FB5EA517185016D2B8C38EC6FAC2A75CA5B1FE72B0
        9F61978FF153CA08C14C0664D60D517A832838E26ED15C9D4D3A6FD2F951E76D
        9A9B72C8EB4174513A0E9435C92AA22442423EB815DC7F2424C59D8BB1D7B9D2
        8A7C032D4CDA919F326BFF2F6C87DA69C247FA0675EC16A49E2FCD799A80F214
        36EBE69AE000661EF1980BF7E9921D0AF98C944D7D31244D3048E20EE5FD60B6
        268EA93C3A6298F27597E5E97C8CDD795213E4BC9DA624C77F64D6CDCE0EBA1D
        4DC89366BE26AC6BEF347CD2CDC705684193AFC741B9BB916F6B120FE35A9D11
        6901EA894BE3A211694048232593BC61B486B71373FD37BFEBB25CF05C59F32E
        79205B82F9925F8B8EDE20699E57CABB4EDA5EF32F677B5528E6E3FE83B60B67
        F84223A513628C4558E2F86C871ECD76582B27857F500C347EF7F17E24ECEC97
        286FED4768E3268D70B27FDD5BF16FE7492D29F5EF792ED139E5959F456C9BD8
        7BA39E6750566C48916E9605D224F66DA4642E72D3FE5C3D2F1BCB2292780667
        3CA3AC7156B211E54F56ED834926B45798097F221B37BBF7F734237141EB7217
        D103F3CEAFB2B18E64277FCEA97F5930DF7F5919D3F95A5344F3E4BDE5352D20
        FDC1380F6649B3A80F5BD7948EFA34FE843D5F46508EF71CD21C05460E05EB6E
        918FB9312BA9DCCB2784A24ED9BD238AB30584AF453E6EC06D2EFE75682D97C8
        5A47CF7642FE318E856FC7C71DD25DBF079CC55D17EB7F3F296B7EE15B79ED42
        56A47659AC9F25CBA4167CA76D532BBFC0B11751941FF3A5D9D9CFC96620576F
        248EAC968D39A1BC7017641BD02A168C71CCE6793CD2081CF13613AB58F07F48
        C7DECED87759F1F0F9A826671383A824AD4D382725AC8A25ADC85A23A6FD9A53
        2BA4F877B3802E7C7743A987E46BDBDCB30AF808B719CB2F626B9774D08BBB5D
        BBB4AC1CDCD5912FAE25F84C2D65B13031072832F37BE42B603C9A790D9F29FB
        E18462D51B89FBACA2091E45B19031438AE1A31F3EA11A421386A409B86EC4A5
        99409DEC01D39B269460B46471F3BCDF527F0C62FC7E3B51A87238CB9E125B25
        9E5CC9239E52B44752FD740F568527D7B8D4EF07BCAB75E14939D4EBC2FFACEB
        C2DD5436E1FC75E1865463DEBA708CE3965D6B993CBECC5A4BEF1698FADB8CF5
        956A16164FF33CA4F3E348BC4A3654CDC47F4D26969FDB5033F19F9589CB3FA1
        63F94C9C7E3EC3AAAD7B4F70F1B4B735B8BA6E6D774FAE43FE33EDB06F4DFA99
        767AB1E72E861A7BB2D229F584CFD42B02E2679165A62A3BCE29EBB78F46D7FA
        B433689DE066A7431BFFE0E4DA846F83936B63DAE9B7E9907E9F95ED9D5C43B3
        FC37B4D98D5AF71CCEC86C8988284F486F66B99A6224FE048E4B3E1DF235E5F5
        23DF74765F5D5D770EB7E9FABBFBF079B78719C69DDD6D065110E820A558D166
        B361C28F3822089A4D3C02BEBFC543F4859DCEC83B934E3F79671247E0CFE04D
        EBEA9A81F1800376A29D4D0FFC9757D7AF7B80ACA74FF7F876E0BF032940CDC1
        3E603DD86F9F5C37C2B11DEAEC449DC59C68BAF3A6070D3F18A08CB7BB24EA5E
        97E4DFDB82C3E1CB21DBD76727E90DF877D01F63BAD5EBB28D8FAAB2B5B54DDF
        B6DAB4F1E1341338B28D1576BB74895F7AFF3AB97670EBB3AF476CD3C3FABB9D
        7DDCFCE2E33143D8EEB0AF033CDD2F7E8BD4B1DB23753CC4C6EDFA5DDCD7F58F
        71D3669BAE4F7ABBED1F60B59D6D1F6FE6F0AD8FDFBA3E7DDB1B1CE049F6062C
        A8D026DAC2CEFA3B6D29B56DFAA6434D7C7340ED1FF4E9745013376FDA5B74F2
        CE1B3881363D3CB0AFAEE1CFC9B53BA54DC83606DBE8D206B61D3C1E3A9D33A5
        0D10E40EEA98311D6C75E972BDD774716C28141E1C428583C3365D6DDADB3DA4
        C04C4F1B12F16E00C1EE1F1084BDFD2EDBE0A1FF45CED49082141685A55E5002
        7240214B9698C142961E2574BDA0B0A54B218B805275709A71A40580DB01C0DD
        7D0BA077B7A07FB55EEEE2658EFB0C7F3E88EF428DAF1A7BC00260DDA53B3960
        323AD8264D69EF931CB6BBC81F3B78BAED9758BCD3850BF4067BD18E9A206B82
        5C09826CF57BC4860326F3A301CABC7F880735CDF170381D1CBD09AF5F98167C
        780B1F0C67DADBEEA092F77C28B09C4DCBB35DA3015FA1D86A5A9BAEEEDA0D77
        DADB8162B3B1E9364D4BF7E02B147B0D6BD3326CAB694E7B1D3C2D516E074A8C
        4673D36BEA76034A5AD0CC5E0B787BDF27C26DF95D44BCD7033C6D284EADD3A1
        E67AAE353DF4DB21DD6AEB1D9CA3F58E28A7B5F50E3AF73456118F48563559D5
        86E315AD8A87F2CA46D1EBA6ABEAF9D785CADB080672010783500019A4572BF5
        FA3E3462FA6A07D1DA344C67DA3EA6AE1BC1737448A788558E2131AFBA99571D
        6F60DE090CC5094A54D7B3AB97B977A8DE87AEBA641D3E18BC0183A6EBB073D3
        C193C32EDDC0961EE8266D0C9D6D0C7648C381361F18ACCC84B217A255B0DB34
        A8076EEAAEE979F0D5C47B9DF6B701867EDBC72ADDCE001A8A7D141808AAF4F7
        E13B1CDB3A82AD034D8711C0600B746AE7A8C36198BEDA070E79C50CD6749AB2
        7B06B77B6BC0D213B0921B33FB97B07D06B37D7ABEED4B5D6FBADB6F5F5DEF22
        B9806784D4021B948613496317A5815F1DBD69D8D35D661F5DFA81FA6D1FEAB7
        E9D2BBED978C6AF13F7CDB43E7A9FD0A2F7BE493853BF2B7C835F93F5FC298A2
        1D50A531000000BE6D6B4253789C5D4ECB0E823010ECCDDFF0130083E011CAC3
        86AD1AA811BC81B109574D9A98CDFEBB2D2007E73293999DCDC82A3558D47C44
        9F5AE01A3DEA66BA894C6310EEE92894463F0AA8CE1B8D8E9BEB680FD2D2B6F4
        02820E0C42D2194CAB72B0F1B5064770926F641B06AC671FF6642FB6653EC966
        0A39D812CF5D9357CEC8411A14B25C8DF65C4C9B66FA5B7869ED6CCFA3A313FD
        8354731F31F64809FB51896CC4481F82D8A74587D1D0FF741FECF6AB0EE39028
        5389415AF005A7A65F5920ED045800000AB56D6B4254FACECAFE007F57BA0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000789CED9D8D91DB380C4653481A492129248DA49014924652486E909B77F3
        EE0B48C959AF1DDB78339ED5EA87A40812A20090FAF973188661188661188661
        1886617849BE7FFFFEDBEFC78F1FFF1DBB27558E7B97E1D9F9F0E1C36FBFAF5F
        BFFEAAF7DABE67FD5739AA0CC3FB81BCCFE2F6F096FEB9BBB68ED56F277FAE47
        570D7B3E7EFCD8D6D54AFEEEFF6C7FFAF4E9D7DF6FDFBEFDFCF2E5CB7FFAA2F6
        17B5AFF2292A2FCEE518E7914EFD5CAEDACFB1DA6FF993769D5B695A5FD5B161
        CF4ACE9DFE2F3AF97FFEFCF9D736F54FFF2DB9940C903932623FE754FEC81499
        D7FE6C17F46BCE253FB713DA02E51BF6ECE45F32F2F8AFE8E4CF31E4427FB50C
        9173B515F759E4C735E03EBE3A863E00CA633D31ECD9C9FFACFE4FF977EF0CE8
        79E45E7FAB2D20D7DAB62CFDCC58C9DF7A00E8FB959E75C3D0734DF923D79255
        5DEB3E485FF798C079F85992C776BA21DB89F58CE55F6DC4690CFF5275E2FE73
        B41F5DCD589C6D1FA75F67FB295959DE290FFA6DE65DD7792C97B2AC6DDA207A
        8631C9EA9A61188661188661784518C7DF9347B0D7A7FFF36F2FEF59F2DDFA1E
        5CEA6BBA36F5AE7884CBE8ED6A07CFE667489DF096F6BEBB96F7F39DFCCFD8F1
        8F7C86799EF775BEC42EBD95FCFF86FEF3165CFEF4B361CFC3A68E4D26FD77E9
        DBC317E46BE9239DCF90FA243FCE5DF9034DE76FA48C5C8FFDC8BE2CDB2FEDDF
        DAA597F2B71FE251DB40CADF7E361F733F297D89CE2CB9201B6CBEECE79CF40B
        D867582023EC7605E751E7B40F93F667B71DDA0CF7429E9916F2EEECD9995ECA
        DF75F4A8E381AEFF037568BDE0BE6D3F8E7D7B5D8CD02E7EC87DD0765FF7FF4A
        3BEB78E76FCC674AF6EBF4595D92DEB3EB7F40B6E9032EECAB2999E16F717F43
        96FCBF933F7DDF3E40C7FB589FC0CEDF98F2272DFC00E4D3C9FF28BD57913FCF
        F6FA9BB2B1BC8BF4C5DB17E7FADEE906F489DB09BAC5BA1876FEC694BFCFEBE4
        4F9CCA99F452FE9CD7F9C3FE76EC5B4B3F5B417DA53F2DFD77F6EDE5B5D46DD1
        D591FD7D3C47C863E54B8495BF317D88BCA775E5F178E64C7ADEA61E1E55FEC3
        300CC3300CC350635BEC9BFC3C3EBF675C3DF6801963BF1FB67DF1B34DBE8B0B
        BD157FC3FCC3676767D3EAFCE0D609E80EC784E7DCC0F42D425EEBF36B5F673F
        CCF2A0AF463F9CA3B3AB20FF95DDD776307C7CD88ED01BD87F3DC7A748BF50C6
        EEDB67E773ECB7E32FC7681FD891F1490DC774FDDC7E17D77B91F2E7FA6E5EA7
        7D81B6EF5AE6F80FBA79449EEB97F3CFECB7F335E888E9FFE758C97FA5FF5776
        F0F4A5A74F1D1B29ED22FBB16330CE1CCB7659E093D8C50B0CFFE75AF2EF7C7E
        E0B95F252FCF052CCEF47F705C80CBC9B979CEB0E75AF22FD0C9E93B2F788617
        D6E1CE73F5FC5FE906B7393FFF1DAB50CCDCAF35DDBB5CED5BBDE3797CDED902
        18C3E7F5C48D389DD4CFDDF89F6700E4FBBFCBCAB14C7BE43F0CC3300CC3300C
        E7185FE06B33BEC0E7863EB492E3F8029F1BDBDCC617F87AE41AABC9F8025F83
        9DFCC717F8FC5C53FEE30B7C3CAE29FF627C818FC5CAE737BEC0611886611886
        61786E2EB59574EB861C617F123F6CC4F75E43E395DF11766BADACD8BD23AEE0
        FDDC7E65FB90EE29FFB4333C335ED707DB1BB6B9C26BF0AC646CF9637FC126B7
        6A4B2B9B9CE56F7F2265F2FA3C2EE3CA9E609BC1EA5E28337ACCF2CFF6E8750A
        9FC1A66CDB2B36BBFADF76B4EE9B3C9986D710C3AF870DBE6B375DFF2F6CD363
        1B5B60FD4FDAF6F9D06E7DBDD7E7F29A84ABEF0B9147CADFEB8EB1069AD7C47A
        749011B85E76DFE432297F3F3B576DC672F5359DFC1D6FE463F61FB39FFE497A
        EC3FFABE988F914FEEF77A78F78C7BB926D8C721FB8565B97A2EFEA9FCBBFD9D
        FCD317D4C522D1AFD1EDA47FF40DB9DD31FC14D6F3E4C1F14767D7FFED7B2BD2
        8F03B7927FD71E6CFB773C01FD3D7D47DDBDECDA46C6A8905EFA291FF59D81B6
        EC7A491D70E447BF95FC0BAFE34BEC00ACD69CCE7BCD7BD9C9DF65C8EF0BFB9A
        47957F913132E9C7DBADAFCF71AFA79969756D661797933EBF2EBFD5FEDD7DAC
        AECDEBF29CAE7E9E61EC3F0CC3300CC3300CB09A5B75B4BF9B2BF037F8537671
        ACC3EFECE6D6ADF679CE85E70A1DBD3FDE82917F8F7D18B6A1E59C1A58F9E777
        EDC5B691DA76CC3FDFE5B0DFA9F0F744F0FF818FF95ADB93F02D712F963FDFB3
        F13DBFEA3C11CBCC7EB68C9B8723FDDFD9E6ADFFD9E6BB3EB6D3D9466BFF8CDB
        2271FEF87AB00172ADBF51E86F0939C6C472A62CF888EEADA76ECD595B3B1CED
        A76FE63A01297F400FB82D60D7A72DD8378BFC287BCE1BB1DFAF9B53D2EDA7DD
        FABB40AFC2B5E5DFF59F4BE4EF391FE8EEFCD6A0BFC9B8937F3E0F3A9F6EC133
        E915E70A5F5BFF5F2A7FEB6D74B0636DECC3433EE471A4FF53FEB48D4C93F810
        C7083CB23FE7123C6EA28FD1AF6E21FFC23E3DF7E7DD3CF2BC36C77F3BF9E3C7
        ABF473FCF7E8FEDC6118866118866118867BE078CB8C995CC57FDE8ADDFBEA70
        1D78E7B63F30D78BBC1723FF359EDFE0F87AE6C7D18F998363BF5DA6B3B2A178
        0E5EFAEA6C87F2BCA0950FD0C72813D766F9B1FF3A7E1F9FA6CBD3D9A35E016C
        A0690FC56EE7351A39AFB3A9179E57C7CF7EB75C3B14DB3F76FE6E8E97EDBBF6
        E7923665CC72A5DFD1FDBFF35562537E76F9A7FEA35EB9F7550C4F374F28E97C
        3B2BF953CFE947F4FC347C3FD866ED1FB4FFD0F7B62A3FC7728E97F7577ECF32
        CF6FC54EFE96D99FCA7FA5FF53FE39FFD77E648E61ABE798E7F2EED687DCC9DF
        6D14488B36F6EC6DC058FF5BFFDD4AFE85FD907ECE732EE312DA03799CD1FF90
        6D8334D9B64FDCEDEF157C421EFFAD64FC9EF2F7F82FE7F8D90798FEC16235FE
        DBC9BFC879FEDDF8EF55E43F0CC3300CC3300CC3300CC3300CC3300CC3300CC3
        30BC2EC45016977E0F041FFE2AD6CE3140475CE29FBFE4DC4BCAF0DE10DF724B
        58FF98B573327FE2B128DFA5F2E7BA8E4AEBECB716BA38948E8C273EE2925840
        E296BC0ECE51ACFB51FD1A62A3E0DA71F48E9DF27778890BEC62F72993BFEBEE
        B85FCA4B7C958F9176CE1720DEDC31E78ED54DBC36106B08659F652D32C79BEF
        FA35F99F3997F31D3F4B5E8E45BAA47E8939F2CFB151EFB1AE59AED746B93896
        EB7F110F4E3FE57E3B3A3D4A3C97EFDBDFFEA12DEC7400F1BAC492794E41DE1B
        C7E967BBFE43FE8E095CE1FB4EFDE258CA4BEA97732927E95E4BFF675C7EE2E7
        327D9B36ED7DD4B3BFB7E1EF29B91EDC6E5D4FBBFB72DE1D5E1BCCF7B36A877E
        8622B7EE7B1F70E6B9E2F93239778036941CD52FD02E1C9F7A2D76ED3AFB2BFD
        C7FFA3F3B24D7BDE57971EFD8FFB4A59B9AF5AF7ADCAEAB5A26025B78C0DEDD2
        A46C398F85BC12E795ED9EB6991CD5AFCF234FCF557A2BE8C155FF3F3BEEFD13
        F9738EE7DC649A7E1E76F1E04EB79B87449DE7372A2E59E7AB1B2B763AD37965
        3BF4F838CB7DA67EE9FFDD7C85B7B22BC391DE854EFE397FA3E0DDC07D957B42
        C69E237406AFE998D778EE90E3D5AD738F58C9BF6BAF8C53AC1F56ED9BFC2FD5
        E7BB754A3D6FEA0C47FDBFF03C8BD5BB4C27FFA3B2F34CACF23A0FE4445DB236
        DC6AAC669D99F2674C98EB047A9D2FAF2BD8BD5B7B8E99DF1DBA72F0DD43F44D
        AE59D771A67EE1E85BBB1C7B8F798BBCA3AEF2CD791A096305C87A41BFA7DEF4
        BBF491DE3BD3EE77EF84ABB180C73997AC137AC9737A57BF94FB48AE9CF3ECF3
        5687617833FF00A082FA20E0BF25A300000ED76D6B4254FACECAFE007F928100
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000789CED9D8D911C290C851D881371200EC489381007E2441CC85EE9EA3E
        D7BB674940CFCFFE58AF6A6A67BB69101208D0839E9797C16030180C0683C160
        30180C0683C1E03FFCFAF5EBE5E7CF9F7F7CE23AF7AAE7E273A5AC0065F8F7C1
        FF51E9F98AFE337CFFFEFDE5D3A74F7F7CE23AF7327CF9F2E5DFCF2EBE7DFBF6
        3BEFB0376504F4FB4746D4FBB49E959E4FF5BF0236D1FEAEF65FF551FA7695A6
        93D7EDDFF99D5D54F2ACE4045D1ABD5EA5CBAE67EDBC7B3E706AE7AB7AEBEC1F
        E56BDF75B9B46F7B1E9A0F7905AAFEAF7965F58EFB9F3F7FFEF77BE82DD2FDF8
        F1E3F7BD7886BAA82F0B443ABD1EE93344FE9E26F288BCB91765AB5E4817D7F5
        79EAA069232F4F471DF47AFC8DCFAAFFC7DFAF5FBFFE7EEE0A3AFB734D65D1F2
        234D94CF33599F233DF732FBBB0C519EDB089BC7DFD099A689EF8C5B5C733D45
        1A9DF338B47D453EA44717C8A9E954EEF8A00BDAB2CA1DD7541FAA672D9FF17D
        D7FEFACC15ACFC7F5666D6FFE97F9DBC81CCFEEA6FA8535677EC1C7A567DD12E
        E2832FD03EA87E813C567276BA403ECA213FF715559DFDF990CFCBDF19FFEF31
        17B8C5FEE83CFA23F5EEE4A5FE95FD7D1DE2C0B6D83DFE465B207FFEF77E86AC
        F451DA8B42F3A14E992EF0B72E2BED91B95E657F64D4E7BDFC4C6F2B5B5CC52D
        F6A71D6BBBEFE40D64F6577F87EFCDFA287DDDFD8FEA36EE71DDFD24BE23B33F
        7AD03696E942D3A9CD6917C8EFF6C73FF24CFCE519CD37AE21E333EC4F5F517D
        D09F0175F5EFEA6F19DF1C9A1E99E95BFA3D9EA50F746BA5C88BFBF84DC0FF91
        C6EF21277D2F03F5C68764BAD07232F9C95FC743FA87FFEFB2A8FC3A97A9F4E9
        BA1D0C0683C16030180C3A38F797DD7FCDF26FC13DB8842B382DF3347DC5DB9E
        C263E5C4A558CF6471817B6255FEEAD9159FD671988FC2A9CEAEE8B8E26DEF21
        ABC6B6AB672ACEAAF21F555C7AB7FC5BF9B44741E5D63D135EA72B7275F1FC7B
        B5EB4C56E5D5FCFE09E755A53F29FF563EADD293F386CE29FA1E05E77890857C
        9C0359E9ACD281C615BB671E697FF4E39C5CC57969DC5E63E655FAD3F26FE1D3
        2A3D11A30BC0B3C2F321F3CAFEC4ED541695B3D359A503B53F7266F267FEFFCA
        1E9A13FB579C9773D6CABD561CD96EF9D4F52A9F56D91FEE58F923E5143DFFCC
        46C8DCFD7FAA03CFAB927F972B5BA11AABE046F47EC5790548AB5C4C977EB7FC
        5BF9B4CE4FD287A38C680FF4359EDDB5BF8E199EF65407A7F6BF15EA6FE01A94
        77AF7C536617AEFBDCC1D39F947F2B9FD6E929B3B7CE3B1917B4ECCC4601E516
        B3B43B3A780DFBEBD8C9C7F7E2292F884F53CE0B79B2EB55FA93F26FE1D332DE
        CE6503CA295665332777AE94E791674767998E3DEF4AFEAE5E83C16030180C06
        83C10AC4BE88F99C8275206B98552CAA4B1373DB1DFEE71ED89135806E1E59E6
        AE2CF706E76258777B0C7F05E21FACBF77D626DDFAF599FB1933AE51D79481F8
        4EACF0516576D71F098F5D07A8AFC6B7BAF6AF676348AFFACB9EE719EE69BD9D
        F78A7BEE97F4CC41A6339EE9F4497FF33886C768B3F277F2CA64CCD275D777CB
        C8F4B883551C49F7E457E7719483F038ADEED5D7E749A33E079D2B97A3F140E5
        EC940F7099F41C51C59FE1F3C84763FE5A97AAFC9DF25CC6AACCEAFA8EBCC41B
        55C613ACECDF9DB7045DCCD2F92FF83AEDFFE8CACF3364E73BC9AB3A674239C8
        529D8DC8F4EF7C47577E9597EED77719AB32ABEB3BF2667A3C41C78F91DF8A67
        ECEC5FE97FE76C11F9FAA7CB1779D0FD8ECFD2FE9EC5E2B3F23DAF9DB3845599
        D5F51D79333D9E201BFF955BF4365FEDFBB9DAFF335D55FD5FCBEEECEF1CF4AA
        FF6BDE5DFFAFE67F5DFFD7B2AB32ABEB3BF2DE6AFF808E2D3E86E19F747CE9F8
        2B976935FEABDC6EFF809EE1ABCE9F67BA5ACD597C3CF5314E79C5AC7C4537FE
        6BFAAACCEAFA8EBCF7B03FF5AED6FF7A2F6B9BDCD73EE43C9ACFFF3D8DCE917D
        4E9FCDE5BB1881CE85F99E0119FC3EE575E55779AD64ACCAACAEAFD2647A1C0C
        0683C16030180C2AE8DC5C3F5738C047A392CBD71F1F01CFE20259BBFB1ECCD5
        3A82FDD2CF441567ABF663BE673C8B0BCCF6322BB2B880EED9D5FDFF27EB57B5
        15B136BD9E716ED89F7B9E0772E875E72277B83CD2546BF4CE2E991EF45CA072
        A495BE6EE51B4FE0FBEFD53E55EC8F98137E638723543FA3F12BAEEB9E79F6EF
        7BBC51F9C22C8F2C5E9D71461D2F58C5FB7638BA2ED6A96713E1D7337DEDC8B8
        E2024F50F97FEC8F0C7E6E25E3685507DE47340EA7E7F8285FFB85736E7C577D
        546726785E63EBF4932C46EDFD85B6C7F915B0C3D1ADB80EF2ABF4B52BE38A0B
        3CC1CAFF232B7D2FE355773842CE52685FCFCAEFE4D17CBB3333210F6D96725C
        3755398C6DEADF287BC5D19D709D99BE7665DCE50277D0E95BFBACFA78AFEB0E
        47A8EFB5CCFABF8EDF5DFFDFB13F673BF52CE76EDFD2BD03DA6F7738BA5DAEB3
        D2D795FEAFCFDF627FF7FFC8EEE33FFAC74F56E9BC3DF9B85AD95FF3CEC6FF1D
        FBA323BF7665FC3FE1E876B9CE4E5F57C6FF9DB38E15AAF5BF72DE594C80EBDA
        6F3B8E10F9B09FCE31B367B23970565E9547B57E3E995B5FE1E876B84E4FB753
        F71D199F1533180C0683C1603018BC7FC0E7E8DAEF51B892B7BE5BE31EEFBED7
        D8C00976657F4F5C146B5E3800D6948FA803763C01EB5A627ABAAFB2DB075C01
        8EE1141A4FEC70A58EAF056216BE6E247E16F07DACBE0EC76FE87A953318F1D1
        980D6D4BE30BE8ABE37655C6CEFE5D5EBB69B44EBA0FDEE5B8571D41F6BB23B4
        F7788EEB94ABE90291E66ADFCA74C4F5EC1C0B710B8DB33A07A3BFCF453DD00D
        7A25D685DF71F9294363F1D55901B545C5D1EDA47199B4AECA795247FD2DA12B
        750C280F4B5C0FFB68AC50D31127A5DC2A5ED8A1B2BF5EAFECAFF171DA3D6D12
        3D797C4BF3F2F876C5AB65FC89DB5CFD9872C88A9D3401B59FC71F3D8E9BF17B
        57EAB8FADD31D2FBFB049D3B3DDDB7E5F2781CDAEB1370FB3B6F403EFA9B94C8
        98E906545CD48EFD2B1E43B193063D2AEF99C9AB7C98BF47F04A1D4FB843CAE5
        03575DF99615788E312EB399EFB5A00F395F459FD0B1A9E20DBDFD56FD71C7FE
        01F57FCAE32976D228E7A8E3A0CA917DCFECBF5B47E504F1F91D77A89C9FEEC7
        BA021DDBF4E37B2DE2836FF4BD1CDC531D64D7955FCB9EEFCED783CAFEF832E5
        D41D3B6954269F772ADFCE77FA87B799933A06D406BAA7C7C767D7ADB69353FE
        4FA1E30773CCECDE6A8FDDEABAEF255A8D5B7E5FCBAF64E9D6AEB7A4F1B22B9D
        9CD6F1F4B9CC775DD9FF37180C0683C16030F8BBA0EB185DCFDC6B1ED9ED498C
        7590BE2B65A74C5DAB12EFCED682EF016F415E8FE7B0EE3B3D4752A1B33F9C00
        E976ECAFB116D63B3CF716F47982B7206F168F244EEE311BE7B4883D3ADFA550
        EE56E315019E759FA33CB4C7203C26ABFCBFEA334BAB791343A9B8182F17F934
        96A31C72C729693DB5FE2A2F7CCE8E5E905DCB51B94ED09D31718E47B9088DA5
        773EC3B97BE595E10B3C46AAF5F3F38DCEC156FE9F72B232BD6ED9DE6C6FFFD8
        8DD8A7C77CB16DB66F9BB60227E27162ECADEDA2D38BCBEE729D60657FECEA65
        66B1FF158FE8360A3007A86C7A929F7341DE5FB2BCAB18B0EE0FD27837B1D6EC
        B7A32AEE557D8DEEAD52AE25F3192BBDB8BF43AE13ACFCBFDB5FE709B7DA9F7E
        495CFD51F6D77EB16B7FFC0679A9CF235FB7FF6A6F077E447955E50FC0AE5EAA
        FA9E6035FFA39E708CBA07E516FB6BB9EE876FB53F3AA41CD5CBAEFDC943C70E
        B5B9EE77D9C9077FAEFC9FCBEB3E3FD34B76CFE53A41B6FEF37D453AB7C8CE5F
        AB6E1C2B7BD1FE75FFC33DECAFF3BFEADC72A0B39BF771CD93BECCB35D3E3EFF
        CB64D17D182BBDF8FCCFE51A7C4CBC85F5E2E0F530F6FFBB31FCFE6030180CEE
        856CFDB78A6580B7F4AEF98E673A85AED7BAF1B68A9D9E6057D7F72C33CB4FE3
        3FABBD91015D97BE055C39FB5081F8D7EE7ECD5BB0A36B4FFF08FB57F969EC47
        63157EC629E3081DC42D3C9E0E77A6BC2EFD8F3371CC7D950FE39E7F2776AA75
        F0772456B192AC6E1A93D176E1F228B272B2BAC2FFB8AE358EEF32A9BD88533B
        57B88BCAFF6B8C5FCF4BD1CF94F3AD38422F07DDC19D68F9E845CFD5A01F9727
        8B39EA773F7F4B3BD2783AF2781BF0BA053C96EC7C40B60FDB63B3C4CFBDAE15
        87A7F956FAE079E2C61507BB637FF7FF40DB968E531E77CD3842071C95F271AE
        C3EEFF5DFBA3173D8FE93207F46C8F42D36536567D65F6F7B9889EADABF252FD
        28B7D8E9C3CBE1DE0956FEDF65CAF65A541CA1EB8434DDFB1FEF617F64A2AD65
        3207DE92FD2B6EF159F6CFE67FF842F597BA8F029F547184AE53FC7FD7FF03BB
        FE0EDF94E93C9BC3EFF87FAD5B26CF3DFC7F66FF8E5B7C86FFF70FF5F773B07A
        EE50E7291947E8E5E8D9C1AA7D7B5AD785CE33ABB3996E37C56AFE1770FB57F3
        BFCE7766E574F6EFB845BF77CFF9DF5BC7BDD73B83F785B1FF606C3F180C0683
        C16030180C0683C16030180C0683C160F0F7E1117BD1D9FBF491C17E13FFACF6
        BDB3C7D2DF6911606F4CF679843E756FA9C3DF695C7189EC4BF37C7DFF08EF00
        D20FFB379EC953767539CD47F7EDF1A9ECAFBF63C2BE23F6D9E93EB72CCF6A6F
        F0ADF2777BF5D586FA1E1087D61BDDB2874CFB04F93DAB6D57E8EAF2C832755F
        A4F68DACFF38D8AF96E5E99F6A6F9E3FBBDA1BB26B7FDECB44FAF8DFDFB1A1F6
        7F6DBC86FDFD7707D43EF4C30EEC23AEA07DA9DBCB16D7F5B7453AACEC4FDBA1
        4F3B3CFFACFF739DFC79979BEEA1D47D9B01DA9BBE6B897D7EFA8CEEB1D57CB5
        4D9286EF273819435417FEAEA1AC6F2BA85B579EFA82CCF68CBDF8865599E4A9
        EFEF5199F5FD7227F6F7BDEE5CE77FAD27E792749C5459B8CF77F48ACC7A2E44
        F3A53DA8DC577CD3C97E713D5FA1BE0079AABE4DBBDCF1E7D9D901CDC7F796AF
        E4C78F6BFE0174A7EF62533D32E6FB7CA5D2B1CF79B44EDA5F7D4FAFEE65D7F9
        94E691BDDB8FF6E0FDF0744CE09C53369F716043FFEDCC6A1C66FDB4339623CB
        E9DCB0B33F7AD5310BFFE9ED48EDAFFE5DF79A93E789FDF55C22ED57CBCCDE5D
        E5F3ACCAFEFC4F3BBE322740BEECE3407E74471BCEFC3ABAABFCAAE77BE5DD75
        81CAFEEA37016D318B15E899515DDF50579D1F56E71B32FB53AE8EE57A5DCFA5
        7A9FD2731F9DFD91C9DBD733D0C55D76E71691EEAADCDD7877D29EF4DD3ADA97
        3EDA798AC160F0A1F10F88246AA2EB77BD16000004796D6B4254FACECAFE007F
        A236000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000789CED9A896DEB3010055D481A492129248DA49014924652883F
        36F8633C6C48D9B164F89A070C7490E2B1CB4322B5DF2BA594524A29A594524A
        FDD7F7F7F7FEEBEB6B4A85DF83B21E974CFB12E95F53559FDD6E37E5F3F373FF
        FAFAFA737ECB75A71E55D62D55BE7F797939D863EBF4AFADF4FFFBFBFB2F4A75
        AC7A3FA3FF69FBCFE0FF993E3E3E7EDA0073016DA3AE2B8C76C17585D591F815
        CEBD599A75CC38B3B4FAB3754E19D23FA457503ECA314A73A48A576956FFE7FC
        91FD5F754BF0451FFF89CFB8882F729CCCF9A3C2885FE29A674B95575DD7B19E
        99CD45591EF2636CCAF32C5BA69F549C591B48BB54BECFE0FF0EB69BF9FFEDED
        EDF08E887D78A6F7C74C237D419B20BCD2E29CF647FC9E561DCB37BC97915EF7
        7D3E9369D29EBAB22DE71CF8E8FE9F69E6FFEC3B7D9E4C4AF8B0EC58ED26C754
        CA50F733FD54DE23AFF4DFA81D67FFAEF04A1F1FD6F96C0E201E65E4FD27EF3D
        8AD6F83F85CD986FE9E7F96E80EDB161F6EBEC9BF4BD7C37188D15F93E9AFD3F
        C790F4559625CB3BABEF128FA2ADFC8F2FF16DF6B59E4E7F2FE8E3498EB5D9F7
        66F351D683FC7A7BC8F13CD364CCE936E964996EF93BE8AFDACAFFA5B251BE03
        966DFB7B7BF735ED24FDC0FB0469D1A678E614FF673CC624F222CD5EBE253DEA
        FCAF94524A29A59E5397DAE7CD74EF652FF9D694EB2097B0617D1BCDBE6BFAF7
        D45FB5F679B53FAC39D49AC96CCD7A8DD2FF7D6D23BFF347DFFC4B6B21AC9BF4
        F36B28CB39EA47FCE331BBBF94DEE87A96D72CAD51BF26EE6CCD6956E6BF8AFD
        B2DCFB235FD63CF29CF6C233B9CE9E6D24F75E39670D977B3926B077B326BCDB
        3ACB99EB89758FF566D69AFABA5285F73AD6BD4C2B6D57C7F41990575EA31EA7
        C47A25F74997BDEEA5329FA3EE976C6FA3FECF5A1BB6663FBE6B34F657BCDCC7
        2DE823ACF3AD093F562FEC97635EFFB721F721107B1975CCB5CAB455A6D9F31A
        D9B7FF13419CD1FD91FF47653E477DFE3FC5FF197FF6FE9076E29CBD198EF833
        FFC958137E6ABDFA9C977B02F87A54A7F441B74F5ECFF2CAB0D13E13F7B33F73
        9D798FCA7CAEB6F07FDF47299F50A63C2F31D6317E3296D19ED7869F522FC218
        37F88F001BD3BE10736DF77F1F73728FF298FFF97F22F328F5FBDDFFB3329FAB
        63FECFB91D3BF47E92752DF5F1297D83BF88CB3CB655F831BB6718B6E4FD3AE7
        61C670E262E7B4357B9DF833F7288F95837F6BF1216D276DCA9ED9C8FFA3329F
        F32EC87E5BD6297D47DFCEBA628FD15845DC4CAFE7D7FDD9FBC19A70C296EA95
        61D483B9A4FB37E7F2D13718CFF7E74679F530DA40DF8B4C1B133FF39E95B9F7
        B54B6869BD403DBEF4BF524A29A594524A29A594524A5D4D3B11111111111111
        1111111111111111111111111111111111111111111111111111111111111111
        1111111111111111111111111111111111111111111111111111111111111111
        1111111111111111111111913BE41F87978E6AD93B8E9C000001536D6B4254FA
        CECAFE007FA58500000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000789CEDD6E169836014865107711107711017711007
        711107B1BC810BB7A621FF8A09E781439B4FFBEB4D6CCE539224499224499224
        499224499224499224491FD1711CE7BEEF4FE739CBB577F7BFBA4FF76F5DD773
        1CC7739AA6C7CFEC18FD2CF7D4BD7516CBB23C5EC7300C7FBE8774EFB263957D
        B36176ADCDFB3DB57FD537BFFE8DEE5FB6EB7B5639EB9FE57A9D7DFBC6D9BFBA
        5ED3FDCB73BEEF5FFFD7E7797EDA3FD7ECFF7D65DB7AEED7EFDBB6FDFACCF7E7
        BFFDBFAFFA1ED7F7ABF740AED577FB9C45D59F1DD76B922449922449922449FA
        F706000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000F8403F0AF9ACB852DA2A6600002A176D6B4254FACE
        CAFE007FD4F00000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000789CED7D2BB8EC28D6F692482C1289C4229148241619
        89C422239158241219898D8C8C8C8D2C997F51FB9CEE9E9EE9F9D4FFD4885A73
        E93E557BD709B02EEFBB2E54E6E77D369E00DAB3912DC6D7466087A3C302705D
        C5056B00DF857EC3F3621DE0810A1001B60A1BD09E24C177DD93D9B184C1F1CD
        7C73FCF1436F00959BDD412BD57133B6BE6C4F1514E0789D40E128E930F061B9
        AF2B3FF70912A0DC542CA45F8D03AF3781B8735C9DDBDECF985E426C3129FC43
        11F395D20F0F2BD46BDB28EE46794E2238F596645043CC5F3916C8D23E4F0630
        266CAB34B88F496D2BFEEEEB6E9077EEDB47178F72C5B0F88D99E0013C51AA83
        71090FD114092BAF97B28548937D0CFAA1AEC165A1B71D7F718FB9AE7E7E825B
        292EA335638389362CD6FAB8C5C0C1826D0E9E1D04754FA0F8EFA839705CF8D3
        FD3C2F1B0F2F3FBCFCB7B84EC43A129E934DC29B057029B6152015F6C49C2D1C
        D51E3270C0270F87754B716002BEB4CD5FB7E0DAE6C01FD52FB899FB36FC341D
        3C7E00850BB41E373753EA1B81C7E14EDDD54251D7E1D6EDF3EBA7A894754DE0
        F77B8F8EFB35C8252E42A64EC98A0B186B3A18096B9B4EC0BC6D8139D80FFCE7
        022AA7758155C57C32A886D9253BD1EF11819BAB1DB85D46E161D79229CF0BAA
        524525485763304D6703C63EBBF8292F746968936698F5D509D1B858863ECACA
        1CA812CB45CBC5F2E3291596D43C0F2CE936F67334C5E1C07FD6359B7AE062F0
        3FA4A24A1FF0E0F65C1B3C194F1C4D254F232837E436E03AA7163D099DAAEAFD
        D38B075941A3F7C283480DB6AB08904CA073369BCE034D8358EAC8F94263589D
        26C7984ABD13740465BB2ECAF612FCA8CF09332E186A652894CF3FD43C3F9D2D
        31E924709D4F013D00FD7F78141A128C0BFFDAFD091F5D3C4A74C2A1B756679B
        9A607C492C3CE4B8957DE046F30E516A5DD06F255B5061D1FD018836FD185812
        59BFCD3CE117AA3F10A8596F680080469E17FC303637E181AD1F364A46F19747
        5BF085057776299ACF373F2C1CE440778E0A8D066E4DE0C7A6DD136DCC05CA6B
        3E3FF5E8C94CDA6AEF0FB3153D80DD0FDA2577835A88697A465478068110F484
        241181AF6B50F6389B45B7906DF2F8096A414F99F1D4D7FADE80AB9E1C3E7EFE
        9286E5DCE0D88691BA06E94239FAB5E209860BD6A4023855ADAB4B1C0E43C376
        B46A62EB0F4C0BE8E5E743BC02EF8079AF05A10BE71E8D3BA46D176A0B502ED4
        052097F8E3EF446BF115C2EA77FEA155FF45C2C28033F4DCA8C1949195923878
        EB55C0854ACAFCB973128FA312899E5C84B3080EE8C99F8E2B3B067D070473AD
        184610E31D51281E4B49ADEEF7A658DD9B84C6A80AB9310BCBFAFE2B4B8FFAA8
        E864588C1F5D3B4AC4A38EEF63088878249DA744D1D7B7DE0F109EA213586069
        D71E20ECA8EBD110406CCC8FFB726EB06D2481A8C65ED739CE84EF7A4247CF9E
        A0513D15C66E6610E46B8444EAF6AC653B0A3CA8FDF81661D3FC3E2CB5E2A29E
        9B6AC6EF6B8730429F5B7028F5E224BF1D00BA87C7A091DBF6CC70FD340C6ECB
        19CB71609458C693F909FA76CFB5F6E818D92E78F5486E8CFB8D6F729F4ABE80
        CF35ACF1C1E0FF48E01C75A989F1EAEB87978F0B66E0A7160CEDD7D761EC1895
        86895B5A17193A3E3CC74D404AA339F302FD02ACE224D3715D1501A1007D3D48
        85160C6B04D0FE33C6CA18BAE3AFF9E9B2BA74BF51933D7F82012C0937C6C706
        B5DFBBFDECEAE7730DC43E90E3A233F8B6EFDEDC365BA6D16795A8970C524C8D
        D88DAAA8F911AD3F17B7280C8D2677DD2E3743237E427B08825DAFD30AD7E297
        55D45702B20C3799D2317F6A6B7E8265946347BBBF7216CBC7F91FD0E344D82E
        1B123DF4CB4BB4DCEEEB08C540DD57DDC7B14D1203FB30E5809003E3FBEDE8E4
        BC30CE5C06DAF2787F90F3AE76CF71DF4E5AA20B3E2304C60D83848CE0424597
        0999A5299582BA2679D8417D74E53F42FBEA0B59EC6D28C2574970E181C9B1F2
        80F10BB87CBD32972BE8FDE05C32B7F620EDDE29906CDC38B7D6746C18051CC1
        405A2E42BD80A3EF18049565F1858B8D835253DFF481C6836D3E64984981E9FE
        6CFEF4F2274E0D618664C4A24733B9258D86BC23AB293FE8BCCF240501731F1C
        DF09035F353D13B2ED591CC74252232D6B227147502DD06512FE22E766ADC108
        C2E125D6A92DCF93331E37EAD0E4CCC838D44D39991981CF8A198A2C1BACE8E4
        5F2A6E3B4882C1FAC6451642C6B1861DD6636CBF7EF8CEEEB1E70DCB9D5B838E
        2F73619F67B8491517450832E52C7A03D231DA1774811B3A926B4CC6D3E7CEC1
        06A1CDED1CC899080FE5A38B4729E61CD47B1237CA6FF0CBC56E64A8F8A4E8B7
        F0E1957B4072F550983E10C66BC2778C6BD7BDBEA10B23B80F6B581766799112
        D645C7F79AC841A9CD42C239C2754D10B0DBDE34503DB95F04D36C9290C66757
        8FAED887DD4E9514D523965F6E998747EFA47003700B2C5A851E12FF55759B36
        C893F7C356A69BD3B0B8E530454B91372A7CB7FD185DAF7B9DFC3735465CE9D4
        B6BBFA7A51D815A07A21E182C70709751548803EEEFFF3A675709AB2DAF6F554
        D9A3BB6F33502988F8B45BE05ED536E3D6DAF3E360202D9A642612E12A3DB625
        C4C0CA6659923CBF5E9283D8B7605F369DA8DFC87C681DB8CCEB0533D8A13E80
        8432201950BA10FA71FFD7370715CF8EB30BFDD50EFC2C4E73BE6ABB46993D42
        B58AFC600BA8ED81B39543A7F2F604698E5592290152E9908F404CC5DF06D2AE
        848BFF891D02B7C7A76D623C32134648935271B0B21CC3B946BD1EE5E3F8F758
        1CBA698DE48EB2F54F6DAC4741FDDD10B7F4D27D3AB62A1ABECB13750CC46605
        D83A1D40CAAB5248992E03F2D9EF8AB036C2F1BCB1C3368E6A90E501A763E647
        4F704F2D0D10FAAD361D4817D2FDFADCCA7F4B9DC94AE6DB55C0CEEC163ABA4A
        C783BE9D8AFDC9763C677A8EE38CE804F120F1FF0831462A716D992D3B930D49
        F28D1400370D3F03DE1EE24FEC2859720DD96465C70ACFC94606CA170DE59909
        D2FAD1A5FF9672C5D84896101FCBC161ECC7C7DBA1E8A53E18C610002CA195B8
        AF33FF8B1B44EC5A088BB945F1CAC6AE01D27171F0ECD837701B813FB883C88C
        DE4BAC0690F7C5250EC8A724813B0FE2BC3F1EFD51AC72188D36B37050033760
        BC619986B8E95E3D840784FDC952E7B65F1786F599B3296DA384C73EC0443323
        1EC2A30CBC5F270DE749FEC21DC9AD750FCD8B43C1CA2D528D6E1065E3AF84B3
        B2CFF31F737395C0EE4CCFCC3CC8AD2F13B5E01B52297C4C745F31BBE9F2C13C
        75F57D450A44C87A6CC2F1241448D3110E2BEF4E081D5F1532ECBF73076301DB
        AF2DF2724891562EA019B3A588F41AFFCED4D68F278091EF8C9985287D0BE06F
        09B2ED3A5DE8ACA7DB36A746686C77B186BC408CD27AC67B36BA505F993F0C01
        B60D45EB1BD2DD18D068B3A2F6DFB9A383C376A2E64BAB0C2FFB42E9224DD2FE
        B2683BC0D7F1F1FA17E704D0B1A16FBFEB296752026D20C324AC35BF2C209445
        8378FC283FAA3A13B667C055EBB5851746BC349E99EAC02009E8E01608F3B5DF
        B9C345348C81062196B3713F106CE4980790F541AEF50E889F165976B4EE733A
        6D521EAA284707FFB05ADF79DA4771842B773011294E7AFBF6E7E1758859F42D
        C52695A78FE8C022A25910093D274986FDCE1D8338F0B7E8187BBB996D881B4C
        2F7E84B98F1983C221FE8FC7FBFF2EE342EFAEE0D8D1CC413DA89EF8E7BCB159
        99CB0C7C7A04F4F03A66891B23C2AC7F6F68B932586A81F8C7BC497C31D6D869
        331341287CF9A776106631C50313A5D60D4E4B80889A4CC0CDAB1ADA2E9FEBD3
        EB3FD272D95DC3714253A05E236F16F2FE2E6C8025047A02E2E2818B0DAFC4F7
        59D2E37E6988E4948350AE008871101EEB7526372884051CF9553B4202A1926C
        207A46EB78D78E06B381A28B4D9BF7CBF20B2C7C50660C56F5D6A0F66B829127
        9B4EBAF462CC942FA124454E95B9AA0A480341D769DEFB510B3D82752D1F2F54
        E65141443993A3A8D267D5EC57EDF0E025595AEFAE5C809FDA61D4A5A4E33590
        4FAD6A72A80FCBD1F1A9F8752239E3D642D87A7083CCACD6766CA5AD6C3D0B83
        108F1E15C9B859ECE8C7799F15DCBE357403FD85A6D2110BD76D4583817A9E2B
        FCAA1DEF4D1BB1BE8B3EA84CBF6BC73D8B72720C348D03F9ECEAA7FC142F67FD
        0F9A45C07212FEC07E508618A66E42DF5BA0AE5C675B157BA1AB8792671AA3E3
        59DB0376529F57271B86870A7B4665B06D31EFDE018C7B0B02DD77BE07034CFF
        D53B901D37A8262491E7FE78FA63DAF8C3D0309F0B818E9E6EDDF689F3ED2611
        FADA75C540357343E81443D5B16D9CF11F38481883E36566F1EFB9C6740C92CE
        3C504A5AFFF48EB040838FEF90F9C8DCFFE81DA1BB16349D4B7CAE8F23600E17
        7D17619F6B11524EE2FFA027977E495521C26BF2570180814C8C9B5AD7F54498
        044E4B95C1A505F7CCA155E3060CA39CCFC4F7FDDD3BB49A67CC12EF4C7E6128
        5DE5AFDE21426A76E828D166F2C7F51FA3BFB9F45CB7F342E5057D92417548F7
        52A1A4A01106CE0200D567EBF798EE1A4D1FEE0BA83C37870C4F8BB73AC8EDCA
        5BF76D3675ED76F68EDDC73B338EE6B53DC8FCEE771DE9A7778C6E1EE8FBAFFF
        F8FA8F9704A4A433704BFECE4DA2A4B6A583A8AB7BF32E00740BAE22A103F36E
        749A1A3F13E0EB8D6469F1B062CC4336B3F33DB0CA4509B319A01EAD1ED50E85
        2C80A51BD1AE4FC80AB29CF530B968FE7687CB47178F923B1E3DBAEFF54D5625
        A513F6F79BCAAA8872FCA700C0E4C2349D48180D1D3872E4D9D4064BEC8D80C9
        78BAED411CF43ACA320DDA1165C02EA9AC01D7DD9F304E3C679DEBE483F89927
        88A6CAEECD36A3E98725C1C347CC31D6D6B76D7DEEA15E6AAE6EEDD2BDD353FD
        300C437A018BC7ED4C588633FD9CC85583F6844D3B5E05E2FE5E157E5863B0BD
        8E800161011AE876034748057522E1E70D318AF36B4ED74BFD54823F2C88D9E7
        72833DEEDC8E86587D364342105736DBBB009046DF17A85CEE33966D7B34215D
        39FFE1BBADD7DC4A346EE914D813354AD373847782DC5E0CAA449FF768A80F82
        8DF48C7AF682BBB6A3DFFD38FF95E01C50EB945D977A9D17F0F3BA31B61B78A5
        E27E1700FCB54A382363BE2581CFBE13AEB763467B64F3971BDDDF031DBABD6F
        1DF7884077C53089517350AFE3B9129A5F15CC81CE203F0833794232C4907B7C
        BEFF0535B3A7B8877DCB3E787B712861BFB2DBD18261A13F05808ED0FE519325
        F2A7CC6CC1ACF634F482A4CF82786D5749D7868047EDAFA643E81AD2F4EC3112
        EA129208DB126BD751D6FD8C33694A681BDC2CC7FF80FAE3FA891A4BBA9A5288
        F7C5C4F0A215C4C2C8F6C84F0160FAC8E785CAB2BB868F3C21F38D5B109EB84E
        77D9F4B661C4DCF8B6A25A808EC078895C5274769A01D25E5A4AEDDD615C2801
        CA1EC85A995045968FEBFFEE20318A9ADEA305A1688EE0F79DEC790630F75300
        904C21C8790ECD5103500FCC9E10ED235240D3B12634AF619F3910022732C901
        9EC48BE0B64915AC45C73858C9F84972D5C40A34A813962A799EFD621FCF7F8B
        CBBCD31A2F23890D78B0DDD1DC3BC632527E1700AA8B01F5E219D6E14F37CFED
        A268EF93D598558EF35E08A76B04F40DBB9AA5E3A728E4BEA02CA5889F321887
        FCD729CF4307F73A28D9903B971C51333EBDFE34E129FA2588F9D46236EE1742
        3801FD5CA0141FB30070B5F59AC9ECAB653CEABAED53E9B9109082D8ECDA2BD3
        6A73F0C4708C84B808DF253C2619747B333F8CA308AC7C4E06297037116299D4
        027FEEE3E93FD461A469E44413B5576C087F921601A1BDF08858979F02C05ADA
        3E3B75F89D29A46B6F03292357E1C8CD539A6EAE6352BD78F4947B5BC0735876
        31A4AC393589115FAC1AAC304BE918F5C1188A11B6D59937DA3E9E005470A135
        878BB8D9B4A46C1A33A553FC22D89DEA4CEEBD885890EA85E79DAB5BE1356DF6
        A1F80E0CBABF51003D22757DF691C670CF982A788D62F6D589BAEEE397E32369
        4D2BB3F940BB5A219009FEB7CFAE7E6AE0D25994DDAC151891A1B4D2241E3F35
        8A95A06D0674EA75885D2087258E408EF7DD853A0E346838DB83B898A1BB7475
        EC1733C03BFA0ACE914FA431412F728BBF04BE99050A1BC611CF522A35C0C7FB
        FFCBEC69DC266A2304591E323ABA245A082861AD64E640DF3E277A0A9E140684
        D74C10ACAFB3ACDB0217EB87B6A9BD365A90D1C0387C601BC636DD2202E58C58
        0131DF5F800F7A0527100DEE462DA9F7BBD18FFB3FB0FA585E02F20B413A3F31
        08A2073BD8CC682F4B189E564227F5070CFC764F6E121F19CF044653F282BCC9
        0CF506C6A4EAB0EFCCDE517B3D6B683799C0174DE5AFC0775851F970FC5C76EF
        CD93CE4F2FFFB62EC5F6DAF1B90AF48D4E33B7CD484B52F0C96C8A4B96229B71
        1D0FF2941E895E57DC04B36881BC317774F91EE3A00B68400702A7ACD133F065
        121F36FE4E7C969217B6C1A98B493B79EE8FF33F1F0338745B06835BE921910B
        FAA5B5242C1FCEAE4CADB76596228F057AA6E52549DE8641EA6BDCCC171152E4
        6C213375FA38E0DA817913DFEB3F135F9E57C5E9BD2983416243D2F5E9F54FF9
        21727ABF8461A2A43553B1CD6ED697A3B3881123C2143CFD3433798FDC3622AA
        15A0D252FDEAD1F4DF834381825104E5BF263EB85B8FBC230A420048CDC7BDDF
        7B76A165E005D76B4FC3D754C96C71288F554803F0CDB5688F0F0CBBDD943810
        BA2C4074B0B5F6C8C3D5824CDB7B7008B41995FC1F892FD82ACB4C228D14645F
        790C1FEF7F9F6B2C34EE0B47CC96FDD162443E2CC1CF2E6F6B1222FD443B867C
        37965B2E151CB544D643ED17419C9F11E4238969C7E6E96CFFFCAF89CF9FA149
        D6ACD016F208E2F3DE1F44BF71BD5D2BDE1865450995F2965FAB2D2DA09983A6
        0BDAB063A91C9BB3E8E7805EF8BFA54CF4129871B1317E11EB104390DF4393FF
        94F89E439339A18E08674E8D11E4F3FDFFFB1A93F548C8043842166B68EAE7AB
        4AC18E235AA42D60FA56816FA7994DCB61203972181117240013EED5BA14035A
        2DBC68F36B68F21F0A1F3F439324B709FB5E96F174C48FF7BF39642891381650
        DD855DDAB69AA3D7775B12A201776C18E9CF3BB58C6495D46E97D786F46FCE4B
        ABE88D64F90C481AA6DE842844FAAF85AF9FA1496EFC49CC204DEFE3FC5F2800
        F981BC0E19F01A9C9218EEF035293612482FF6F5CC59CD3187B820B15152E68C
        6B1F2C6ECBD6FB5848BDAD06CA89F00E9183CACB3F143EFF189A6466930401E7
        2636B37FFCFCBD5E457F154A966D8B1214AAE974DEC87BA54397B59BBDCC43AC
        026360BDEED930CA85761E351DC3C2783CE483F35C395902B7DDFF63E1FBD7D0
        E47D31DA303622D7B421D68FF39FEB39EA646C3A27960CFB314822C13C484EB6
        02265D0BC435CFF68F36B639C7211649ED313B2290C91EF8EE597841CFD74B2D
        9779F57F6D7C687F1F9A0C641C0DA2225DF0CFD7FFDBEBB90855B92E616BAB67
        6262773234AC8DA6FD9883C06A2DB920510EAACCC2004F64962DD604D6C13A4E
        8A14096447A797CBA54DD9FEA5F1E5F8F7A1490956F8473DB357F87F21017236
        E99B77D14833F3B118BB16FBD27022F11DD7DB8B170C01B9A182A32367362A78
        A5391FF0AE84EF6B7B4890AE3C5790A8F608EDDC421651DF8D4FE7BF0F4D5604
        11F9857B4B68F59F5E3CCC467F1589570D1D3CE4B54CC086C7FD3A77247CB06F
        59809C2D515D3C13CAABCDDA21E121E59EB9FBF046CF1E7140107D3366A152F8
        251DBB988D6F15C4BF0F4D8EA3D00672AF44F5F2F1FE0F2BCB4E7CEC59CD59FC
        998E36FD6A1B97720331D131156B34F8FA692758C919FC66835C3ADC65AEDEBC
        F720DC7EB950399AE5D231EDDF8D8FB30AF61F8626378E3851A1617065F5C7F1
        EF86E8F6883520396F73A64DDA799709F54B042DD1DB758AA4751639E6DC0742
        64783748875699BED6D826A65F0FA8AF9D2143F2A36C0118674C0E20FF303489
        B17FB77953F702A57D7CFE71D9B3DE6BD0F0EC01D9FACC62AE733A0166BA272F
        D0FC82C00E1DE3BCB34021FE5D25B983DC7A23D73DC44AA473C76033977F5720
        657A3C8D504947F20F439382AEFB30A840E834EDC7FBBF0B03D5DE1EFB35B802
        3567B59578FF638EED54BF47F4DCFB5519F423AF52D41B4343C63F746478C71C
        F486F84C608CC68138A7F5EBE964677354E23F0F4D367D2C0C025F9D9A93201F
        965C826BD9AC04DEF89E6C74CE846CAF73A08B3A6D2232D7E335B76201655C5D
        085CF20CCB9BDCE47B7861DF4C6FB98B51D37F6C50774B378DECE93F0F4DEEA5
        89005E612CD51F5FFE6C6228D4C031873FF1BFEB8306EDF30ECF33931D84DD8C
        5E37A2DBF63AF01085CBDE83C3C35EBA7573ACCF9A7142B9382AC18DE8688047
        788C1FB059FE0F43936D3502834D7EED7B531F67C0396EE8915258961D437D5B
        F9AB8B179F68074FCE74439B9731235733E8072A9AFB3A3BBD265F18874714DB
        DB82B4269C487C89DDD0E0C1E835824C9189FF3C34C983EFF25C6205A6FBC7FB
        BF861197443F5D664D7B56362A8253E43C879BD9DB65998D302CA021ABD80D41
        B4CBD8BEBCE7F685E4A1F68C4BB8089F6DA49C6D9DC1C6DF8DC3728B9DBD4FF7
        6F4393ADA49AFCBC32890A081FF77FD6E12383C3702724B44690CBBF4021D27B
        309E17568411A65957A9D8C26F65AD2CA98A27AA8B4827BABFF760E772FD31CE
        E2DAE81583239ACDBF0F4D5253961ADD101359BA8FDF7F925A421DD068C47C96
        78B2B748F3400D36DB597A69571F6C84775113C10C111CE17D8279710F1773E0
        ADECB32160ABB31F7E7923A22D4F18DD0BD591AAF6B7A149A25895F7906DD6CB
        11147FBCFE07F1A8CC79CFF181D1F59F7CEFFC2A306F40A2811B5DDB93895E28
        60500F11CA71EDABC28376B6AD6566B701E9CF76EE279A4F413D4280FB1E8C83
        DD8270E4EF43934A230ABCA8100CD69E9E8FA7FF7195E635B10D52D1C3EE17BA
        80EB81775626ED85290CD4A983D96E40706FEF8DE7B25DDDCC7B33AC76B63A0B
        FA0E18C7FAB586DEC35991E8CD662A6157EFD25F8726270A4A6B306EA589A2AF
        44B878E88FFB7F0B945C2F4893DCCCC9440CE17503CE710F5A965CDA8C472BE5
        95B5580B7FEC5AA5543E7A271137F951878171119B84B98EBEB9C98CED02234B
        E2522EF22F4393BB0756D6DC67C751D7C8ACA8E5E9E3F31F5C0BE210EC60B8B7
        3F64DCDB173179B394E5754DDB36C6B5385A585D38C3F85E7085AA7751EB1645
        BEE70D2608EF8C87AD3116667213529A03C14B69FBF1E7D0241047A416CE13D3
        F0D4DD9C9D8FDBC701D095181E8CAFF068332781C0AEC2F894B79306C77BBC1C
        1401B19A1E1E3B3BD67E46A0F64BEE3337D06B9A1496CC753C0870F6B564CA8E
        E5E8882B43A87F199AA408990C8D52E10F91F74D7AB9C68FE7BF371B296E00D2
        8008A9E604F6D4206C45030E471D1B79CD6CBD873A12CC91FF498DDEED926F1F
        B142EC3C415C8E8C9A5C368F64F0E8FD46A6E0711FE0CFA1C98551895BE2B531
        3C6BA8EEDD4EC33EDEFF9753257CEB82CED095EF73015475C66C65C1F592629A
        417D41B8EBE6ED169ECDB4FE31E3FD1B30C0417B1FC94BF993CA981B14D3BABC
        746AD107F2C7D064164C493D729E09110FA2505267F3FBC7F35F4C62B852B3A3
        E90DC59EEB106C3FABE290949E2921B0D65BAB8946C2E6086FD6E70B77692602
        6B5E94435628744070FC5732D3F7B20EF37B68D27881489747526EB204CD898C
        6511044362FA7805D489B081AAE93647C1B3A9F71D91AC8D5185D66432375CCC
        D8AB649C53911BC93D5CBB4602A7662ABC30E9911D03DBA300DC0E4F500390FA
        C7352872845ADF9913785191105A163E08A57E47A041651E4E2DF5E3F9FF6A59
        F4DC3797D2BE6E3BFA6E3FD3B92250B7AF78D27D1687B7951A16101D2FE04EE4
        F61800DE573ADD8A26B497D7BE86D93A78220CEAADA5D183103B86C452E714ED
        8E94B9170C81AE63E49B85D199F5B1F1DC15FDFCFD17456C6D47C2A7613D8F0B
        176808F216C2A842475FE67585B3D7596E5AECABAD46597320F455E9B522157A
        4D1B26CB3ACBDD476EB801CF75ED2EF54458891A83C935586E141C9AC1A1F602
        9B3BDE7DB6D4AB25584F3FBD7E3226F9DDD81CEEB80746726A6AA21118A21D85
        38889B0B7941CAC6E4172AB157100911A1B3138980A9D2104990D21198F70493
        392FB9A775826229F5815AB36C183AEB0C73E1BC0EB92038B20835C0C04AF59A
        3E7EFF69B4819C8190D0F398493C906B9DED0EC2B60D88D9A4E35EA253D7789A
        5B8BE807B2D6730E80AD474417B8E116C0E32886002B89972245A3B9B3486ED6
        86415F9BE15C46B00B5AF9BDD91925D2CC1B8B92C4D23FDEFF3460B504ACAC77
        9DD71E5F7BD937A11C1C12B91022F4DD30AB59ED06F1AE4093667D98A5B6C9FF
        E7C550456AAF6DC8DA763AEF51C81E1D88BF04EFD2DE724EBEAF5B77CCF49D7A
        E02AF6B18A351C088B633FA26A1F9FFFE51894AC94669D37B5B5973F4B5FD11A
        509DD1272C20735A286F540D7C91EAC3935C2D25EAE89492FB688492EC7983C1
        F8C5F3CA5C09634B2F1709CBA75947D4BBDA90FE868D12D17A2663220C2AC728
        2CDFD17FDCFFB779ED459F71289A7907985BF5BCB21C7160E561A03758C4BCDD
        E07E10FFC1FEA4BE52AEA5D02FE6C97B68926885F1CC22A667F8C31A113D7708
        988EF7DDA0FBD597888A843FFAD3E9FFCCB69175124E1D687BDC67170FF3FA3F
        7471AA9E886DED2CE5A275A25BF759C2F3DA6F74FF06A12BF4801421AB6866DA
        E72E325DECDDB93F8726959C7741E15288B4BE46C3C4BEEBB6BE115565AD82AB
        0725FD9D64CFCB6C021BB369F8818BDAFE71FE974D7326E73699589B77162D26
        CE1E1659EDBE853328A5AD99473991AC7B63D781CCD6ACC7BF0F4DE6DD3BA3A2
        ADE91C76DEF0FA806E812297CE0801ED62B51DB92904BD3C83D7BECDDCF18765
        5FF031B6151DFC9C70E8E8F7E77DF7AB3131F4DD462391DF595883817015A471
        141A5D97DC738E7F1F9A2C5BC2252A261CA106B140831D44BC66F3C3D2B94187
        D9996673940CBDCB2CA883DE3EBFFE3359CF1CD49517083BE73A2368454CACD7
        9D5B01524F648BCA115E47E99A418DCBA966DF7E5921FDCBD0E445E5EA18F108
        6E17B70EF4FC30AF7EC5E02FAB410EDDF2810A964BE56DF78201B1103E5EFFDD
        5759A2718622B5011213A5E23C1808D186468AB2CEEB2A6307B9BD3A1A78DB77
        847CA4CD9E77AD9725FD65685267B0E5D8FA01E6DCE664BF39E7B4FCCC95AACB
        C3769E33C0760D4467998D68E73E3E3FFFF233E989689F59446B906743E32803
        CAB910C283AAD4958DF4D753C901B786ACD49C7CE80D113251C1FC3934A928F1
        BD3F4F471495513334850D66EB6363B3B6506F70035480596183965728A33E1F
        C7FF40AD74E358348860F04C47A6D99E7095088BC984E361EFE39AC5B06C1E5C
        A45B398263FB3236F3E2550E7F0C4D36662CBA8AF2BCCB00279B17A41185069E
        43D0D6F134F8693C44F76E04B2EFA123F878FC97D0B30D487A35E7BE0F5BAA0A
        B25FA9CFC1B7E81BB451749CC16D89764ECB435FCCF160A08778E8D1FCE27E0D
        4D62080D730016D714504578BB86C7D8873BE2C0F76357C1178C2A6E5C0298D6
        3F99FF8FD7BF76833A4F08F5B1334066BE1F83C2D252CF26C665DBF2F5F31D15
        EFC76D05965B6DD99C43078487EA35661728FC0C4DD6E4D6D94E6903BF8E5958
        D078D0A813A5E6D53DA7340A79C448184F913CE49E307C9A8FE77F1C1333F4A5
        CC1008CC5BFFF642093A7F643191225AD94F242B4B78F769CC923DEF7398E54A
        B8FE80D467A688C80C057EDF695B527A278618BC9A07C647159E23AF7691977D
        DA3EA53F577E701FAF73CFA03F9EFF6BB3DE41F7D74BC372C5B5C4C5CE6B4096
        49F07C3E5E78F073B83FFD5CD5F0602C441BE8E4F5CC9201A98CB08EFB35AF07
        E99D5703178FDBFCC95EA313E8F8E7770B8044D319B54D0788E116F858665F38
        3C257C1E0013385FEC9989701250F3318685E3EE8457FEC06C6DDF8398938A66
        3F349EFDBCBB3ABDF2CC810F935FA3D4947620FB8F1DFB4DE03B6B9E3A70CDD6
        7FB21F0EE21C8D5FD6F9E1736AD88E71775D244687A37D1CFFA215BB79AB0DD7
        D7FB2C621827D5E8B04E87CEFE3DD46FB9F6D6F4D4302C0AF5A8C7FFBABBE27E
        96C64D8B1E83C4FB0A599552B489A534E2362B218F947D407E75876AB063749D
        43D4FAE0F5502EC55928FD78FFD78E8FA0BDD77AB53F371230C6575846DCA3BE
        6F1B038C1BBDB7AF8B337A0E8B818A8030087FB016AE10C16338A852A3EA47B1
        A2671F9B30E0F6130C02A6549755EB1AF8F284BDBB048B9D77AD222F34B3DED6
        8F8FF7BFBEEE43BE51605B057B4FB39304BA63C86EAF5D9503B62B957BDB7BAD
        E7BCDED5CE0B4E1121813395813CAEDEC756ED82EC7978E92C21430AE69962B2
        2EA0EA086C66D6D7E5C1F8270E84D2C15C20D79FCECFEDE3EB67752C10CEBCB7
        B89A772D2F16F4DF33DBA5F9BAF1ED4EB0EDE258289B630D838ED3E26FF54D11
        44F09173CA19A261B723FC23307B630DC1C8C0F025B575445743420113A55A80
        41E9CD5A36BB2CD88FE7FB78FD0B285A2587B1B5D8E77780D1C0E18A48620668
        546232F9FE3C24F7C62A63C0BCE6086E6BF7B3945FF7D79095F0ABD0F7BF237B
        442B42103C9921E2C7FC532FBC67FF03C38F60F83994AD2E5E075D9F8FC39F99
        C643EDCC2B3E99EC33EF832B9505FD35C6EB5DA406719D8784C470A66A270A72
        AF39B5BC4644C8AC297E3A0CE3E813BA9F9739476DDCEC93783292A5F92D3F73
        069672614722797655B38170613B520F0F02ABE7E3F8F7C4839C1720CC419F5C
        2617FAB9930AFF3F8D23C407EC6E09DBED30DA65658DBDB493647E6F9271E5B6
        ADAF210021C7B2505E48293EBE6FB5EBC8912EAEC4BC0891D4B63D4879BB1937
        B453B42D4D02BD0AE13FDEFFF43879A363B6CE1199DFA77113847CDC2308DE35
        22F932D0910B876CB56D2397FD5589D1CA0EBBECFD65FCCEA4CE5686CEC86217
        4D901483A4CD9805F76A41CC633706BE5A1F0AE45D3E0B34BD6762F60AC415FD
        F1F5730932575273154B6703ED36DE08E6E70D277338711F1B7AF154545B9452
        9B5B77C400CD29498B9739F83578A58EDC576AFDDA0D2394216E4E2B7A5092C4
        DA9413E209C14B1067E2B2C1DE54458C2C07C201C1F9C7EB3FB3A57BE95E527F
        A844DDA53DB40452A5755E7AC3AE63AF92A7B3CC07A526440EBC048927693734
        F85315CB4ABD1CDF948FED2648A5E655A91B47E0BB1C5B11FB82E1637208C3CD
        A6818A3CFA928BA11ED7BF7E1EFE89347DDA85189EED68A2B0CE3BAFFCF26C70
        415AF0B4259258D45A163B74AE513F8413B1F7F71D0E9EF37999EF6B312BC6B3
        7536C21D5BABA9CCD6E8860CE144F5996334BFC69CDAF3D0DD2A648495422321
        7DDEFF653EC773616D68A1B9FFEA4733635EE71EE697387539F3BCB5951BE2B8
        88DF82CF55E9798787423B660B225990693DD644A70B3DCAE21C82C13491ED8A
        26A18E92DED77CBE43FD93D233BBC4F79A675DD87EFCFE9B57676A0668534958
        550E939122314135461E7F723406D7127BFCE1DCEB41E497E96C6A9F77B854F0
        CEE196DD74363C1DEF2F4EC1A0208D5CFBA4F5F3AB52A574C7FB0E98617C0CC6
        69A8CCCD3E89542E9A576F3E3EFF788C95CFAFBC59BCE6C87BE7B7B7006D2C07
        4AB27B67677DC9767E29EA5D0F17D1E673213F77F8E8F7589B8981E6E8981E47
        9746B0A56C21378E86559CD67C436EE11666EFB3853A2E406D7125AEC1E88794
        B17FDCFFD3520617753F072E968F3AAFE86142EBBCD6BACCCC0F4523471C8367
        277958AB44E5FF75875357BAE499C78A44298C983231D7D1B5198956B5886167
        57ACE0508EB3B2718DBDE7ABCFC892CF0B03CD1673941F3F7FC2B69540E56722
        29AAEDAAE7A9735CD654F2E2F47BDE01EAAB663367F7896F02D1FECF1D5E1077
        3A5EEBBC220095DD7BB918AA6423B3151821CF8674E07DA92C6EC67957464B76
        088FC2845894123496837C3CFB8D422B04A0E8AEC23888693D8F2D3BB408B358
        09351C6C3D2F786CEAF38E779596E5F71D6EB35DEC200A19E02B53DBD3BC2C7B
        D59E00AF2FD094E25600A1FBBB2B3C3C0DD8CC08A4AEC06F201E9FE2DEE7E8D4
        87654E70F95E4FFFFE16BCD9F98E4F760B7152B620A3137748014633FBDD81DF
        3D6FFD8F3BFC607E6B9252CF037743DFCFEDB29475C2A6E3196BA16A4598137C
        FB8971CFA98ED41404824B562CCF0BE0CF2A3FDEFFFE786BE1DC7D519078C155
        B9E913069C2F4DDBFCDE03C4C2E1813D9D0BA4D5B070FDBECAE63DE78A90081E
        CE5E78FA4216CB8FF717DEDA4B78ABA7D340F05B90F2CE4999BED459425D1654
        AAA6E29E9007998FE7FFFAD14B7105C92E02E1BD8050D6DB771BFFBCC3D34147
        5CF49A57C2CF8B81D8E239F9E30ECF32531EB397E5415CE893595C9CDF793DC7
        A8F0476AF7BECCE9C7F5D5A2C24DEE401AE28C74D482B6847603447FBEFC830E
        7ACE2BB2D9CC420EC4BA5CB79FACFCBCC3D5AC85F7D9EB36CBDB6B99364CFEB8
        CAA6DA52DF5F72FD6E9D6C7C5541CFAF103C110AA2B9CB7CA6B22182B83BBA12
        C138995F31DC67E973DE8DF9C6439F87FFBFE4200B3EEA5642897EE62CB6B9AE
        19A0CB985FFF266699E4D56A70F12F57D9D48DCA776100F94F20BC9AB0480C12
        33C9DBFBFEBE01496098C8F275D8F915BBF5B831EACDA4C9FBB708C8CFF7FF7F
        E52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF
        7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295
        AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF2
        95AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BE
        F295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57BEF295AF7CE52B5FF9CA57
        BEF295AF7CE52B5FF9CA57BEF21580FF07DD9A19997729A6F700003213695458
        74584D4C3A636F6D2E61646F62652E786D7000000000003C3F787061636B6574
        20626567696E3D22EFBBBF222069643D2257354D304D7043656869487A726553
        7A4E54637A6B633964223F3E0A3C783A786D706D65746120786D6C6E733A783D
        2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520
        584D5020436F726520342E312D633033342034362E3237323937362C20536174
        204A616E20323720323030372032323A33373A33372020202020202020223E0A
        2020203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
        772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
        7323223E0A2020202020203C7264663A4465736372697074696F6E207264663A
        61626F75743D22220A202020202020202020202020786D6C6E733A7861703D22
        687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F223E0A20
        20202020202020203C7861703A43726561746F72546F6F6C3E41646F62652046
        697265776F726B73204353333C2F7861703A43726561746F72546F6F6C3E0A20
        20202020202020203C7861703A437265617465446174653E323031312D30342D
        31375432323A33363A34345A3C2F7861703A437265617465446174653E0A2020
        202020202020203C7861703A4D6F64696679446174653E323031342D30362D30
        355431313A34353A31345A3C2F7861703A4D6F64696679446174653E0A202020
        2020203C2F7264663A4465736372697074696F6E3E0A2020202020203C726466
        3A4465736372697074696F6E207264663A61626F75743D22220A202020202020
        202020202020786D6C6E733A64633D22687474703A2F2F7075726C2E6F72672F
        64632F656C656D656E74732F312E312F223E0A2020202020202020203C64633A
        666F726D61743E696D6167652F706E673C2F64633A666F726D61743E0A202020
        2020203C2F7264663A4465736372697074696F6E3E0A2020203C2F7264663A52
        44463E0A3C2F783A786D706D6574613E0A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020200A2020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020200A202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020200A20202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020200A2020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020200A202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        200A202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020200A20202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020200A2020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020200A202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020200A20202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020200A2020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020202020202020200A
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020200A202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020200A20202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020200A2020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020200A202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020200A20202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020202020202020202020200A2020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20200A2020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020200A202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020200A20202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020200A2020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020200A202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020200A20202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        0A20202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020200A2020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020200A202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020200A20202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        20202020202020202020202020202020202020200A2020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        202020202020202020202020202020202020202020202020200A202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020200A20
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020202020202020202020202020202020202020202020202020202020202020
        2020200A20202020202020202020202020202020202020202020202020202020
        0A3C3F787061636B657420656E643D2277223F3E0432B6E5000025C549444154
        78DAED9D079203398E455BF7BFC3FAF1DEFBBDC3FAF1DEFB39416F9436A44D51
        20F8E1C1543126BA93005212F182647E30ABE7F2DD8F7CF0E10760FB108E94DD
        C3C550BE593C12AB89413EC3AB5D2440B43FC802C5927CD4B63D10CD0F5BC54A
        67C9CCBEFB2C310191FE306F28679C256620D21FA885123D4BA4F7B40722F991
        9E50CE364B5C81487EA4D79E31B36700D80288E4C7666EE4A8AD1ACAE57B1F9D
        03B17ED90E50B602E2F1C5598FBB943DE311B80C88E50774D22094ADD32C1103
        D1FE880C0D42D95F0688E6C774D520484CD6B2650622FD419AE589F355954AA2
        66890B10E98FF28452354BB60022F961D9C2709759E20E04FD611DCA272F0304
        FD71679B252E40BEFFB177A51ED997361688C717758312FDC89B06C4F2A5673F
        C2F55CB65440345FDEA97C229D3599CB960988F4CBCF7A84DB0A88F447742D9F
        7459B6DC80487E48070D42D93C6785168A2B10C98F39E311AEC72C090182FEA0
        DD0EA7B60682FEA83309438F65EBF2838FF3402AD57AC52CA95EB69640904458
        EF3BAB520F0782244A1BEFA141560942632A972D3510CD9775D520484CD6E66E
        02A2F9D20A28954ABD0488F4CB357BC6CCD7E1E96AEC5B962D5720922FDFFD70
        2A6AD9720722F901AFA241CA81487E4494065925098DF19A15683EC280A03FE4
        7D963CB6CB0F3FB10612ADD6CF72389506044D9EE5BE2C0D42D9B26605923B31
        10C9874BEF3963D95D3A4BD440245F82C6676910CA96B1B9A700917C1912BBE3
        2CF15CB6DC80205F86C656EC1BAB98AC65CB1508FAA548CCCE9B39175B0204F9
        E2558C75E9DA75D90A03B2FA6224C67DDFB8FF034F5604843220AB2F4762D0E4
        AF9280C664006281FCE893B12F5BA3F7563D5D213111B362362E1808F261967B
        A296AEAE4ADD15C8EA43B5F159C2B0F3B26502B2FA704D6CC7B2FBD88F5CB65C
        80AC92268DEBAE41C6BEE7B2E50A64F625D2B88EB3246BD97207C2254E12D77D
        96442D5B2140B8A44862B20B8AA3AD02502890D9A0D198579825E940668941FD
        9DCBEE63DF05C88F3F15FFB235726F95064162A2F78EE3B508089A40ED3D55E5
        939465EBC3C7BAA63B9055B2B4F115FBC62A2673D93203E106A9898D58BA3A2A
        F5599C1B90D9C035B1D6A5ABEBB285C4B90259254E1217BD6F203115CB560890
        59029E833E987E79F759123563C28070C94363AA6749C5B2150A649604494C65
        4171D58F58B6C28170C941FC9D35C8D87753EA97CB0750B32875E4FE08283B3D
        F2BEB5CB4F3E9DA7D457F755954F3A2D5B6A20481235F7749C25A94ADD0A6495
        304D6C45F9A4CBB2E506844B86266ED7CD9CF3414ADD1BC82C41D2B86EB3244D
        A947009925441AD7799678CF9870205CA224319E33822AD5748070EC87039925
        0B8D39C32C1129F50C20B364A1FE2E4F57633F62C6DC8164A8F53340895EB62E
        3FFD4CDECBD6C83DD6A5ABEB2C814B271620AB6469E3A3F70D24C67B56703E77
        20DCC035B1DD6749E48C7105C2254D1A5B3D4BAA962D77205C02A4719505C5B1
        EFA1D4A1D24914905952243167D0209C2F1DC82C519298CA5992B96CA5019925
        4612D345838CFD88652B05089730C49F394BCA4B274720D56A7D875912BD6C5D
        7EF6D93D8E7067BEEC656AEC7BED1DB76606C225461BEBFD7445D92A6705E773
        03C22543137786475E55E9C41BC82C41D2B8EA59E22104D1B870205C5224319D
        66495AE92412C82C5192982E4F57633F6AC6840399250B8DA99C2515CB560A90
        59B2503F0A65E7652B1DC82C61A8DF6B462031558FBCA4308C56EBD1E5932EB3
        443B63AE405008D2246AE3A3F70D49F224B12EA5939F7FEEFD0877D5CFACF8BA
        02E192268DEDA441C67EA852F706C225491A6781B2AD528F02324B8A24AED32C
        C9AAF88602E19285FA336749F4B285DC930264961CD45F553E2951EA59406609
        43FC9EB3A4FBB2950A84FAE1A8BFE32CF1DC3B6E7D1248A55ACF289F643FF28A
        4A27372016B5AE0193A9415649E19214E16381FCE2F3354A7D15FF8A8FBCEE40
        B8046962ABF68D553F62EFB8B510205CA2243195B3A4AC741209649628494C97
        5992A6D4A381CC9285C6ECA0D4B703324B0E1A83DACFB06CA50199250CF57B2D
        5392844962DD4A279940660942FCDD67895BE964062452AD67974FA236F790D2
        C91148A65A8F84D241A96B615D81585F724012298DED344B3267CCE5975F783F
        C245EECF58B64281CC92228DAB1286914290F38502E19285C678CE921D96AD14
        20B304A2FEEEB3C455A9670199250CF577DECC395F6B20D440507F9452E792A3
        F5994A27D940664942FC9D67899B52E78054A9F54E406689D3C689817451EB67
        52EAA2D2C90DC82E6A7D97654B5D3A7903E20963952849DC4B2AF55F7D71BF23
        DC5522D0986ECB560A9059B22431DD3673CE672E9D640099FD28D4DF7D96B896
        4E3281CC9286F83B6FE69CAF3D106A30882F6B9654ED1DB756026496B895AFF3
        2C712B9DAC80208FC41AA5BEBACFF39177ABD20905244BAD6BF6938C5952B96C
        3D01F112895651C8F97698256620116A3D0A4AC42CE9B26C5D8144954EB864A1
        3155B3A4AC74F2EB2FF538C2E562BC6604978C553FAD74920564962034A6FA91
        37AD74920984FA61A8BF1A08E7F384950E841A00EAEFF4C81B563AA900420D08
        F157CF9294D2090264F514D65DA9AF62223588F41E1688E671580AC703CA9996
        2D1288872EF12AA1542C5348E224712620DE22D1AAD6B366499BD2C90D48A45A
        8F80D2F191D7A574F20624BA74324B201A13354B3A2E5B97DF7CF95D187AFAB6
        03420D0EF5576EE69C6F7B20D460115FA75912563AA902420D04F175D9CC395F
        0A902E6A3D6296544310018956EB3BCF9290D2C90C48A65ACF50EADAA4697D6A
        614801A9F8D384EAF2499765EB0148B55A3F93523703D951AD77DBCCD1B8A50E
        C980C12511F1BFCAB2950E649648C41FBD994B62C380FCF62BFD943AE7B71614
        57FD9705420D18F175DCCCD13848184A8044A8750F28DD36F77020DDD47AE62C
        6905A4835A8F9A2591B362E63301E9A4D63B3DF286974E282055FF2101EF59B2
        E3B2F504A4FA4F137656EAEE40B20462A630CC1482D27B58209DD47AC7599256
        3A7903920D633648C477E647DE2B90DF7DB54EA953835EF9BA2F5BE94032D57A
        D62CA99C316A20556ABD7A96A42BF51510EBFE62158533DF191F79DF1A0B245B
        ADEFA6D4538154FD87043CF70D6EE0AB7ED53E4202E9F8B2C3AB2C5B4F403AA8
        F50E1A84F3A501D951AD572875EF72C9F1FA0EA442AD6B6A5A1D3673344E03AA
        14083550C4679D259D97AD2B10290C6FB55E5D3EA98670BCBEFCFE6B7E2F3920
        8993C66A67498452F702670652ADD62B1F7933670F046427B57E86658B0552A1
        D6236789F7B2950AA452AD67CD92CA654B04A4C39F26643C5D218993C4B9D4B2
        46205DFE34A1F32C092D9D5402A112B2F2750632F3A981ECA2D6B3947A56B9E4
        787D07D255AD67CF92AA254C0DA48B5A3FA306B90B4324C9196ABDBB52B7DC03
        03F9C3D7E34B275C12D1985778E485807456EB519B39E70BAF657140AAD4FAAB
        6A90B7360552ADD6BD6649A7654B0DA4B35A3FCB236F5B205422A4F6DD972D16
        48B7971D3A3EF286D6B28E402AD5BA77F9A4EBB21502244AAD470AC38E338605
        7206B5BEF3B2250652ADD6AB962DE93DE65AD61B902C18B341A2FEACCD5C9240
        F4DA0D48A7FF88C01997AD27207FFC464DE9844A08E2F7DCCCA5C98BBE2E0742
        2568E5ABD020689CC73E3205B253F96497654B0DA4935AEF324BD26A59562019
        6AFD8C9BF9F19A05B28B5A8F52EA5EB0D4B52C0D10ED92F6AED48540BAA875AF
        59D211C8F1DA04A4835AAFDECC8FFDB05AD60D4876F9841A2CE2CBA85FA17111
        FB0804A4D3CB0E519BB936819AEB25902A18B3C4AC7C3B6EE6B36B11900E6A3D
        739654944B9E80FCE99BB5B5AC590256F6CE7BC7F15A1A3B05E275BEFEAED485
        B52C0B1009346FA54ED93A42985D8B807454EB3B2C5B2EB52C0D90E8971DBC66
        49E58C51D7B246209DCB276758B65C81742C9F442C5BA5B5AC23906E2F3BECA8
        D4CDB52C0448E5CB0E3B3FF29A80EC543EC950EA5570964076299F78EF1D485C
        041C5720996A7D056997475E128815061AA71585337BD7BDE378ADAA65698144
        A975ED2CE9FEC86B02D251AD676CE6685CD43E72F9F3B7E4C5C50CB51E314B3A
        ED1DB3FB48205DD4BA66967459B652807455EB1D37F3E3B524F60948B7971DB2
        34883471C76BCF581848A55ADF69965863DF813483F300A4835AF782E209814A
        9CF4DA0D4817B5EE394B22668C5B2DCB0A24EAFF4E2F72339726507AED02A49B
        5AAF52EAD570D440AAD47A8747DEC85815902CB5EE3D4B3AEF1DB77F5F8154CD
        0E2EA99C7DD7BD03891503E9503EB1D4B3BAEC1DB3581248B7971D3A3EF2466D
        ECAD8050094312B9EA47CF18D75AD65FBE8D557BAD6A1D55EAB3D85D1E79DD81
        586687975A8F9E259DE140402AD47A57A51E5ECBB202B1EC2BD1503A3DF2BA01
        89D6231D947A27380F40CE583EB13CFE6E05A453F9247BD98A84C302E9A2D62D
        CB943481D26BF75AD60D4887F209954CD4B6FBDE71FBB7184897F249D6B2950D
        670A244220A26ABDAB52F7BCCF0588975A47C0ECF4C8EBE97703E2ADD635B364
        D77DE40948058C591257BEEEE512ABBF1C089538CE57BD6C45C331038956EB1D
        3673494225B16A20DDD4BAC7AC902409B9F6F23F013943F9A4FA91D7325B2E7F
        FD8EAEFCDEB97C52BD8F58FC4B205DCB2767D4206A205DD4BAE7DE2149A2F63E
        3110AFE5CA43ADBFA2065902893E5FF78652BD774862538054944FBAEE1DABD8
        D93D22201DCA2759CB56D5C6EE0224F265870ECB56E6C63E05D2B97C52B96CA5
        01E95C3EB1CC92DDE0988064AAF58E8FBCEF40185BF523AFD7931609245A2022
        6A7DE7475ECB3D10902E6A3DB274D265B68400F152EB558FBC95B3E50A44BA7F
        54AAF5EC652B4A91CFFCAE4022D47AF5666E492EE21703C93CB0F2108616581D
        36F62720D502D1FA74254DAC2579DE7E37209E7A2472967482B30D90F1C7CE6C
        BB6B90D9E7B040BAAB75AFCDBDD36CB9FCED5FE767EA9102512A0A295BF5236F
        C46C0905B2826585721620C7EB0720550251AB41A409B65C67C18181441F58B9
        3C5DDDFF81254992504D7235F7B803F156EB15CB569528BCE66F06A473F9A4BB
        06B1DCE30A24AA7C229925082C4F38DE4F5AED805049A56C11CB5687D90201E9
        503ED9418378DCD312C8F84367B66E7BC7CA2F022279C292E89159CC4A145231
        9ECB56C56C413E271C8845AD673DF276DAD84920D9025102A5E3DE81241AB599
        8164974FBAEF23D6CF5902C914881A281640114B95F573428044974F762E979C
        020865DF75A95A7DB60848A7F24964B9A4F249AB25102AC9DCA0918448922789
        F5B6B902A92C9FECBE77940091AAF51D348837B02720A806F13C5F4737722E01
        1E09D7245273CF12886646780BC46C61D86DA94A036255EB5D3548D4E7C04032
        F448570D92395B5A01197FE0CC16F9C85BB554DDAE5540BA954FCEB054DDFEDD
        12C8F88357FD336DEC214032CA27C8E36F97D9720A205CA2D1244B121E9968F4
        1E17205681C8A9F557D320D7FC7803D108442D94EE1B7B6B20DA971D50209E09
        8F48F46AA9BAE709016255ECD6971DA410AC09B226DD629B02F128A7ACECABE4
        CF6C6750E4335B38100FB5DE4583B40752553E9102DA69B68402F12C9F9C7DEF
        D80E0892386D7233128DDA1E8064E911B45568902A60A54050B56E5DB6769C2D
        E940A46ABDB25C727A201AB57E760D9202C45BAD23C9B6263723F9886D3B2048
        4277493E651301897845886A514A3D63F96A0124428F64ED1D9EC9B4DAB605A2
        4D78A7E4CF6CEE40B2CA2759B381F27F78FFC73B10D575A7D9D216C8D13E1385
        16081D92AFB1950091A875E92C7907025EAF6050C9A76C3B28F25020D90251AB
        D4779C2DE540B46AFD15F68E6D81480669F567ABF46B8E3C81780AC40E1AA402
        521A10CF7AD619972A372091027196ECD520ADFE4A48DB00894EBEB76D4B2088
        5A3FD352D50608AA47A235087A4F25A456402828518FBC5D1E73475B0910A95A
        DF69EFA06CAE4056C9EF00A453F2511B0444937C8FFAD60A4AA528CC86B40590
        ACE45B93E9F1B96D812009AF4A3E6A6B09C4AB9E7596A5EA344022931F9960E9
        678400D1EA118D30EC68B37C462B2014941D97AA6D8120E5930E1B7BE667B403
        8242A9B6457D461910C9DB27DE4B556748D3FF2A69251024E11D93E9F1B9EF40
        9AEC1DED8164273F33E92A2094AD0390EA64467F460910AF8AEF192189805036
        CF720AA7D4775B96B49F6106824242805050BA24786B20121BD57FC5BDA30D90
        55F9E48CCB12676B0964F5C3774AB0190895B84A20BB27F81DC8E69020201990
        10205D92D9128837240ECA0E09F682744A209D122CFD4EF2FFE0BE0AC8DB75E7
        A52AE33B5D81583E430A649704BB02F180A481BA5382BD218503D17CC699122C
        B58981784042815427A7E2332E7FFDCEF39F2354681214C8AE9052817840CA04
        929960E9679040BC132CB59D29C16D80583E63B775DFF33B612099903C06D625
        C1A940A220A1E27087049B807824F8BD7C62FB0C772096CFA05A37201E9F6102
        120569669300E992604F482A2091905E15C8EDFA0A242AC1D2BDC303489704B7
        04827EEE1981683F630A24135234902E90DC8144429A41391310E433CC402C90
        B8EBF1C77A27A20BA425104B823D44E10C082A16770332DA5A0139F667B32312
        48074810106F48333FD7DE8124D950285540AC09967EC61D0895B87720CD8050
        B688A5EA1D880148041C044A272092044B3FE3F2976FC7BCE4E0090479E2EA68
        D37C0609844A66C65285944FACC9F24A5C3910CAA6497E47205EC92C07A24DBE
        04CA086327209ACF6D0764B44915BB5BE2EEFF28048226D873A942957A36104D
        323D3E5705C49A7C74EF7807920484BBEE0C64954C0FDB150895CCE8C75CED2C
        B142884C6628102F1BE247814837F8772086A5EA4C40285B0910899F8220A967
        BD0C100D88280DC2C1D80D08654B0582F891FE0C88B69CF21240247EEE7A665B
        CD8E5D8150B63B100D886C0D3203201978A7E45336772012FFAC8F34AD40EC94
        7CCA160A6416CBC5A3EDB440FEFCADB86A2F7A4DF5511852089D924FD9DE8134
        B3B90191F8D1FEAC6503B124D81DC82AD19EE5124DF9440A41932C4B824D4034
        C9F7AE5F59CA27484235C9B22498B2850291F8A9847B964F90846A1269493E65
        530159253A5A83206A9DB2EF0084B23D00D1243F7BEF98B559023D13EE9D7CCA
        660622F173D7541F6D9AFDA42B90DB350464E5EF08C4F3C92B2AF994ED098835
        F9D11A6406409A7849D2A2924FD9C440A4C9F77CE49D255F937849D2A2924FD9
        5820ABE47B2F55EF400E40ACC98FD620B3C4CF6CA707E2E15FF956F659F229DB
        A980AC929BA141246A9DB26F0BE44FDF94577B257EEE9A4B3CE59BC1A07C2F0B
        441A8BF4A54D23102549F348346A7B00B24A6ED491ED3B90FFBF160191F8D16B
        CE863614802451DE89466D2540903EDA247A449228EF44A3F74C811CAF23F60E
        AF59A2158892E42189947E260B64955CAFE5C94B18CE12CC25DDEB3A7ADF8180
        48FCE8F52CF91D81643E083C01395E67944B3CCB2794FDA58020B1121F62A792
        CEF94E05044978F423AF975A4712E799F0957F09E438F85D1E79C7F60E44714D
        F56736693B2D90E37556B9C4BB7CC2250A49E22A79567F0A10F49AEACF6C6893
        CC0E2489ABE459FD53207FFC86EDDD5ECD35D59FD99026D5231E4996C4860139
        5E576A90B15904A236C9925835104BC2334E0BA996291025C95DF9C5408ED791
        102C50501896646B13BEF29B801CAF333548845A97265B9BF0959F05A24D7846
        D99DF2713028FFD640A409EFA4D4C781CE6C191056B1AD81CC6C9A766A20C7EB
        8C5911513EE112264DEC2AA192583390D9B567D93DBA7CB2EA7750EF77204892
        BB6990B14508444942ADFE2990E375570D3236AB40F448B224560DE4786D8510
        05C45B206A932C899D02F9C3D775B52CCD35D25FD9A9A6991DD2044BAF5D801C
        13510D04F57752EC6372A5FE14202B1F92740FB54ED9B60232BB8EDA3B3CD5FA
        38E099ED1440ACD7547F66B334C9728524507A6D02724C48E5DE51553E411228
        BD760372BC8EDC3BDE81D03616C8ECDA0B4256F984B277AD6FA98068AE91FECA
        8E34647670099326764CA825F601C831111D1E79B3CA275CF290C48E09B5C44E
        811CAFA3F70EED11EED822042292D831A196580888E7F52CC95628121894AD53
        7D2B1C88A64FB5594C77C57EBC8680FCFE6BB1C545A4CF25DCD23A3CFE1EAFC5
        408E89C9D6209C5DDB4E05C4F31AE9CF6C96F60EA4D12CA91488B36B18C83111
        1D36F32CB5CE250949A0F45A05E4786D9D09591A844B3267EF58DF628158AF57
        BE998DB3AF5A078178BC96C6A602A1FA331B679FB52881284DECF1BA1C88C4C7
        D9247E2A8188DF53B1CFAED5406689CCDA3B2C50BC6170C943127BBC760762BD
        46FA339B578BD223339F65790B01A2E9CF6CD6E65D928F7EF2BAFCEEAB3EB52C
        898FEAAFECDA86CC0E2E7148522DD72C9059523DF60E74467802E9AA478ED72A
        209A6B4D7F6597B6970722F17136CE8E366DF9844B22E77305724C40F6DE1151
        3EE9281067D74B209ED7487F66437C54936A92EA0D3E1CC8CA27B121BE557257
        FE6EF52D172012DF2CC19673752A59684C5B20C7015795DDB3D53A656F09C47A
        ADE9CF6C5E2D5220723E6939C50D88C447F557764BCBD423C7BE6606850159C5
        CE6C9C5DDB761088B7EBCB6FBF227B0D88F3551E4ECD9A97405C25D2EB7A0A44
        732DF17136C487B49D04E2ED3A1408D29FD9101FD73C61ACFAAD80487C547F66
        93F8A9B6359071D0DD943AE29F250E8DA9D023D4753810A4BFB2A3315E3028DB
        5640243EA9CDBB550BC4D9F5EDDF6A20121FD25FD93D5AB41EE17C622063322A
        CBEE51503C96ABB1EF5D4E7103E2D1477D9A962D1091387720121FD59FD938BB
        A6ED24102FBFF9F2FA3520CE677DE4CD982551B363ECBB031993B0B3529F2570
        E5DB1E88C427B549FC5493C2A0ECD9CB970A88C487F467364D0C952834A6C37E
        7205320EB6EA91174DB855ADCFE256B36396C4952F1D88C4B74A6A955AA7EC15
        CB971A88C447F52536CF96A147389F2B106D1CD59FD938BB47EB28108FD77720
        6322AA1F79335F765825914BA0C5E70E44E2A3FA331BE2D3B46A8188C4898158
        7C121BE293B45D04220484F36568906CB54ED9D380FCFA4BE755EA54E2107FA5
        40540191F890FECA2E8D9925158DD90208E7ABD020516A9DB2672E5F4F40C6C1
        6697DD33943A9544CE9E2910AF40C644543FF2762A9F50B69703B2F2599B05C6
        68F386B304C2F9BA1F4E51AD4A8F703E12C89880AC59C2D9573E4DEB2010399F
        2B104D7F6693F8D1D64520723E3110890FE9AFECA87FD5BA0AC4B13F0532F63B
        1C4E65AAF555E2A47D14CEE5575FF42D9D68FA2BBB34864B9224A64220AA8048
        7CB3247A68904CB54ED922F4080C44E243FA5C42B3D43A9538CE5E02644CC859
        4E0BA9962510B95812C898840E65F7AA971D66BE2C81280222F121FD990DF159
        DBB640BC7C521BE2D3362B0CCAE62510EF40C6C1777AE4F584D24920523E3110
        898FEA4B6C123FD23A0BC45B1F0262F1ADE211BB34866A5A81985D709C0219FB
        9D1E792BD53A65F3D423975F7E215EA9A3319C5D138BAA752EB62D10890FE973
        09CD54EA54D2387BB44064818CFDB36890B145CD8EB18FF89E808CC9A83C9CAA
        7CD961E64B01320EBED3E15467B54ED9C28178F9A436895FD3BA0A4412C8D8AF
        56EA885FDAB2CFD7C7FE12C838E88E8753192F3BCCFC5902110222F1217D894D
        13336B3B08C4564038BB366E961069DC2AF9AB18159071A03B1C4EEDA0D657FD
        0720BFF87C3FA5BEF245B42E7A240D88C4C6D9A39A647650F6142063FF8C4A9D
        4AD0CA17B9C15F818C83EF324B563E8FE6F108EC5970340159C522F7AFEC2B9F
        B57513884B20121FD297D8247E4DEB2610AFE3A4808CFD2E8753D52F3BCCEC9E
        02F10E641C70D5661EADD6A9A4A0311905470888C487F46736C4278941922789
        CB1088532063BFDB2C91C47AA8F5992F14C838C0CAB27BB6309C258CB347EC27
        979F7FAEA7525FF9225A0781C80219FB158FBC5DD53A65F710884F40C6245403
        41FC1E2D7B768CFDFB89E11B9071D0159B7925148FD941D94280487C487F66E3
        ECA85FD3AA04E2D867818CFD4E8753BBA875CA06BDE47003320EB6B506B95CFF
        676A95E7EB5C1F0222F1517D898DB36BE3B84468E24A808CFDCE8753DE6A9D8B
        8FD6230F40C6C1553FF27653EB339F2B909F7D3646A9A3319C7DE58B68D50756
        2C90B1FF0AB3A45A203E011993E0BD99779E251D04E215C838E88E8FBC1D5F76
        A0EC56404B2012DF2C715E47B8688CB465AAF5D1F674A64E0119FB116F9A7481
        D24D209A81207D898DB34B63562D1A066583818C83DCE5702A52AD73B1517A64
        0A64EC779C25D2782FB53EF379FCC9425B202B5F74ABD2230F40C6246495DD3B
        422903F2D3CFD42B75CEBEF245B44A81180AC46A93F8BD5AD4FBBE940D02320E
        BE8B5247FCD6D6E104F10A641C6CE7C3A928285D04A21888477F66437C9218B4
        7512882490B1DF558364A9752E2E0CC838C0EAC329EF235C2469D2D8880AB00A
        88A62FB1213E6D7CB65AA76C6CF97D0664ECBF8A06195B299031011D6609E28F
        6A1502F1F2934FF757EA88DFBB5509441190B17F160DB24A18EAF7A8003F0119
        071EB16C69ECA8DFDAAA05E215C838D0CE4A1D8DD1B40E02510CC4A3AFB54B63
        24CD0263E6730332F63B6B90AE6A9DB22380EE40C6C1552BF595CF12CB254813
        EB5A7ED700D1F4B9A4799DABA3F748D53A778FF7063F0532F6AB0EA7AA95FA2D
        51529FB69EF500644C408759B2F245B728B54ED9AE407EFCA91E47B89C7DE58B
        6A157F102A0232F62FF77FE0F7CF6C9C1DF57B362D8C994F0D641C78B7C3A933
        944F28DB039071A0198FBC9D8E70B9444963D28168FA121BE293C4485A078148
        0219FB1E00BA1DE1AE92A6897329BFDF808C03DB659668625709D3C47A3D7195
        03E1EC2B9FE51E4FB5CEF9C4E7213320633F7A33EFA641C69625101F808C83EF
        324B107F64CB14882C90B1FF2A1A646C99E593CB8F3EA957EA9ABED68EFABD5B
        B6407C02320EBA9B5247633C5A76F9E43AB61590B1DF4583ECFEB20365BB567B
        DF808C03DC49837453EB339F09C8D8EF7E38E50525F3056CCA0603F1E87389DB
        49ADAFE2AD6F34DE818C03CA5CA622446167B54ED9EEC5C51990883E97A8EE4A
        FDD6B60622B171F6952FAB6508C40720D4C0BBD4B3107F64CB1288971F7E2256
        A94B6C9C1DF547344F1894FDA1B838021907DDF170AAD3CB0E5C8CAADABB02E2
        D197D8109F24C6D22ACED7AF40C6C17578BAAA52EA54923471DA032B12C8D88F
        DCCCAB452192344D9CBADA8B00F1E87349EB02A5C3F9FA1DC838A04E4F5751E7
        EA5CA22CF7840089E873F68C27ABB7CFD0247F6C9102311488C4C6D9517F468B
        16880F40C6415714143B43C91088971F7CBC97525FF9107F44CB12884F40C601
        779C25688C57F38631B343403CFA339BC62E8DB1B608B54ED9EFC5C53720E3E0
        763B9CEAAAD6673EB6DA4B0119FB1A659EAD417679D961661701D1F42536CEBE
        F25962D16469E355C5C51B9071305165F7CCC7DD1DD5FA1488475F62E3ECA83F
        B34509445720688CC6BEF265B648B5FE00841AB4757397D838BB3426AA450BC4
        CBF73FE6ABD4D1188D5D1AE3DD3204E2139071B09D0FA77651EB331F595C5C01
        D1F4D118CEBEF24962AC2DEB38F73A9E3720E3C03A3D5D9D55ADCFEC24108FBE
        D586F82CB148AB50EB2D8070F695CF231E4996365E0D641C48B7B2BB36C9BBA8
        F59B7D0AC4A32FB17176D49FDD2204A22B10AB8DB3A3FEAC16F507A10F40A801
        773C9CEA0025EA7CFDF2BD8FC62B75890DF121FEC816F9E7D24F40C6C15695DD
        ABF5C7AC45974F9640347DAB0DF169E22C2DEB38F70A641C54A7C3A90E503205
        2209C4A32FB171F695CF128BB4EC17B0D381486351BF357E95284BBCA8967503
        420DA2DBE154F4B9FA2C49D67B428068FA5C4276D620C7E6AD475C81586D880F
        F16736EFF2C903106AB01D67091A13DD2204E2E5BB1FA953EA1ABB3426AA4509
        C42720D4403D20CDEC3B1CE18E2DF27C3D0488C4C6D9573E4D9CB545BF0D7F05
        320EA8DBAB3F1DA06409441288475F62E3EC2B9F47FCAA65AA753720688CC6BE
        F279DE334B9447BC08083580EC5962F1716D27B5EE0AC46AE3ECA8BFAA850019
        07DCF570AA1B14D75A160744D3B7DA109F2426BA790BC4CBFFFC8B4DA96B6356
        F6954F1213D52234C913106A909DCB279238CF1625105D80686356F6954F13E7
        D1228F74AF40C6014502D8ED08F7D832042209C4A3CF256747285E3038BF2B10
        AB8DB3A37EAF7BC62479C62F6B593720D48FEF364B10BFCB7D1F7EF08142ACFF
        DFAD9D80586D880FF157358F13C40720E360359B79D646DE0D8AD7712E0B44D3
        97D83476694C46F3D42497FFFEE71CA58EDE8BFA243191CD5B203E01A106B9C3
        E15457B5BE8A0B0162B571F6954F13E7D1A2D4FA150835984EB304F16B63A52D
        5A20BA01B1DA383BEAD7C6A22D43ADDF818C8338CBE1940798CC23DD29104DDF
        6AE3ECD218EB7D96FF24B9A9966501A28DD1DAA53115CD2A101F805003ED5A3E
        4163329BC771AE19883666655FF9243119CD4B205EFEEB9F644A5D1B33B371F6
        954F1213D93C35C913106A80DD678924CEBB790B4415106DCCCCC6D9573E4BAC
        B579C018FD5720D440BA1D4E758212F917BA6E40AC36CE8EFAADF1488BFE7369
        180812D351A96BEF195B965ABF03A17E78D7C3294B82BBAB7513103406BD17F5
        21FEEAE602841A68D75982C654344BF9C40C24C286F8243199CD5A3EB9FCE73F
        F24A9DB275D3205DA078944F9E805003AC7EE4EDAED6DF9A5B2D4B03441B33B3
        597D9A38AFE6FD02F6150835906EB304F16B63B52DE26D7835106D8CD68EFAB5
        B19216F902F61D083580AE8753952594E8B7E14D40B4315ABB34C6EBBE4CC52E
        02A28DE112D141188E9F630120F91CB296750442FDB8EE87535D34C8D8B48FC1
        6220DA98998DB3AF7C9298CC66D12497FFF887BC235C8D7DE593C46434AB400C
        0322B17176D48FC644368F235D1510D476D623DCB1790AC42B106A101D354847
        28DE2F60AB8144D8383BEAB7C6A32D4A20DE81503FBEEBE154D5B9FAAD459EAF
        9B8044D8101FE2F7BE374BAD8B806863B8247439573F7E969752473EEBA97472
        04420DB2FA9177E7971D349A440C441B33B371F6954F1397D5D4A5937FFFFBFE
        C27037281681A802A28DD1DA573E4D5C54B3AAF52B106A20DD6609E2D7C67A34
        2F815802446347FDDA584BF354EB30106D0C97985753EBC83D7720D40FEFFC82
        DC59D5BA0988D5A6B14B633CEFCD50EB0F40A81FEA05491ABBF24962D056A5D6
        8F316620561B675FF92431554D2A109740285B470DD2118AAA74F26F7FD743A9
        5B7C9AB8E8A615882A20680C7AEFCA8EFAA57151CD543A7903420D6277615805
        C55C3AD1024163D07B3D7C1EF1DAE675A40B03D1C67049D9F508F7D8BC05E2FF
        023156028BACA61A160000000049454E44AE426082}
      OnMouseMove = imgLateralMouseMove
      ExplicitWidth = 80
      ExplicitHeight = 639
    end
  end
  object dsBem: TDataSource
    DataSet = cdsBem
    OnStateChange = dsBemStateChange
    OnDataChange = dsBemDataChange
    Left = 24
    Top = 16
  end
  object cdsBem: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from bem'
    Params = <>
    ProviderName = 'dspBem'
    AfterInsert = cdsBemAfterInsert
    AfterEdit = cdsBemAfterEdit
    OnReconcileError = cdsBemReconcileError
    Left = 24
    Top = 72
    object cdsBembemId: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'bemId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsBemidenficacao: TStringField
      FieldName = 'identificacao'
      Required = True
      Size = 50
    end
    object cdsBemdescricao: TStringField
      FieldName = 'descricao'
      Required = True
      Size = 255
    end
    object cdsBemestadoId: TIntegerField
      FieldName = 'estadoId'
      Required = True
    end
    object cdsBemtipoIdentificacao: TIntegerField
      FieldName = 'tipoIdentificacao'
      Required = True
    end
    object cdsBemgestaoId: TIntegerField
      FieldName = 'gestaoId'
    end
    object cdsBemgrupoId: TStringField
      FieldName = 'grupoId'
      Required = True
      Size = 10
    end
    object cdsBemlocalId: TStringField
      FieldName = 'localId'
      Required = True
      Size = 10
    end
    object cdsBemsubgrupoId: TStringField
      FieldName = 'subgrupoId'
      Size = 10
    end
    object cdsBemsubLocalId: TStringField
      FieldName = 'subLocalId'
      Required = True
      Size = 10
    end
    object cdsBemtipoAquisicao: TIntegerField
      FieldName = 'tipoAquisicao'
      Required = True
    end
    object cdsBemquantidade: TFloatField
      FieldName = 'quantidade'
      Required = True
    end
    object cdsBemvalor: TBCDField
      FieldName = 'valor'
      currency = True
      Precision = 19
    end
    object cdsBemvalorAquisicao: TBCDField
      FieldName = 'valorAquisicao'
      ProviderFlags = [pfInUpdate]
      currency = True
      Precision = 19
    end
    object cdsBemidentificacaoAnterior: TStringField
      FieldName = 'identificacaoAnterior'
      Size = 50
    end
  end
  object dspBem: TDataSetProvider
    DataSet = dm.sqlBem
    Options = [poAutoRefresh, poAllowCommandText, poRetainServerOrder, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    AfterUpdateRecord = dspBemAfterUpdateRecord
    Left = 24
    Top = 128
  end
  object dsGrupo: TDataSource
    AutoEdit = False
    DataSet = cdsGrupo
    Left = 521
    Top = 222
  end
  object dsEstado: TDataSource
    AutoEdit = False
    DataSet = cdsEstado
    Left = 521
    Top = 278
  end
  object dsLocalizacao: TDataSource
    AutoEdit = False
    DataSet = cdsLocalizacao
    Left = 521
    Top = 334
  end
  object dsGestao: TDataSource
    AutoEdit = False
    DataSet = cdsGestao
    Left = 521
    Top = 390
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from grupo'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 601
    Top = 222
  end
  object cdsEstado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstado'
    Left = 601
    Top = 278
  end
  object cdsLocalizacao: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from local'
    Params = <>
    ProviderName = 'dspLocalizacao'
    Left = 601
    Top = 334
    object cdsLocalizacaotitulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 100
    end
    object cdsLocalizacaopessoaId: TIntegerField
      FieldName = 'pessoaId'
    end
    object cdsLocalizacaolocalId: TStringField
      FieldName = 'localId'
      Required = True
      Size = 10
    end
    object cdsLocalizacaovLocalId: TStringField
      FieldName = 'vLocalId'
      Size = 10
    end
  end
  object cdsGestao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspGestao'
    Left = 601
    Top = 390
  end
  object dspGrupo: TDataSetProvider
    DataSet = dm.sqlGrupo
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 681
    Top = 222
  end
  object dspEstado: TDataSetProvider
    DataSet = dm.sqlEstado
    Options = [poReadOnly, poUseQuoteChar]
    Left = 681
    Top = 278
  end
  object dspLocalizacao: TDataSetProvider
    DataSet = dm.sqlLocal
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 681
    Top = 334
  end
  object dspGestao: TDataSetProvider
    DataSet = dm.sqlGestao
    Options = [poReadOnly, poUseQuoteChar]
    Left = 681
    Top = 390
  end
  object dsAquisicao: TDataSource
    DataSet = cdsAquisicao
    OnStateChange = dsAquisicaoStateChange
    OnDataChange = dsAquisicaoDataChange
    Left = 24
    Top = 192
  end
  object cdsAquisicao: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from bemAquisicao'
    IndexFieldNames = 'bemId'
    MasterFields = 'bemId'
    MasterSource = dsBem
    Params = <>
    ProviderName = 'dspAquisicao'
    AfterInsert = cdsAquisicaoAfterInsert
    OnReconcileError = cdsAquisicaoReconcileError
    Left = 24
    Top = 248
    object cdsAquisicaobemId: TIntegerField
      FieldName = 'bemId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsAquisicaofornecedorId: TIntegerField
      FieldName = 'fornecedorId'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsAquisicaonumeroNota: TStringField
      FieldName = 'numeroNota'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsAquisicaodata: TDateTimeField
      FieldName = 'data'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1; '
    end
    object cdsAquisicaodataNota: TDateTimeField
      FieldName = 'dataNota'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/9999;1; '
    end
    object cdsAquisicaoempenhoId: TIntegerField
      FieldName = 'empenhoId'
    end
    object cdsAquisicaoprocessoId: TIntegerField
      FieldName = 'processoId'
    end
    object cdsAquisicaoconvenioId: TIntegerField
      FieldName = 'convenioId'
    end
    object cdsAquisicaomodalidadeId: TIntegerField
      FieldName = 'modalidadeId'
    end
  end
  object dspAquisicao: TDataSetProvider
    DataSet = dm.sqlBemAquisicao
    Options = [poAutoRefresh, poAllowCommandText, poUseQuoteChar]
    UpdateMode = upWhereKeyOnly
    Left = 24
    Top = 304
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 520
    Top = 440
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 600
    Top = 440
  end
  object dspFornecedor: TDataSetProvider
    DataSet = dm.sqlFornecedor
    Options = [poReadOnly, poUseQuoteChar]
    Left = 680
    Top = 440
  end
  object Timer: TTimer
    Interval = 50
    OnTimer = TimerTimer
    Left = 656
    Top = 8
  end
  object cdsGrupoPrincipal: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from grupo'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 424
    Top = 224
    object cdsGrupoPrincipaldescricao: TStringField
      FieldName = 'descricao'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 100
    end
    object cdsGrupoPrincipalempresaId: TIntegerField
      FieldName = 'empresaId'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object cdsGrupoPrincipalgrupoId: TStringField
      FieldName = 'grupoId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object cdsGrupoPrincipalvGrupoId: TStringField
      FieldName = 'vGrupoId'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
  end
  object dsGrupoPrincipal: TDataSource
    DataSet = cdsGrupoPrincipal
    OnDataChange = dsGrupoPrincipalDataChange
    Left = 328
    Top = 224
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from local'
    Params = <>
    ProviderName = 'dspLocalizacao'
    Left = 424
    Top = 277
    object cdsUnidadetitulo: TStringField
      FieldName = 'titulo'
      Required = True
      Size = 100
    end
    object cdsUnidadepessoaId: TIntegerField
      FieldName = 'pessoaId'
    end
    object cdsUnidadelocalId: TStringField
      FieldName = 'localId'
      Required = True
      Size = 10
    end
    object cdsUnidadevLocalId: TStringField
      FieldName = 'vLocalId'
      Size = 10
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    OnDataChange = dsUnidadeDataChange
    Left = 328
    Top = 277
  end
  object dsConvenio: TDataSource
    DataSet = cdsConvenio
    Left = 877
    Top = 232
  end
  object cdsConvenio: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from convenio'
    Params = <>
    ProviderName = 'dspConvenio'
    Left = 876
    Top = 286
  end
  object dspConvenio: TDataSetProvider
    DataSet = dm.sqlConvenio
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 873
    Top = 339
  end
  object dspProcesso: TDataSetProvider
    DataSet = dm.sqlProcesso
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 873
    Top = 507
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from processo'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 876
    Top = 454
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 877
    Top = 400
  end
  object dsEmpenho: TDataSource
    DataSet = cdsEmpenho
    Left = 37
    Top = 384
  end
  object cdsEmpenho: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from empenho'
    Params = <>
    ProviderName = 'dspEmpenho'
    Left = 36
    Top = 438
  end
  object dspEmpenho: TDataSetProvider
    DataSet = dm.sqlEmpenho
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 33
    Top = 491
  end
  object dsModalidade: TDataSource
    DataSet = cdsModalidade
    Left = 357
    Top = 440
  end
  object cdsModalidade: TClientDataSet
    Aggregates = <>
    CommandText = 'select * from modalidade'
    Params = <>
    ProviderName = 'dspModalidade'
    Left = 356
    Top = 494
  end
  object dspModalidade: TDataSetProvider
    DataSet = dm.sqlModalidade
    Options = [poReadOnly, poAllowCommandText, poUseQuoteChar]
    Left = 353
    Top = 547
  end
end
