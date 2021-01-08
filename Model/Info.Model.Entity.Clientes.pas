unit Info.Model.Entity.Clientes;
{$M+}

interface

Type
  TCliente = class
  private
    FLogradouro : String;
    FBairro     : String;
    FEmail      : String;
    FCPF        : String;
    FCep        : String;
    FId         : Integer;
    FNumero     : String;
    FIdentidade : String;
    FComplemento: String;
    FNome       : String;
    FCidade     : String;
    FPais       : String;
    FEstado     : String;
    FTelefone   : String;

  public
    constructor Create;
    destructor Destroy; override;
  published
    property Id          : Integer  read FId           write FId;
    property Nome        : String   read FNome         write FNome;
    property Identidade  : String   read FIdentidade   write FIdentidade;
    property CPF         : String   read FCPF          write FCPF;
    property Telefone    : String   read FTelefone     write FTelefone;
    property Email       : String   read FEmail        write FEmail;
    property Cep         : String   read FCep          write FCep;
    property Logradouro  : String   read FLogradouro   write FLogradouro;
    property Numero      : String   read FNumero       write FNumero;
    property Complemento : String   read FComplemento  write FComplemento;
    property Bairro      : String   read FBairro       write FBairro;
    property Cidade      : String   read FCidade       write FCidade;
    property Estado      : String   read FEstado       write FEstado;
    property Pais        : String   read FPais         write FPais;

  end;

implementation




{ TCliente }

constructor TCliente.Create;
begin

end;

destructor TCliente.Destroy;
begin

  inherited;
end;

end.
