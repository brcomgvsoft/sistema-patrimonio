unit uDm;

interface

uses
  SysUtils, Classes, DB, SqlExpr, DBXMSSQL, FMTBcd, Provider, DBClient, ImgList,
	Controls, Forms, Windows, RpDefine, RpRave;

type
  Tdm = class(TDataModule)
    SQLConnection: TSQLConnection;
    sqlEmpresa: TSQLQuery;
    sqlLocal: TSQLQuery;
    ImageListAcoes: TImageList;
    ImageListBotoes: TImageList;
    sqlLocallocalId: TIntegerField;
    sqlLocaltitulo: TStringField;
    sqlLocalvLocalId: TIntegerField;
    sqlLocalpessoaId: TIntegerField;
    sqlPessoa: TSQLQuery;
    sqlPessoapessoaId: TIntegerField;
    sqlPessoanome: TStringField;
    sqlGrupo: TSQLQuery;
    sqlGrupogrupoId: TIntegerField;
    sqlGrupodescricao: TStringField;
    sqlGrupoempresaId: TIntegerField;
    sqlGrupovGrupoId: TIntegerField;
    sqlBem: TSQLQuery;
    sqlBembemId: TIntegerField;
    sqlBemidenficacao: TStringField;
    sqlBemdescricao: TStringField;
    sqlBemgrupoId: TIntegerField;
    sqlBemestadoId: TIntegerField;
    sqlBemlocalId: TIntegerField;
    sqlBemgestaoId: TIntegerField;
    sqlGestao: TSQLQuery;
    sqlEstado: TSQLQuery;
    sqlEstadoestadoId: TIntegerField;
    sqlEstadodescricao: TStringField;
    sqlGestaogestaoId: TIntegerField;
    sqlGestaoinicio: TSQLTimeStampField;
    sqlGestaofim: TSQLTimeStampField;
    sqlGestaopessoaId: TIntegerField;
    sqlBemAquisicao: TSQLQuery;
    sqlBemAquisicaobemId: TIntegerField;
    sqlBemAquisicaodata: TSQLTimeStampField;
    sqlBemAquisicaodataNota: TSQLTimeStampField;
    sqlBemAquisicaofornecedorId: TIntegerField;
    sqlFornecedor: TSQLQuery;
    sqlFornecedorfornecedorId: TIntegerField;
    sqlFornecedorrazaoSocial: TStringField;
    sqlFornecedorcnpj: TStringField;
    sqlFornecedorpessoaId: TIntegerField;
    sqlPessoatipo: TSmallintField;
    sqlPessoalogradouro: TStringField;
    sqlPessoamunicipio: TStringField;
    sqlPessoacep: TStringField;
    sqlUsuario: TSQLQuery;
    sqlUsuariousuarioId: TIntegerField;
    sqlUsuariologin: TStringField;
    sqlUsuariosenha: TMemoField;
    sqlUsuariopessoaId: TIntegerField;
    sqlUsuariodesativado: TBooleanField;
    sqlPessoafornecedor: TBooleanField;
    sqlPessoausuario: TBooleanField;
    sqlEmpresaempresaId: TIntegerField;
    sqlEmpresarazaoSocial: TStringField;
    sqlEmpresanomeFantasia: TStringField;
    sqlEmpresachave: TMemoField;
    sqlTranferencia: TSQLQuery;
    sqlTransferenciaBem: TSQLQuery;
    sqlTranferenciatransferenciaId: TIntegerField;
    sqlTranferenciaorigemId: TIntegerField;
    sqlTranferenciadestinoId: TIntegerField;
    sqlTranferenciareceptorId: TIntegerField;
    sqlTranferenciacedenteId: TIntegerField;
    sqlTranferenciausuarioId: TIntegerField;
    sqlTranferenciaconcluida: TBooleanField;
    sqlTransferenciaBemtransferenciaId: TIntegerField;
    sqlTransferenciaBembemId: TIntegerField;
    sqlTranferenciatipo: TSmallintField;
    sqlTranferenciadata: TSQLTimeStampField;
    Rvmovimentacao: TRvProject;
    sqlPessoacnpjCpf: TStringField;
    sqlBemvalor: TFMTBCDField;
    sqlBemAquisicaonumeroNota: TStringField;
    sqlEmpresapessoaId: TIntegerField;
    sqlBemtipoIdentificacao: TIntegerField;
    sqlEmpresalogotipo: TBlobField;
    sqlBemsubgrupoId: TIntegerField;
    sqlBemsubLocalId: TIntegerField;
    procedure SQLConnectionBeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

uses uFuncoes;

{$R *.dfm}

procedure Tdm.SQLConnectionBeforeConnect(Sender: TObject);
begin
	with SQLConnection do
	begin
		Close;
		if FileExists(Concat(ExtractFilePath(Application.ExeName), 'dbxcon.inf')) then
		begin
			Params.LoadFromFile(Concat(ExtractFilePath(Application.ExeName), 'dbxcon.inf'));
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

end.
