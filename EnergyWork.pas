unit EnergyWork;

interface

uses
  TypeInterface;

type
  TEnergyWork = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TEnergyWork }

constructor TEnergyWork.Create;
begin
  inherited Create('�������/������');
end;

procedure TEnergyWork.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('������', 1));
  Add(TUnit.Create('���', (1e-7)));
  Add(TUnit.Create('��*��', (9.80665e-5)));
  Add(TUnit.Create('��*�', (9.80665e-3)));
  Add(TUnit.Create('����-���������', 101.328));
  Add(TUnit.Create('�.�.�.(�����.���.�)', 2647800));
  Add(TUnit.Create('����*�', 1));
  Add(TUnit.Create('����*�', 3600));
  Add(TUnit.Create('������ (����.)', 1.00019));
  Add(TUnit.Create('������� (����.)', 4.1868));
  Add(TUnit.Create('������� ��������.', 4.1840));
  Add(TUnit.Create('������� (15 ����.)', 4.1855));
  Add(TUnit.Create('������� (20 ����.)', 4.182));
  Add(TUnit.Create('������ (th)', 4185500));
  Add(TUnit.Create('������������� (��)', 1.60206e-19));
  Add(TUnit.Create('����*���� (sn*m)', 1000));
  Add(TUnit.Create('��������-��� (ft*pdl)', 0.0421401));
  Add(TUnit.Create('����-����-��� (ft*lbf)', 1.35582));
  Add(TUnit.Create('����-����-���� (in*lbf)', 0.113));
  Add(TUnit.Create('����. ����. ��. (Btu)', 1055.06));
  Add(TUnit.Create('Btu 60/61', 1054.5));
  Add(TUnit.Create('Btu mean (�� 32F �� 42F)', 1055.8));
  Add(TUnit.Create('�������.����.��.(C.H.U.)', 1899.1));
  Add(TUnit.Create('C.H.U. mean', 1900.4));
  Add(TUnit.Create('Therm', 105450000));
  Add(TUnit.Create('�������� (�����.����)', 4186.8));
end;

end.
