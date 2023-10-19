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
  inherited Create('������� �����');
end;

procedure TMolarVolume.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�^3/�����', 1));
  Add(TUnit.Create('�^3/����', 1e-3));
  Add(TUnit.Create('�/����', 1.000028));
  Add(TUnit.Create('ft^3/lb mole(���^3/����)', 0.062428));
  Add(TUnit.Create('yd^3/lb mole(���^3/����)', 1.686));
end;

end.
