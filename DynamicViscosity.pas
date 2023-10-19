unit DynamicViscosity;

interface

uses
  TypeInterface;

type
  TDynamicViscosity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDynamicViscosity }

constructor TDynamicViscosity.Create;
begin
  inherited Create('Динамическая вязкость');
end;

procedure TDynamicViscosity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Н*с/м^2', 1));
  Add(TUnit.Create('г/(м*сек.)', 0.001));
  Add(TUnit.Create('г/(м*мин.)', 1.66666e-5));
  Add(TUnit.Create('г/(м*час)', 2.778e-7));
  Add(TUnit.Create('г/(см*сек.)', 0.1));
  Add(TUnit.Create('г/(см*мин.)', 0.00166666666666));
  Add(TUnit.Create('г/(см*час)', 2.778e-5));
  Add(TUnit.Create('Дин*с/см^2', 0.1));
  Add(TUnit.Create('Пуаз (пз)', 0.1));
  Add(TUnit.Create('гс*с/м^2', 0.00980665));
  Add(TUnit.Create('г*ч/м^2', 35.304));
  Add(TUnit.Create('Фунт-сила*с/фут^2', 47.8803));
  Add(TUnit.Create('Слаг/(фут*с)', 47.8803));
  Add(TUnit.Create('Паундаль*с/фут^2', 1.48816));
  Add(TUnit.Create('Фунт/(фут*с)', 1.48816));
end;

end.
