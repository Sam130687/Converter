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
  inherited Create('������������ ��������');
end;

procedure TDynamicViscosity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�*�/�^2', 1));
  Add(TUnit.Create('�/(�*���.)', 0.001));
  Add(TUnit.Create('�/(�*���.)', 1.66666e-5));
  Add(TUnit.Create('�/(�*���)', 2.778e-7));
  Add(TUnit.Create('�/(��*���.)', 0.1));
  Add(TUnit.Create('�/(��*���.)', 0.00166666666666));
  Add(TUnit.Create('�/(��*���)', 2.778e-5));
  Add(TUnit.Create('���*�/��^2', 0.1));
  Add(TUnit.Create('���� (��)', 0.1));
  Add(TUnit.Create('��*�/�^2', 0.00980665));
  Add(TUnit.Create('�*�/�^2', 35.304));
  Add(TUnit.Create('����-����*�/���^2', 47.8803));
  Add(TUnit.Create('����/(���*�)', 47.8803));
  Add(TUnit.Create('��������*�/���^2', 1.48816));
  Add(TUnit.Create('����/(���*�)', 1.48816));
end;

end.
