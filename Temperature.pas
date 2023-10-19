unit Temperature;

interface

uses
  TypeInterface;

type
  TFarengate = class(TUnit)
  protected
    function GetBaseValue: Extended; override;
    procedure SetBaseValue(const Value: Extended); override;
  end;

  TKelvin = class(TUnit)
  protected
    function GetBaseValue: Extended; override;
    procedure SetBaseValue(const Value: Extended); override;
  end;

  TRankin = class(TUnit)
  protected
    function GetBaseValue: Extended; override;
    procedure SetBaseValue(const Value: Extended); override;
  end;

  TTemperature = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TTemperature }

constructor TTemperature.Create;
begin
  inherited Create('Температура');
end;

procedure TTemperature.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Цельсий', 1));
  Add(TUnit.Create('Реомюр', (1/0.8)));
  Add(TFarengate.Create('Фаренгейт', 0));
  Add(TKelvin.Create('Кельвин', 0));
  Add(TRankin.Create('Ранкин', 0));
end;

{ TFarengate }
function TFarengate.GetBaseValue: Extended;
begin
  Result := (FValue - 32) / 1.8;
end;

procedure TFarengate.SetBaseValue(const Value: Extended);
begin
  FValue := Value * 1.8 + 32;
end;

{ TKelvin }
function TKelvin.GetBaseValue: Extended;
begin
  Result := FValue - 273;
end;

procedure TKelvin.SetBaseValue(const Value: Extended);
begin
  FValue := Value + 273;
end;

{ TRankin }
function TRankin.GetBaseValue: Extended;
begin
  Result := (FValue - 32 - 459.67) / 1.8;
end;

procedure TRankin.SetBaseValue(const Value: Extended);
begin
  FValue := Value * 1.8 + 32 + 459.67;
end;

end.
