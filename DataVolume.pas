unit DataVolume;

interface

uses
  TypeInterface;

type
  TDataVolume = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDataVolume }

constructor TDataVolume.Create;
begin
  inherited Create('Объём памяти', False);
end;

procedure TDataVolume.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Бит', 1));
  Add(TUnit.Create('Килобит', 1024));
  Add(TUnit.Create('Мегабит', 1048576));
  Add(TUnit.Create('Гигабит', 1073741824));
  Add(TUnit.Create('Терабит', 1099511627776));
  Add(TUnit.Create('Петабит', 1125899906842624));
  Add(TUnit.Create('Байт', 8));
  Add(TUnit.Create('Килобайт', 8192));
  Add(TUnit.Create('Мегабайт', 8388608));
  Add(TUnit.Create('Гигабайт', 8589934592));
  Add(TUnit.Create('Терабайт', 8796093022208));
  Add(TUnit.Create('Петабайт', 9007199254740992));
  Add(TUnit.Create('Байт(на диске)', 8));
  Add(TUnit.Create('Килобайт(на диске)', 8000));
  Add(TUnit.Create('Мегабайт(на диске)', 8000000));
  Add(TUnit.Create('Гигабайт(на диске)', 8000000000));
  Add(TUnit.Create('Терабайт(на диске)', 8000000000000));
  Add(TUnit.Create('Петабайт(на диске)', 8000000000000000));
end;

end.
