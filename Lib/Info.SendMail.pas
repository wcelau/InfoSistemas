unit Info.SendMail;

interface

uses SysUtils, Classes,
     IdSMTP,
     IdSSLOpenSSL,
     IdMessage,
     IdText,
     IdAttachmentFile,
     IdExplicitTLSClientServerBase;

type
  TSendEmail = class(TComponent)
    protected
     { protected declarations }
    private
      FPara: String;
      FAnexo: String;
      FTipoDeAutenticacao: TidSMTPAuthenticationType;
      FSenha: String;
      FMensagem: TStrings;
      FHost: String;
      FDe: String;
      FUsuario: String;
      FPorta: integer;
      FAssunto: String;

    public
     { public declarations }
      constructor Create(AOwner: TComponent); override;
      destructor Destroy; override;
      function Enviar: Boolean; virtual;
      property Host              : String                    read FHost               write FHost;
      property Porta             : integer                   read FPorta              write FPorta;
      property Usuario           : String                    read FUsuario            write FUsuario;
      property Senha             : String                    read FSenha              write FSenha;
      property TipoDeAutenticacao: TidSMTPAuthenticationType read FTipoDeAutenticacao write FTipoDeAutenticacao;
      property De                : String                    read FDe                 write FDe;
      property Para              : String                    read FPara               write FPara;
      property Assunto           : String                    read FAssunto            write FAssunto;
      property Anexo             : String                    read FAnexo              write FAnexo;
      property Mensagem          : TStrings                  read FMensagem           write FMensagem;

    published
   { published declarations }
  end;
implementation


{ TEnviarEmail }

constructor TSendEmail.Create(AOwner: TComponent);
begin
  inherited;

end;

destructor TSendEmail.Destroy;
begin

  inherited;
end;

function TSendEmail.Enviar: Boolean;
var
  idMsg                : TIdMessage;
  idText               : TIdText;
  idSMTP               : TIdSMTP;
  idSSLIOHandlerSocket : TIdSSLIOHandlerSocketOpenSSL;
begin
  try
    try
      IdSSLIOHandlerSocket                   := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
      IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
      IdSSLIOHandlerSocket.SSLOptions.Mode   := sslmClient;

      idMsg                            := TIdMessage.Create(Self);
      idMsg.CharSet                    := 'utf-8';
      idMsg.Encoding                   := meMIME;
      idMsg.From.Name                  := FDe;
      idMsg.From.Address               := FDe;
      idMsg.Priority                   := mpNormal;
      idMsg.Subject                    := FAssunto;

      idMsg.Recipients.Add;
      idMsg.Recipients.EMailAddresses := FPara;

      idText := TIdText.Create(idMsg.MessageParts);
      idText.Body.Add(FMensagem.Text);
      idText.ContentType := 'text/html; text/plain; charset=iso-8859-1';

      idSMTP                           := TIdSMTP.Create(Self);
      idSMTP.IOHandler                 := IdSSLIOHandlerSocket;
      idSMTP.UseTLS                    := utUseExplicitTLS;//utUseImplicitTLS;
      idSMTP.AuthType                  := satDefault;
      idSMTP.Host                      := FHost;
      idSMTP.AuthType                  := satDefault;
      idSMTP.Port                      := FPorta;
      idSMTP.Username                  := FUsuario;
      idSMTP.Password                  := FSenha;

      idSMTP.Connect;
      idSMTP.Authenticate;

      if FAnexo <> EmptyStr then
        if FileExists(FAnexo) then
          TIdAttachmentFile.Create(idMsg.MessageParts, FAnexo);

      if idSMTP.Connected then begin
        try
          IdSMTP.Send(idMsg);
          Result := True;
        except on E:Exception do
          begin
            Result := False;
            raise Exception.Create('Erro ao tentar enviar: ' + E.Message);
          end;
        end;
      end;

      //Depois de tudo pronto, desconecta do servidor SMTP
      if idSMTP.Connected then
        idSMTP.Disconnect;

      Result := True;
    finally
      UnLoadOpenSSLLibrary;

      FreeAndNil(idMsg);
      FreeAndNil(idSSLIOHandlerSocket);
      FreeAndNil(idSMTP);
    end;
  except on e:Exception do
    begin
      Result := False;
    end;
  end;
end;

end.
