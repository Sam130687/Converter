unit EnergyWork;

interface

uses
  TypeInterface;

type
  TEnergyWork = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TEnergyWork }

constructor TEnergyWork.Create;
begin
  inherited Create('Энергия/работа');
end;

procedure TEnergyWork.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Джоуль', 1));
  Add(TUnit.Create('Эрг', (1e-7)));
  Add(TUnit.Create('гс*см', (9.80665e-5)));
  Add(TUnit.Create('гс*м', (9.80665e-3)));
  Add(TUnit.Create('Литр-атмосфера', 101.328));
  Add(TUnit.Create('Л.с.ч.(лошад.сил.ч)', 2647800));
  Add(TUnit.Create('Ватт*с', 1));
  Add(TUnit.Create('Ватт*ч', 3600));
  Add(TUnit.Create('Джоуль (межд.)', 1.00019));
  Add(TUnit.Create('Калорий (межд.)', 4.1868));
  Add(TUnit.Create('Калорий термохим.', 4.1840));
  Add(TUnit.Create('Калорий (15 град.)', 4.1855));
  Add(TUnit.Create('Калорий (20 град.)', 4.182));
  Add(TUnit.Create('Термия (th)', 4185500));
  Add(TUnit.Create('Электронвольт (эв)', 1.60206e-19));
  Add(TUnit.Create('Стен*метр (sn*m)', 1000));
  Add(TUnit.Create('Паундаль-фут (ft*pdl)', 0.0421401));
  Add(TUnit.Create('Фунт-сила-фут (ft*lbf)', 1.35582));
  Add(TUnit.Create('Фунт-сила-дюйм (in*lbf)', 0.113));
  Add(TUnit.Create('Брит. тепл. ед. (Btu)', 1055.06));
  Add(TUnit.Create('Btu 60/61', 1054.5));
  Add(TUnit.Create('Btu mean (от 32F до 42F)', 1055.8));
  Add(TUnit.Create('Стоград.тепл.ед.(C.H.U.)', 1899.1));
  Add(TUnit.Create('C.H.U. mean', 1900.4));
  Add(TUnit.Create('Therm', 105450000));
  Add(TUnit.Create('Фригория (отриц.ккал)', 4186.8));
end;

end.
