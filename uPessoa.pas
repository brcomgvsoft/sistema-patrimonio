unit uPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, Mask, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, ComCtrls,
  DB, DBClient, Provider, pngimage, untWaterEffect;

type
  TfrmPessoa = class(TForm)
		pcGeral: TPageControl;
		tsPesquisa: TTabSheet;
		pnPesquisa: TPanel;
		txtPesquisa: TEdit;
		cbPesquisar: TComboBox;
		DBGrid1: TDBGrid;
		tsInformacao: TTabSheet;
		Label2: TLabel;
    nome: TDBEdit;
    dsPessoa: TDataSource;
    cdsPessoa: TClientDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoapessoaId: TIntegerField;
    cdsPessoanome: TStringField;
    pnLateral: TPanel;
    imgLateral: TImage;
    Timer: TTimer;
    cdsPessoatipo: TSmallintField;
    cdsPessoalogradouro: TStringField;
    cdsPessoacep: TStringField;
    Label1: TLabel;
    logradouro: TDBEdit;
    Label3: TLabel;
    municipio: TDBEdit;
    Label4: TLabel;
    cep: TDBEdit;
    tipo: TDBRadioGroup;
    tsUsuario: TTabSheet;
    dsPessoaUsuario: TDataSource;
    cdsPessoaUsuario: TClientDataSet;
    dspPessoaUsuario: TDataSetProvider;
    cdsPessoaUsuariousuarioId: TIntegerField;
    cdsPessoaUsuariologin: TStringField;
    cdsPessoaUsuariosenha: TMemoField;
    cdsPessoaUsuariopessoaId: TIntegerField;
    Label5: TLabel;
    usuarioId: TDBEdit;
    Label6: TLabel;
    login: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    pessoaId: TDBEdit;
    pnAcoes: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnApagar: TBitBtn;
    btnFechar: TBitBtn;
    btnDefinirSenha: TSpeedButton;
    desativado: TDBCheckBox;
    cdsPessoaUsuariodesativado: TBooleanField;
    senha: TDBEdit;
    cdsPessoausuario_: TBooleanField;
    usuario: TDBCheckBox;
    cdsPessoacnpjCpf: TStringField;
    Label13: TLabel;
    cnpjCpf: TDBEdit;
    dsAcoes: TDataSource;
    cdsAcoes: TClientDataSet;
    dpsAcoes: TDataSetProvider;
    cdsAcoesacaoId: TIntegerField;
    cdsAcoesdescricao: TStringField;
    dbgAcoesDisp: TDBGrid;
    Label9: TLabel;
    dsUsuarioAcao: TDataSource;
    cdsUsuarioAcao: TClientDataSet;
    dpsUsuarioAcao: TDataSetProvider;
    dbgAcoesLib: TDBGrid;
    Label12: TLabel;
    btnAdicionar: TSpeedButton;
    btnRemover: TSpeedButton;
    cdsUsuarioAcaousuarioId: TIntegerField;
    cdsUsuarioAcaoacaoId: TIntegerField;
    cdsUsuarioAcaodescricao: TStringField;
    cdsPessoamunicipio: TStringField;
		procedure FormPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure dsPessoaStateChange(Sender: TObject);
    procedure dsPessoaDataChange(Sender: TObject; Field: TField);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsPessoaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnApagarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure imgLateralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure TimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pcGeralChange(Sender: TObject);
    procedure dsPessoaUsuarioStateChange(Sender: TObject);
    procedure btnDefinirSenhaClick(Sender: TObject);
    procedure cdsPessoaUsuarioAfterInsert(DataSet: TDataSet);
    procedure cdsPessoaUsuarioReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
			var Action: TReconcileAction);
    procedure cdsPessoaAfterInsert(DataSet: TDataSet);
    procedure txtPesquisaChange(Sender: TObject);
    procedure dbgAcoesDispDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgAcoesLibDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure cdsUsuarioAcaoReconcileError(DataSet: TCustomClientDataSet;
			E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure dsAcoesStateChange(Sender: TObject);
    procedure dsUsuarioAcaoStateChange(Sender: TObject);
    procedure dsPessoaUsuarioDataChange(Sender: TObject; Field: TField);
    procedure cdsPessoaAfterEdit(DataSet: TDataSet);
    procedure dspPessoaAfterUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
  private
		{ Private declarations }
		_empresaId : Integer;
    _pessoaId : Integer;
		Water : TWaterEffect;
		bmp : TBitmap;
		xImage : Integer;
	public
		{ Public declarations }
		constructor Create(AOwner : TComponent; empresaId : Integer);reintroduce;overload;
	end;

var
	frmPessoa: TfrmPessoa;

implementation

uses uFuncoes, uDm, uGlobais;

{$R *.dfm}

procedure TfrmPessoa.btnAdicionarClick(Sender: TObject);
begin
		gravaUsuarioAcao(cdsPessoaUsuariousuarioId.Value, cdsAcoesacaoId.Value);
		cdsAcoes.Close;
		cdsUsuarioAcao.Close;
		cdsUsuarioAcao.Open;
		cdsAcoes.Open;
end;

procedure TfrmPessoa.btnApagarClick(Sender: TObject);
begin
	with cdsPessoa do
	begin
		if Application.MessageBox(PChar(Concat('Confirmar a dele��o do registro: ',cdsPessoanome.AsString)), PChar(Application.Title), MB_ICONQUESTION or MB_YESNO) = IDYES then
		begin
			with cdsPessoaUsuario do
			begin
				if not(IsEmpty) then
				begin
					Delete;
					ApplyUpdates(-1);
				end;
			end;
			Delete;
			ApplyUpdates(-1);
		end;
	end;
end;

procedure TfrmPessoa.btnCancelarClick(Sender: TObject);
begin
	with cdsPessoa do
	begin
		if State in [dsInsert, dsEdit] then
		begin
			Cancel;
		end;
	end;
	with cdsPessoaUsuario do
	begin
		if State in [dsInsert, dsEdit] then
		begin
			Cancel;
		end;
	end;
end;

procedure TfrmPessoa.btnDefinirSenhaClick(Sender: TObject);
begin
	with cdsPessoaUsuario do
	begin
		if not (State in [dsInsert, dsEdit]) then
			Edit;
		senha.Field.Value := alteraSenhaUsuario(login.Text, gUsuarioSenha, (State in [dsInsert]));
	end;
end;

procedure TfrmPessoa.btnFecharClick(Sender: TObject);
begin
	Close;
end;

procedure TfrmPessoa.btnGravarClick(Sender: TObject);
begin
	with cdsPessoa do
	begin
		if State in [dsInsert, dsEdit] then
		begin
			Post;
			ApplyUpdates(-1);
			Close;
			Open;
      Locate('pessoaId', _pessoaId, [loCaseInsensitive])
		end;
	end;
	with cdsPessoaUsuario do
	begin
		if State in [dsInsert, dsEdit] then
		begin
			Post;
			ApplyUpdates(-1);
			Close;
			Open;
		end;
	end;
end;

procedure TfrmPessoa.btnNovoClick(Sender: TObject);
begin
	with cdsPessoa do
	begin
		Append;
		tsInformacao.Show;
		nome.SetFocus;
	end;
end;

procedure TfrmPessoa.btnRemoverClick(Sender: TObject);
begin
	with cdsUsuarioAcao do
	begin
		if not(IsEmpty) then
		begin
			removeUsuarioAcao(cdsUsuarioAcaousuarioId.Value, cdsUsuarioAcaoacaoid.Value);
			Close;
			cdsAcoes.Close;
			Open;
			cdsAcoes.Open;
		end;
	end;
end;

procedure TfrmPessoa.cdsPessoaAfterEdit(DataSet: TDataSet);
begin
  _pessoaId := cdsPessoapessoaId.Value;
end;

procedure TfrmPessoa.cdsPessoaAfterInsert(DataSet: TDataSet);
begin 
	// Configura valores inicais para novos registros.
	cdsPessoausuario_.Value   := False;
	cdsPessoatipo.Value       := 1;
end;

procedure TfrmPessoa.cdsPessoaReconcileError(DataSet: TCustomClientDataSet;
	E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
	raise Exception.Create(E.Message);
	Action := raAbort;
end;

procedure TfrmPessoa.cdsPessoaUsuarioAfterInsert(DataSet: TDataSet);
begin
	cdsPessoaUsuariodesativado.Value := True;
end;

procedure TfrmPessoa.cdsPessoaUsuarioReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
	raise Exception.Create(E.Message);
	Action := raAbort;
end;

procedure TfrmPessoa.cdsUsuarioAcaoReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
	raise Exception.Create(E.Message);
	Action := raAbort;
end;

constructor TfrmPessoa.Create(AOwner: TComponent; empresaId: Integer);
begin
	inherited Create(AOwner);
	tsPesquisa.Show;
	_empresaId := empresaId;
	// Abre tabelas.
	dsPessoa.DataSet.Open;
	with cdsPessoaUsuario do
	begin
		Open;
	end;
end;


procedure TfrmPessoa.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
	DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
	with TDBGrid(Sender) do
	begin
		with Canvas do
		begin
			if not(gdSelected in State) then
			begin
				with DataSource.DataSet do
				begin
					if not(Odd(RecNo)) then
					begin
						Brush.Color := corZebra;
					end;
				end;
			end;
		FillRect(Rect);
		DefaultDrawDataCell(Rect, Column.Field, State);
		end;
	end;
end;

procedure TfrmPessoa.dbgAcoesDispDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
	with TDBGrid(Sender) do
	begin
		with Canvas do
		begin
			if not(gdSelected in State) then
			begin
				with DataSource.DataSet do
				begin
					if not(Odd(RecNo)) then
					begin
						Brush.Color := corZebra;
					end;
				end;
			end;
		FillRect(Rect);
		DefaultDrawDataCell(Rect, Column.Field, State);
		end;
	end;
end;

procedure TfrmPessoa.dbgAcoesLibDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
	with TDBGrid(Sender) do
	begin
		with Canvas do
		begin
			if not(gdSelected in State) then
			begin
				with DataSource.DataSet do
				begin
					if not(Odd(RecNo)) then
					begin
						Brush.Color := corZebra;
					end;
				end;
			end;
		FillRect(Rect);
		DefaultDrawDataCell(Rect, Column.Field, State);
		end;
	end;
end;

procedure TfrmPessoa.dsAcoesStateChange(Sender: TObject);
begin
  btnAdicionar.Visible:= not(cdsAcoes.IsEmpty);
end;

procedure TfrmPessoa.dsPessoaDataChange(Sender: TObject; Field: TField);
begin
	with cdsPessoa do
	begin
		if IsEmpty then
		begin
			Caption := 'Cadastro de pessoas';
			tsInformacao.Caption := 'Cadastrar';
		end
		else
		begin
			Caption := Concat('Pessoa - ',cdsPessoanome.AsString);
			tsInformacao.Caption := Concat('Pessoa - ', cdsPessoanome.AsString);
		end;
			tsUsuario.TabVisible    := (not(State in [dsInsert]) and not(IsEmpty) and cdsPessoausuario_.Value);
	end;
end;

procedure TfrmPessoa.dsPessoaStateChange(Sender: TObject);
begin
	with cdsPessoa do
	begin
		btnNovo.Enabled     := not(State in [dsInsert, dsEdit]);
		btnGravar.Enabled   := (State in [dsInsert, dsEdit]);
		btnCancelar.Enabled := (State in [dsInsert, dsEdit]);
		btnApagar.Enabled   := not(State in [dsInsert, dsEdit]);
		if State in [dsInsert] then
		begin
			Caption := 'Novo registro';
		end;
	end;
end;

procedure TfrmPessoa.dsPessoaUsuarioDataChange(Sender: TObject; Field: TField);
begin
	if not(cdsPessoaUsuario.IsEmpty) then
	begin
		with cdsAcoes do
		begin
			Close;
			CommandText := 'select * from acoes where acaoId not in (select acaoId from usuarioAcao where usuarioId = :usuarioid)';
			Params.ParamByName('usuarioid').Value := cdsPessoaUsuariousuarioId.Value;
			Open;
		end;
	end;
	if not(cdsPessoaUsuario.IsEmpty) then
	begin
		with cdsUsuarioAcao do
		begin
			Close;
			CommandText := Concat('SELECT usuarioAcao.acaoId, ',
                                    'acoes.descricao, ',
                                    'usuarioAcao.usuarioId ',
                            'FROM usuarioAcao ',
                                  'inner join acoes on acoes.acaoId = usuarioAcao.acaoId ',
                            'WHERE usuarioAcao.usuarioId = :usuarioId');

			Params.ParamByName('usuarioid').Value := cdsPessoaUsuariousuarioId.Value;
			Open;
		end;
	end;
end;

procedure TfrmPessoa.dsPessoaUsuarioStateChange(Sender: TObject);
begin
	with cdsPessoaUsuario do
	begin
		btnNovo.Enabled     := not(State in [dsInsert, dsEdit]);
		btnGravar.Enabled   := (State in [dsInsert, dsEdit]);
		btnCancelar.Enabled := (State in [dsInsert, dsEdit]);
		btnApagar.Enabled   := not(State in [dsInsert, dsEdit]);
		dbgAcoesDisp.Visible:= not(State in [dsEdit]) or (IsEmpty);
		dbgAcoesLib.Visible := not(State in [dsEdit]) or (IsEmpty);
		btnAdicionar.Visible:= not(State in [dsEdit]) or (IsEmpty);
		btnRemover.Visible  := not(State in [dsEdit]) or (IsEmpty);
		if State in [dsInsert] then
		begin
			Caption := 'Novo registro';
		end;
	end;
end;

procedure TfrmPessoa.dspPessoaAfterUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TCustomClientDataSet; UpdateKind: TUpdateKind);
begin
	if cdsPessoapessoaId.IsNull then
  _pessoaId := getLastId;
end;

procedure TfrmPessoa.dsUsuarioAcaoStateChange(Sender: TObject);
begin
  btnRemover.Visible  := not(cdsUsuarioAcao.IsEmpty);
end;

procedure TfrmPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
	Action := caFree; // Configura formulario para ser destruido ao fechar.
end;

procedure TfrmPessoa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
	with cdsAcoes do
	begin
		Close;
	end;
	with cdsPessoaUsuario do
	begin
		if State in [dsInsert, dsEdit] then
			Cancel;
		Close;
	end;
	with cdsPessoa do
	begin
		if State in [dsInsert, dsEdit] then
			Cancel;
		Close;
	end;
end;

procedure TfrmPessoa.FormCreate(Sender: TObject);
begin
	bmp := TBitmap.Create;
	bmp.Assign(imgLateral.Picture.Graphic);
	imgLateral.Picture.Graphic := nil;
	imgLateral.Picture.Bitmap.Height  := bmp.Height;
	imgLateral.Picture.Bitmap.Width   := bmp.Width;
	Water := TWaterEffect.Create;
	Water.SetSize(bmp.Width, bmp.Height);
	xImage := imgLateral.Height;
end;

procedure TfrmPessoa.FormDestroy(Sender: TObject);
begin
	bmp.Free;
	Water.Free;
end;

procedure TfrmPessoa.FormKeyDown(Sender: TObject; var Key: Word;
	Shift: TShiftState);
begin
	if Key = VK_ESCAPE then btnFechar.Click;
end;

procedure TfrmPessoa.FormKeyPress(Sender: TObject; var Key: Char);
begin
	if Key = #13 then SelectNext(ActiveControl, True, True);
end;

procedure TfrmPessoa.FormPaint(Sender: TObject);
begin
	VerticalText(Self,'Cadastro de locais',Application.Title,Self.Height - 50,30);
end;

procedure TfrmPessoa.imgLateralMouseMove(Sender: TObject; Shift: TShiftState; X,
	Y: Integer);
begin
	Water.Blob(X,Y,1,100);
end;

procedure TfrmPessoa.pcGeralChange(Sender: TObject);
begin
	with pcGeral do
	begin
		//pnAcoes.Visible := not(ActivePage = tsPesquisa);
	end;
end;

procedure TfrmPessoa.TimerTimer(Sender: TObject);
begin
	if Random(8) = 1 then
		Water.Blob(-1,-1, Random(1) + 1, Random(500) + 50);
	Water.Render(bmp, imgLateral.Picture.Bitmap);
	VerticalText(imgLateral,'Cadastro de locais',Application.Title,Self.Height - 50,30);
end;

procedure TfrmPessoa.txtPesquisaChange(Sender: TObject);
begin
	with cdsPessoa do
	begin
		if not(IsEmpty) then
		begin
			case cbPesquisar.ItemIndex of
				0 : Locate('nome', txtPesquisa.Text, [loPartialKey]);
			end;
		end;
	end;
end;

end.
