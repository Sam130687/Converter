unit Massa;

interface

uses
  TypeInterface;

type
  TMass = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMass }

constructor TMass.Create;
begin
  inherited Create('Масса');
end;

procedure TMass.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Грамм', 1));
  Add(TUnit.Create('Тонна', 1000000));
  Add(TUnit.Create('Длинная тонна', 1016047));
  Add(TUnit.Create('Короткая тонна', 907184.7));
  Add(TUnit.Create('Центнер', 100000));
  Add(TUnit.Create('Атом.ед.массы', (1.6605402*10E-25)));
  Add(TUnit.Create('Карат', (0.2)));
  Add(TUnit.Create('Фунт', 453.592));
  Add(TUnit.Create('Унция', (453.592/16)));
  Add(TUnit.Create('Тройская унция', 31.1035));
  Add(TUnit.Create('Аптекарская унция', 31.1035));
  Add(TUnit.Create('Слаг', 14593.9));
  Add(TUnit.Create('Гран', (453.592/7000)));
  Add(TUnit.Create('Драхма', 1.7718));
  Add(TUnit.Create('Скрупул', 1.29598));
  Add(TUnit.Create('Мильер', 1000000));
  Add(TUnit.Create('Пуд(устар.руск.)', 16380.4815));
  Add(TUnit.Create('Лот(устар.руск.)', (16380.4815/1280)));
  Add(TUnit.Create('Доля(устар.руск.)', (16380.4815/368640)));
  Add(TUnit.Create('Фунт(рус.)', (16380.4815/40)));
  Add(TUnit.Create('Золотник', (16380.4815/3840)));
end;
end.
