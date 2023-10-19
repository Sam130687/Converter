unit Pressure;

interface

uses
  TypeInterface;

type
  TPressure = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TPressure }

constructor TPressure.Create;
begin
  inherited Create('��������');
end;

procedure TPressure.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�������(H/�^2)', 1));
  Add(TUnit.Create('H/��^2', 10000));
  Add(TUnit.Create('H/��^2', 1000000));
  Add(TUnit.Create('���/��^2', 0.1));
  Add(TUnit.Create('�����/�^2', (9.80665e-3)));
  Add(TUnit.Create('�����/��^2', (98.0665)));
  Add(TUnit.Create('�����/��^2', (9.80665e3)));
  Add(TUnit.Create('���/�^2', (9.80665)));
  Add(TUnit.Create('���/��^2', (9.80665e4)));
  Add(TUnit.Create('���/��^2', (9.80665e6)));
  Add(TUnit.Create('�����/��^2', 98066.5));
  Add(TUnit.Create('psi(��������/����^2)', 6894.76));
  Add(TUnit.Create('���', 1e5));
  Add(TUnit.Create('����', 133.322));
  Add(TUnit.Create('���������(�����.)', 101325));
  Add(TUnit.Create('���������(���.)', 98066.5));
  Add(TUnit.Create('��.���.��.', 9.80665));
  Add(TUnit.Create('��.����.��.', 133.322));
  Add(TUnit.Create('�����', 1000));
  Add(TUnit.Create('�����', 0.10));
  Add(TUnit.Create('���� ���. �����.', 249.089));
  Add(TUnit.Create('���� ����. �����.', 3386.39));
end;

end.
