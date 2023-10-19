unit Time;

interface

uses
  TypeInterface;

type
  TTime = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TTime }

constructor TTime.Create;
begin
  inherited Create('Время');
end;

procedure TTime.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Секунда', 1));
  Add(TUnit.Create('Сидерический год', 3.15581486e7));
  Add(TUnit.Create('Драконический год', 2.9947970678400004e7));
  Add(TUnit.Create('Аномалистический год', 3.1558433011776e7));
  Add(TUnit.Create('Минута', 60));
  Add(TUnit.Create('Час', 60*60 ));
  Add(TUnit.Create('Сутки', 60*60*24 ));
  Add(TUnit.Create('Неделя', 60*60*24*7 ));
  Add(TUnit.Create('Декада', 60*60*24*10 ));
  Add(TUnit.Create('Месяц (28д.)', 60*60*24*28 ));
  Add(TUnit.Create('Месяц (29д.)', 60*60*24*29 ));
  Add(TUnit.Create('Месяц (30д.)', 60*60*24*30 ));
  Add(TUnit.Create('Месяц(31д.)', 60*60*24*31 ));
  Add(TUnit.Create('Квартал 1', 60*60*24*(31+28+31) ));
  Add(TUnit.Create('Квартал 1(високосный)', 60*60*24*(31+29+31) ));
  Add(TUnit.Create('Квартал 2', 60*60*24*(30+31+30) ));
  Add(TUnit.Create('Квартал 3', 60*60*24*(31+31+30) ));
  Add(TUnit.Create('Квартал 4', 60*60*24*(31+30+31) ));
  Add(TUnit.Create('Год(365д.)', 60*60*24*365 ));
  Add(TUnit.Create('Год(366д.)', 60*60*24*366 ));
  Add(TUnit.Create('Век', 3153600000)); //3600*24*365*100
  Add(TUnit.Create('Тысячелетие', 31536000000));  // 3600*24*365*1000
  Add(TUnit.Create('Лунный год', 3.1567708800000003e7));
end;

end.

