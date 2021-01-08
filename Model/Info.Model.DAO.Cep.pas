unit Info.Model.DAO.Cep;

interface

uses
  REST.Types,
  REST.Client,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  System.JSON,
  REST.Json,
  Info.Model.Entity.Cep;

type

  iDAOCep = interface
    ['{FFC723BE-0CA6-4EC1-BD2B-A043956231A5}']
    function FindByCep(const aCep : String) : TCep; overload;
  end;

  TDAOCep = class(TInterfacedObject, iDAOCep)

  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New : TDAOCep;
    function FindByCep(const aCep : String) : TCep; overload;
  end;

implementation

{ TDAO }

uses System.SysUtils;

constructor TDAOCep.Create;
begin

end;

destructor TDAOCep.Destroy;
begin

  inherited;
end;

function TDAOCep.FindByCep(const aCep: String): TCep;
var
  RESTClient  : TRESTClient;
  RESTRequest : TRESTRequest;
  RESTResponse: TRESTResponse;
  JObject     : TJsonObject;
begin
  Result      := nil;
  JObject     := nil;
  RESTClient  := TRESTClient.Create(nil);
  try
    RESTRequest := TRESTRequest.Create(nil);
    try
      RESTResponse:= TRESTResponse.Create(nil);
      try
        RESTRequest.Accept             := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
        RESTRequest.AcceptCharset      := 'utf-8, *;q=0.8';
        RESTRequest.Client             := RESTClient;
        RESTRequest.Method             := rmGET;
        RESTRequest.Response           := RESTResponse;
        RESTRequest.Timeout            := 30000;

        RESTResponse.ContentType       := 'application/json';

        RESTClient.Accept              := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
        RESTClient.AcceptCharset       := 'utf-8, *;q=0.8';
        RESTClient.BaseURL             := Format('https://viacep.com.br/ws/%s/json', [aCep]);
        RESTClient.RaiseExceptionOn500 := False;

        RESTRequest.Execute;
        if RESTResponse.StatusCode = 200 then begin
          JObject   := TJSONObject.ParseJSONValue(RESTResponse.Content) as TJSONObject;
          try
            if JObject.Count > 0 then
              Result := TJson.JsonToObject<TCep>(JObject);
          finally
            if Assigned(jObject) then
              JObject.Free;
          end;
        end;
      finally
        RESTResponse.Free;
      end;
    finally
      RESTRequest.Free;
    end;
  finally
    RESTClient.Free;
  end;

end;

class function TDAOCep.New: TDAOCep;
begin
  Result := Self.Create;
end;

end.
