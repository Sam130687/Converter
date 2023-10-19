unit Frequency;

interface

uses
  TypeInterface;

type
  TFrequency = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TFrequency }

constructor TFrequency.Create;
begin
  inherited Create('Частота');
end;

procedure TFrequency.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Герц', 1));
  Add(TUnit.Create('Оборот/с', 1));
  Add(TUnit.Create('Оборот/мин', 1/60));
  Add(TUnit.Create('Оборот/час', 1/3600));
  Add(TUnit.Create('Колеб в сек.', 1));
  Add(TUnit.Create('Колеб в мин.', 1/60));
  Add(TUnit.Create('Колеб в час', 1/3600));
  Add(TUnit.Create('Период в сек.', 1));
  Add(TUnit.Create('Период в мин.', 1/60));
  Add(TUnit.Create('Период в час', 1/3600));
  Add(TUnit.Create('Радиан в сек.', 1/(2*Pi)));
  Add(TUnit.Create('Радиан в мин.', 1/(2*Pi*60)));
  Add(TUnit.Create('Радиан в час', 1/(2*Pi*3600)));
end;

end.

