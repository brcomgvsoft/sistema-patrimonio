unit uDm;

interface

uses
  SysUtils, Classes, DB, SqlExpr, DBXMSSQL, FMTBcd, Provider, DBClient, ImgList,
	Controls, Forms, Windows, RpDefine, RpRave, RpCon, RpConDS, ADODB, AppEvnts, Inifiles;

type
  Tdm = class(TDataModule)
    ImageListAcoes: TImageList;
    ImageListBotoes: TImageList;
    rvpTR: TRvProject;
    rvdLocal: TRvDataSetConnection;
    rvdSubLocal: TRvDataSetConnection;
    rvdGestao: TRvDataSetConnection;
    rvdPessoa: TRvDataSetConnection;
    ADOConnection: TADOConnection;
    sqlTranferencia: TADOQuery;
    sqlTransferenciaBem: TADOQuery;
    sqlTranferenciatransferenciaId: TAutoIncField;
    sqlTranferenciaorigemId: TStringField;
    sqlTranferenciadestinoId: TStringField;
    sqlTranferenciadata: TDateTimeField;
    sqlTranferenciareceptorId: TIntegerField;
    sqlTranferenciacedenteId: TIntegerField;
    sqlTranferenciausuarioId: TIntegerField;
    sqlTranferenciaconcluida: TBooleanField;
    sqlTranferenciatipo: TSmallintField;
    sqlTranferenciaorigemSubLocal: TStringField;
    sqlTranferenciadestinoSubLocal: TStringField;
    sqlTransferenciaBemtransferenciaId: TIntegerField;
    sqlTransferenciaBembemId: TIntegerField;
    sqlTransferenciaBembemEstadoId: TIntegerField;
    sqlBem: TADOQuery;
    sqlBemAquisicao: TADOQuery;
    sqlBembemId: TAutoIncField;
    sqlBemidenficacao: TStringField;
    sqlBemdescricao: TStringField;
    sqlBemgrupoId: TStringField;
    sqlBemestadoId: TIntegerField;
    sqlBemlocalId: TStringField;
    sqlBemgestaoId: TIntegerField;
    sqlBemvalor: TBCDField;
    sqlBemtipoIdentificacao: TIntegerField;
    sqlBemsubgrupoId: TStringField;
    sqlBemsubLocalId: TStringField;
    sqlBemtipoAquisicao: TIntegerField;
    sqlBemquantidade: TFloatField;
    sqlBemAquisicaobemId: TIntegerField;
    sqlBemAquisicaodata: TDateTimeField;
    sqlBemAquisicaodataNota: TDateTimeField;
    sqlBemAquisicaofornecedorId: TIntegerField;
    sqlBemAquisicaonumeroNota: TStringField;
    sqlEstado: TADOQuery;
    sqlGestao: TADOQuery;
    sqlGrupo: TADOQuery;
    sqlGrupogrupoId: TStringField;
    sqlGrupodescricao: TStringField;
    sqlGrupoempresaId: TIntegerField;
    sqlGrupovGrupoId: TStringField;
    sqlSubGrupo: TADOQuery;
    sqlSubGrupogrupoId: TStringField;
    sqlSubGrupodescricao: TStringField;
    sqlSubGrupoempresaId: TIntegerField;
    sqlSubGrupovGrupoId: TStringField;
    sqlEmpresa: TADOQuery;
    sqlEmpresaempresaId: TAutoIncField;
    sqlEmpresarazaoSocial: TStringField;
    sqlEmpresanomeFantasia: TStringField;
    sqlEmpresachave: TMemoField;
    sqlEmpresapessoaId: TIntegerField;
    sqlEmpresalogotipo: TBlobField;
    sqlLocal: TADOQuery;
    sqlLocallocalId: TStringField;
    sqlLocaltitulo: TStringField;
    sqlLocalvLocalId: TStringField;
    sqlLocalpessoaId: TIntegerField;
    sqlSubLocal: TADOQuery;
    sqlSubLocallocalId: TStringField;
    sqlSubLocaltitulo: TStringField;
    sqlSubLocalvLocalId: TStringField;
    sqlSubLocalpessoaId: TIntegerField;
    sqlPessoa: TADOQuery;
    sqlPessoapessoaId: TAutoIncField;
    sqlPessoanome: TStringField;
    sqlPessoatipo: TSmallintField;
    sqlPessoalogradouro: TStringField;
    sqlPessoacep: TStringField;
    sqlPessoausuario: TBooleanField;
    sqlPessoacnpjCpf: TStringField;
    sqlFornecedor: TADOQuery;
    sqlFornecedorfornecedorId: TAutoIncField;
    sqlFornecedorrazaoSocial: TStringField;
    sqlFornecedorcnpj: TStringField;
    sqlUsuario: TADOQuery;
    sqlUsuariousuarioId: TAutoIncField;
    sqlUsuariologin: TStringField;
    sqlUsuariosenha: TMemoField;
    sqlUsuariopessoaId: TIntegerField;
    sqlUsuariodesativado: TBooleanField;
    sqlUsuarioAcao: TADOQuery;
    sqlUsuarioAcaousuarioId: TIntegerField;
    sqlUsuarioAcaoacaoId: TIntegerField;
    sqlAcoes: TADOQuery;
    sqlAcoesacaoId: TAutoIncField;
    sqlAcoesdescricao: TStringField;
    sqlAcoesnomeAcao: TStringField;
    sqlvAcoes: TADOQuery;
    sqlvAcoesacaoId: TAutoIncField;
    sqlvAcoesdescricao: TStringField;
    sqlvAcoesnomeAcao: TStringField;
    ApplicationEvents: TApplicationEvents;
    totaisGrupos: TADOQuery;
    totaisGruposgrupoId: TStringField;
    totaisGruposdescricao: TStringField;
    totaisGrupostotal: TBCDField;
    totaisSubGrupos: TADOQuery;
    totaisSubGruposgrupoId: TStringField;
    totaisSubGruposdescricao: TStringField;
    totaisSubGrupostotal: TBCDField;
    rvdTotaisGrupos: TRvDataSetConnection;
    rvdTotaisSubgrupos: TRvDataSetConnection;
    totaisSubGruposvGrupoId: TStringField;
    rvdFornecedor: TRvDataSetConnection;
    rvdEmpresa: TRvDataSetConnection;
    rvdBemGeral: TRvDataSetConnection;
    sqlGestaogestaoId: TAutoIncField;
    sqlGestaogestao: TStringField;
    sqlUsuarioAcaodescricao: TStringField;
    sqlPessoamunicipio: TStringField;
    rvdlSubGrupoDM: TRvDataSetConnection;
    rvdGrupoDM: TRvDataSetConnection;
    sqlBemvalorAquisicao: TBCDField;
    totaisGruposquantidade: TFloatField;
    totaisSubGruposquantidade: TFloatField;
    sqlEmpenho: TADOQuery;
    sqlConvenio: TADOQuery;
    sqlProcesso: TADOQuery;
    sqlModalidade: TADOQuery;
    sqlConvenioTipo: TADOQuery;
    sqlConvenioTipoconvenioTipoId: TAutoIncField;
    sqlConvenioTipodescricao: TStringField;
    sqlModalidademodalidadeId: TAutoIncField;
    sqlModalidadedescricao: TStringField;
    sqlProcessoprocessoId: TAutoIncField;
    sqlProcessonumeroProcesso: TStringField;
    sqlConvenioconvenioId: TAutoIncField;
    sqlConvenionumeroConvenio: TStringField;
    sqlConvenioconvenioTipoId: TIntegerField;
    sqlEmpenhoempenhoId: TAutoIncField;
    sqlEmpenhonumeroEmpenho: TStringField;
    sqlBemidentificacaoAnterior: TStringField;
    sqlBemAquisicaoempenhoId: TIntegerField;
    sqlBemAquisicaoprocessoId: TIntegerField;
    sqlBemAquisicaoconvenioId: TIntegerField;
    sqlBemAquisicaomodalidadeId: TIntegerField;
    rvdEmpenho: TRvDataSetConnection;
    rvdConvenio: TRvDataSetConnection;
    rvdProcesso: TRvDataSetConnection;
    rvdModalidade: TRvDataSetConnection;
    rvdConvenioTipo: TRvDataSetConnection;
    procedure ADOConnectionBeforeConnect(Sender: TObject);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure ApplicationEventsActionExecute(Action: TBasicAction;
      var Handled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses uFuncoes, uErro;

{$R *.dfm}

function ValidaSistema() : Boolean;
var
  licenca : TIniFile;
  dateExc : TDateTime;
  dateExp : TDateTime;
  date    : TDateTime;
  fileDir : String;
  valLic  : Integer;
begin
  fileDir := Concat(ExtractFilePath(Application.ExeName), 'info.lic');
  licenca := TIniFile.Create(fileDir);
  with licenca do
  begin
    try
      dateExc := StrToDate(cript(ReadString(cript('Licen�a'),cript('dateExc'), cript(FormatDateTime('dd/mm/yyyy', now)))));
      dateExp := StrToDate(cript(ReadString(cript('Licen�a'),cript('dateExp'), cript('01/01/1900'))));
      valLic  := StrToInt(cript(ReadString(cript('Licen�a'),cript('valLic'), cript('1'))));
      date    := StrToDate(FormatDateTime('dd/mm/yyyy', now));
      if ((date <= dateExp) and (date >= dateExc) or (valLic = 0)) then
      begin
        Result := True;
      end
      else
      begin
        Result := False;
      end;
    finally
      WriteString(cript('Licen�a'),cript('dateExc'), cript(DateToStr(Now)));
      WriteString(cript('Licen�a'),cript('dateExp'), cript(DateToStr(dateExp)));
      WriteString(cript('Licen�a'),cript('valLic'), cript(IntToStr(valLic)));
      Free;
    end;
  end;
end;


procedure Tdm.ADOConnectionBeforeConnect(Sender: TObject);
begin
	with ADOConnection do
	begin
		Close;
		if FileExists(Concat(ExtractFilePath(Application.ExeName), 'dbxcon.udl')) then
		begin
			ConnectionString := Concat(	'FILE NAME=',
																	ExtractFilePath(Application.ExeName)
																 ,'dbxcon.udl');
		end
		else
		begin
			Application.MessageBox(	'N�o foi possivel encontrar o arquivo de conex�o!',
															PChar(Application.Title),
															MB_ICONERROR);
			Application.Terminate;
		end;
	end;
end;

procedure Tdm.ApplicationEventsActionExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  if not ValidaSistema() then
  begin
    with TfrmErro.Create(Application) do
    begin
      try
        memErro.Text := 'A Licen�a de uso do sistema expirou, entre em contato com suporte para mais informa��es!';
        btnContinuar.Visible := False;
        ShowModal;
      finally
        Free;
        Application.Terminate();
      end;
    end;
  end;
end;

procedure Tdm.ApplicationEventsException(Sender: TObject; E: Exception);
begin
	with TfrmErro.Create(Application) do
	begin
		try
			memErro.Text := E.Message;
			ShowModal;
		finally
			Free;
		end;
	end;
end;

end.
