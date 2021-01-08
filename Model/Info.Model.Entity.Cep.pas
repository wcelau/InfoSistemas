unit Info.Model.Entity.Cep;
{$M+}

interface

Type
  TCep = class
  private
    Flogradouro: String;
    Fibge: String;
    Fbairro: String;
    Fddd: String;
    Fuf: String;
    Fcep: String;
    Fsiafi: String;
    Flocalidade: String;
    Fcomplemento: String;
    Fgia: String;

  public
    constructor Create;
    destructor Destroy; override;
  published
    property cep          : String  read Fcep           write Fcep;
    property logradouro   : String   read Flogradouro   write Flogradouro;
    property complemento  : String   read Fcomplemento  write Fcomplemento;
    property bairro       : String   read Fbairro       write Fbairro;
    property localidade   : String   read Flocalidade   write Flocalidade;
    property uf           : String   read Fuf           write Fuf;
    property ibge         : String   read Fibge         write Fibge;
    property gia          : String   read Fgia          write Fgia;
    property ddd          : String   read Fddd          write Fddd;
    property siafi        : String   read Fsiafi       write Fsiafi;

  end;

implementation




{ TCep }

constructor TCep.Create;
begin

end;

destructor TCep.Destroy;
begin

  inherited;
end;

end.
