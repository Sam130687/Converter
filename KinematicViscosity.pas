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
  inherited Create('�������������� ��������');
end;

procedure TKinematicViscosity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�^2/���.', 1));
  Add(TUnit.Create('�^2/���.', 1.66666e-4));
  Add(TUnit.Create('�^2/���', 277.8e-6));
  Add(TUnit.Create('����� (cm)', 0.0001));

  Add(TUnit.Create('���^2/���.', 0.092903));
  Add(TUnit.Create('���^2/���.', 0.00172836));
  Add(TUnit.Create('���^2/���', 25.806e-6));
end;

end.
