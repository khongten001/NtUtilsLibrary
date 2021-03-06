unit Winapi.ConsoleApi;

{$MINENUMSIZE 4}

interface

uses
  Winapi.WinNt, DelphiApi.Reflection;

const
  // consoleapi2.35
  FOREGROUND_BLUE = $0001;
  FOREGROUND_GREEN = $0002;
  FOREGROUND_RED = $0004;
  FOREGROUND_INTENSITY = $0008;
  BACKGROUND_BLUE = $0010;
  BACKGROUND_GREEN = $0020;
  BACKGROUND_RED = $0040;
  BACKGROUND_INTENSITY = $0080;

  ConsoleFlagNames: array [0..7] of TFlagName = (
    (Value: FOREGROUND_BLUE; Name: 'Foreground Blue'),
    (Value: FOREGROUND_GREEN; Name: 'Foreground Green'),
    (Value: FOREGROUND_RED; Name: 'Foreground Red'),
    (Value: FOREGROUND_INTENSITY; Name: 'Foreground Intensity'),
    (Value: BACKGROUND_BLUE; Name: 'Background Blue'),
    (Value: BACKGROUND_GREEN; Name: 'Background Green'),
    (Value: BACKGROUND_RED; Name: 'Background Red'),
    (Value: BACKGROUND_INTENSITY; Name: 'Background Intensity')
  );

type
  TConsoleFlagProvider = class (TCustomFlagProvider)
    class function Flags: TFlagNames; override;
  end;

  [NamingStyle(nsSnakeCase, '', 'EVENT')]
  TCtrlEvent = (
    CTRL_C_EVENT = 0,
    CTRL_BREAK_EVENT = 1,
    CTRL_CLOSE_EVENT = 2,
    CTRL_RESERVED3 = 3,
    CTRL_RESERVED4 = 4,
    CTRL_LOGOFF_EVENT = 5,
    CTRL_SHUTDOWN_EVENT = 6
  );

  THandlerRoutine = function (CtrlType: TCtrlEvent): LongBool; stdcall;

function AllocConsole: LongBool; stdcall; external kernel32;

function FreeConsole: LongBool; stdcall; external kernel32;

function AttachConsole(dwProcessId: Cardinal): LongBool; stdcall;
  external kernel32;

function SetConsoleCtrlHandler(HandlerRoutine: THandlerRoutine;
  Add: LongBool): LongBool; stdcall; external kernel32;

implementation

class function TConsoleFlagProvider.Flags: TFlagNames;
begin
  Result := Capture(ConsoleFlagNames);
end;

end.
