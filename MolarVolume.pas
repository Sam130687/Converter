unit MolarVolume;

interface

uses
  TypeInterface;

type
  TMolarVolume = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMolarVolume }

constructor TMolarVolume.Create;
begin
  inherited Create('Мольный объём');
end;

procedure TMolarVolume.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('м^3/кмоль', 1));
  Add(TUnit.Create('м^3/моль', 1e-3));
  Add(TUnit.Create('л/моль', 1.000028));
  Add(TUnit.Create('ft^3/lb mole(фут^3/моль)', 0.062428));
  Add(TUnit.Create('yd^3/lb mole(ярд^3/моль)', 1.686));
end;

end.
