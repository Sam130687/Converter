unit Pressure;

interface

uses
  TypeInterface;

type
  TPressure = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TPressure }

constructor TPressure.Create;
begin
  inherited Create('Давление');
end;

procedure TPressure.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Паскаль(H/м^2)', 1));
  Add(TUnit.Create('H/см^2', 10000));
  Add(TUnit.Create('H/мм^2', 1000000));
  Add(TUnit.Create('Дин/см^2', 0.1));
  Add(TUnit.Create('Грамм/м^2', (9.80665e-3)));
  Add(TUnit.Create('Грамм/см^2', (98.0665)));
  Add(TUnit.Create('Грамм/мм^2', (9.80665e3)));
  Add(TUnit.Create('Кгс/м^2', (9.80665)));
  Add(TUnit.Create('Кгс/см^2', (9.80665e4)));
  Add(TUnit.Create('Кгс/мм^2', (9.80665e6)));
  Add(TUnit.Create('Кпонд/см^2', 98066.5));
  Add(TUnit.Create('psi(фунтсилы/дюйм^2)', 6894.76));
  Add(TUnit.Create('Бар', 1e5));
  Add(TUnit.Create('Торр', 133.322));
  Add(TUnit.Create('Атмосфера(физич.)', 101325));
  Add(TUnit.Create('Атмосфера(тех.)', 98066.5));
  Add(TUnit.Create('мм.вод.ст.', 9.80665));
  Add(TUnit.Create('мм.ртут.ст.', 133.322));
  Add(TUnit.Create('Пьеза', 1000));
  Add(TUnit.Create('Бария', 0.10));
  Add(TUnit.Create('Дюйм вод. столб.', 249.089));
  Add(TUnit.Create('Дюйм ртут. столб.', 3386.39));
end;

end.
