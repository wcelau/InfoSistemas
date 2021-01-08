unit Info.Model.Entity.Usuarios;
{$M+}

interface

type
  TParamUser = class
  strict private
    class var FInstance : TParamUser;
  private
    FName: String;
    FDateTimeLogin: TDateTime;
    FID: Integer;
    constructor Create;
    procedure SetDateTimeLogin(const Value: TDateTime);
    procedure SetID(const Value: Integer);
    procedure SetName(const Value: String);

  public
    class function GetInstance : TParamUser;
    class procedure FreeInstance;
  published
    property ID            : Integer   read FID   write SetID;
    property Name          : String    read FName write SetName;
    property DateTimeLogin : TDateTime read FDateTimeLogin write SetDateTimeLogin;
  end;



implementation

uses
  System.SysUtils;


{ TParamSis }

constructor TParamUser.Create;
begin

end;

class procedure TParamUser.FreeInstance;
begin
  if Assigned(FInstance) then begin
    FInstance.Free;
    FInstance := nil;
  end;
end;

class function TParamUser.GetInstance: TParamUser;
begin
  if not Assigned(FInstance) then
    FInstance := TParamUser.Create;
  Result := FInstance;
end;

procedure TParamUser.SetDateTimeLogin(const Value: TDateTime);
begin
  FDateTimeLogin := Value;
end;

procedure TParamUser.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TParamUser.SetName(const Value: String);
begin
  FName := Value;
end;

end.
