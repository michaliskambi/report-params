{$ifdef MSWINDOWS} {$apptype CONSOLE} {$endif}
{$mode objfpc}{$H+}

uses SysUtils;
const
  ProgramToCall = 'echo';
var
  CmdLine: array of String;
  I: Integer;
  ExitStatus: Integer;
  ExeFileName: String;
begin
  Writeln(Format('report-params: %d parameters (and additional parameter 0, program name)', [ParamCount]));
  for I := 0 to ParamCount do
  begin
    Writeln(Format('report-params: parameter %d, length: %d, value: %s', [
      I,
      Length(ParamStr(I)),
      ParamStr(I)
    ]));
  end;

  SetLength(CmdLine, ParamCount);
  for I := 1 to ParamCount do
  begin
    CmdLine[I - 1] := ParamStr(I);
  end;

  ExeFileName := ExeSearch(ProgramToCall);
  if ExeFileName = '' then
    raise Exception.CreateFmt('report-params: program %s not found', [ProgramToCall]);
  Writeln(Format('report-params: executing %s', [ExeFileName]));

  ExitStatus := ExecuteProcess(ExeFileName, CmdLine);
  ExitCode := ExitStatus;
end.