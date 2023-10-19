unit Volume;

interface

uses
  TypeInterface, Length;

type
  TVolume = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
    function Multiplier(AValue: Extended): Extended; override;
  end;

implementation

{ TVolume }
// a^b = exp(ln(a^b)) = exp(b*ln(a))

constructor TVolume.Create;
begin
  inherited Create('Объём');
end;

procedure TVolume.FillListUnit;
var
  i : Integer;
begin
  inherited;
  Add(TUnit.Create('Метр^3', 1));
  Add(TUnit.Create('Галлон UK', 0.00454609));
  Add(TUnit.Create('Галлон USA', 0.00378543));
  Add(TUnit.Create('Бушель UK', 0.0363687));
  Add(TUnit.Create('Бушель USA', 0.0352393));
  Add(TUnit.Create('Баррель нефть', 0.158983));
  Add(TUnit.Create('Баррель сухой', 0.115628));
  Add(TUnit.Create('Корабел. тонна', 1.13));
  Add(TUnit.Create('Унция UK', 28.4130e-6));
  Add(TUnit.Create('Унция USA', 29.5737e-6));
  Add(TUnit.Create('Пинта жид. UK', 0.00056826125));
  Add(TUnit.Create('Пинта сух. UK', 0.000473179));
  Add(TUnit.Create('Пинта жид. USA', 0.000473179));
  Add(TUnit.Create('Пинта сух. USA', 0.000550614));
  Add(TUnit.Create('Литр', 0.001));
  Add(TUnit.Create('Медицинский кубик', 1e-6 ));
  Add(TUnit.Create('Кварта', (2*0.00056826125)));
  Add(TUnit.Create('Ка', 0.00084));
  Add(TUnit.Create('Арбата', 0.05508));
  Add(TUnit.Create('Регистр. тонна', 2.83));
  Add(TUnit.Create('Ведро(устар.руск.)', 0.0122994));
  Add(TUnit.Create('Штоф(устар.руск.)', 10/0.0122994));
  Add(TUnit.Create('Бутылка винная', 16/0.0122994));
  Add(TUnit.Create('Бутылка водочная', 20/0.0122994));
  Add(TUnit.Create('Чарка(устар.руск.)', 100/0.0122994));
  Add(TUnit.Create('Четверть(устар.руск.)', 0.209909));
  Add(TUnit.Create('Четверик(устар.руск.)', 0.262387));
  Add(TUnit.Create('Гарниц(устар.руск.)', 0.00327984));

  with TLength.Create do
  try
    for I := 1 to Count - 1 do
      Add(TUnit.Create(Item[i].Name + '^3', Multiplier(Item[i].Factor)));
  finally
    Free;
  end;
end;

function TVolume.Multiplier(AValue: Extended): Extended;
begin
  Result := AValue * AValue* AValue;
end;

end.
