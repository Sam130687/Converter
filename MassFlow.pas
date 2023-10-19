unit MassFlow;

interface

uses
  TypeInterface;

type
  TMassFlow = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMassFlow }

constructor TMassFlow.Create;
begin
  inherited Create('Массовый расход');
end;

procedure TMassFlow.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('г/с', 1));
  Add(TUnit.Create('г/мин', 16.667e-3));
  Add(TUnit.Create('г/час', 277.8e-3));
  Add(TUnit.Create('г/сутки', 11.574e-3));
  Add(TUnit.Create('Унция/с', 28.3e-3));
  Add(TUnit.Create('Фунт/час', 126e-6));
end;

end.
