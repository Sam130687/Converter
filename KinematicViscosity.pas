unit KinematicViscosity;

interface

uses
  TypeInterface;

type
  TKinematicViscosity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TKinematicViscosity }

constructor TKinematicViscosity.Create;
begin
  inherited Create('Кинематическая вязкость');
end;

procedure TKinematicViscosity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('м^2/сек.', 1));
  Add(TUnit.Create('м^2/мин.', 1.66666e-4));
  Add(TUnit.Create('м^2/час', 277.8e-6));
  Add(TUnit.Create('Стокс (cm)', 0.0001));

  Add(TUnit.Create('Фут^2/сек.', 0.092903));
  Add(TUnit.Create('Фут^2/мин.', 0.00172836));
  Add(TUnit.Create('Фут^2/час', 25.806e-6));
end;

end.
