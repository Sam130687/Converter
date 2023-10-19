unit Length;

interface

uses
  TypeInterface;

type
  TLength = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TLength }
constructor TLength.Create;
begin
  inherited Create('�����');
end;

procedure TLength.FillListUnit;
begin
  Add(TUnit.Create('����', 1));
  Add(TUnit.Create('��������������� �������', 149597870691));
  Add(TUnit.Create('������', ((149597870691*360*60*60)/(2*Pi))));
  Add(TUnit.Create('�������� ���', 9460730472580820));
  Add(TUnit.Create('���������', 1.496e17));
  Add(TUnit.Create('������� ����', 1852));
  Add(TUnit.Create('���������', 185.2));
  Add(TUnit.Create('�������������� ����', 1853.25));
  Add(TUnit.Create('�������� ����', 7420));
  Add(TUnit.Create('���������� ���������� ����', 4448));
  Add(TUnit.Create('��������(����������) ����', 10000));
  Add(TUnit.Create('USA ����', 1609.344));
  Add(TUnit.Create('����', 4828.032));
  Add(TUnit.Create('�������', 201.168));
  Add(TUnit.Create('����', 20.1168));
  Add(TUnit.Create('���', 5.0292));
  Add(TUnit.Create('����', 0.201168));
  Add(TUnit.Create('����', 0.0254));
  Add(TUnit.Create('���', 0.9144));
  Add(TUnit.Create('���', 0.3048));
  Add(TUnit.Create('������', 1e-6));
  Add(TUnit.Create('��������', 1e-10));
  Add(TUnit.Create('X �������', 1.00206e-13));
  Add(TUnit.Create('����(�����.����.)', 7467.6));
  Add(TUnit.Create('������(�����.����.)', 1066.781));
  Add(TUnit.Create('������� ������(�����.����.)', 1.778));
  Add(TUnit.Create('������(�����.����.)', 2.133562));
  Add(TUnit.Create('����� ������(�����.����.)', 2.48));
  Add(TUnit.Create('����(�����.����.)', 0.1778));
  Add(TUnit.Create('�����(�����.����.)', 0.7112));
  Add(TUnit.Create('������(�����.����.)', 0.04445));
  Add(TUnit.Create('���(�����.����.)', 0.3048));
  Add(TUnit.Create('����(�����.����.)', 0.0254));
  Add(TUnit.Create('�����(�����.����.)', 0.00254));
  Add(TUnit.Create('�����(�����.����.)', 0.000254));
  Add(TUnit.Create('�����(�����.����.)', 0.021336));
  Add(TUnit.Create('������������� ����(�����)', 1598));
  Add(TUnit.Create('����������� ����(�����)', 1809.344));
  Add(TUnit.Create('�������� ����(�����)', 10688));
  Add(TUnit.Create('���������� ����(�����)', 11298));
end;

end.

