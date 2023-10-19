unit Charge;

interface

uses
  TypeInterface;

type
  TCharge = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TCharge }

constructor TCharge.Create;
begin
  inherited Create('�����');
end;

procedure TCharge.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�����', 1));
  Add(TUnit.Create('����� (�����.)', (1/0.99985)));
  Add(TUnit.Create('�����*���.', 1));
  Add(TUnit.Create('�����*���.', 60));
  Add(TUnit.Create('�����*���', 3600));
  Add(TUnit.Create('�������', 96520));
  Add(TUnit.Create('��������', 3.33564e-10));
  Add(TUnit.Create('Bio*s', 10));
  Add(TUnit.Create('��.���.��. ���, ����', 3.33564e-10));
  Add(TUnit.Create('���������.����.���.', 1.60206e-9));
  Add(TUnit.Create('��.���.��. ����', 10));
end;

end.
