unit Power;

interface

uses
  TypeInterface;

type
  TPower = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TPower }

constructor TPower.Create;
begin
  inherited Create('Мощность');
end;

procedure TPower.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Ватт', 1));
  Add(TUnit.Create('Эрг/с', (1/1e7)));
  Add(TUnit.Create('гс*м/с', 0.0980665));
  Add(TUnit.Create('гс*см/с', 0.0000980665));
  Add(TUnit.Create('Литр*атм/с', 101.328));
  Add(TUnit.Create('Метрическая Л.С.', 735.49875));
  Add(TUnit.Create('Механическая Л.С.', 745.6999));
  Add(TUnit.Create('Калорий/час', 859.8452279));
  Add(TUnit.Create('Калорий/мин.', (859.8452279 * 60)));
  Add(TUnit.Create('Калорий/сек.', (859.8452279 * 3600)));
  Add(TUnit.Create('Фут-Паундаль/с', 0.0421401));
  Add(TUnit.Create('Фут-фунт-сила/с', 1.35582));
  Add(TUnit.Create('Брит. тепл.ед./ч', 0.293071));
  Add(TUnit.Create('Стоградус.тепл.ед./час', 1899.1));
end;

end.
