unit MomentResistance;

interface

uses
  TypeInterface;

type
  TMomentResistance = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMomentResistance }

constructor TMomentResistance.Create;
begin
  inherited Create('������ �������������');
end;

procedure TMomentResistance.FillListUnit;
begin
  inherited;

  Add(TUnit.Create('����^3', 1));
  Add(TUnit.Create('���^3', exp(3*ln(0.3048))));
  Add(TUnit.Create('����^3', exp(3*ln(0.0254))));
  Add(TUnit.Create('USA � GB ����^3', exp(3*ln(1609.344))));
  Add(TUnit.Create('����^3', exp(3*ln(4828.032))));
  Add(TUnit.Create('�������^3', exp(3*ln(201.168))));
  Add(TUnit.Create('����^3', exp(3*ln(20.1168))));
  Add(TUnit.Create('���^3', exp(3*ln(5.0292))));
  Add(TUnit.Create('����^3', exp(3*ln(0.201168))));
end;

end.
