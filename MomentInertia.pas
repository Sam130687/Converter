unit MomentInertia;

interface

uses
  TypeInterface;

type
  TMomentInertia = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMomentInertia }

constructor TMomentInertia.Create;
begin
  inherited Create('������ �������');
end;

procedure TMomentInertia.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('����^4', 1));
  Add(TUnit.Create('���^4', exp(4*ln(0.3048)) ));
  Add(TUnit.Create('����^4', exp(4*ln(0.0254)) ));
  Add(TUnit.Create('USA � GB ����^4', exp(4*ln(1609.344)) ));
  Add(TUnit.Create('����^4', exp(4*ln(4828.032)) ));
  Add(TUnit.Create('�������^4', exp(4*ln(201.168)) ));
  Add(TUnit.Create('����^4', exp(4*ln(20.1168)) ));
  Add(TUnit.Create('���^4', exp(4*ln(5.0292)) ));
  Add(TUnit.Create('����^4', exp(4*ln(0.201168)) ));
end;

end.
