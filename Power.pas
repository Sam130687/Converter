unit Power;

interface

uses
  TypeInterface;

type
  TPower = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TPower }

constructor TPower.Create;
begin
  inherited Create('��������');
end;

procedure TPower.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('����', 1));
  Add(TUnit.Create('���/�', (1/1e7)));
  Add(TUnit.Create('��*�/�', 0.0980665));
  Add(TUnit.Create('��*��/�', 0.0000980665));
  Add(TUnit.Create('����*���/�', 101.328));
  Add(TUnit.Create('����������� �.�.', 735.49875));
  Add(TUnit.Create('������������ �.�.', 745.6999));
  Add(TUnit.Create('�������/���', 859.8452279));
  Add(TUnit.Create('�������/���.', (859.8452279 * 60)));
  Add(TUnit.Create('�������/���.', (859.8452279 * 3600)));
  Add(TUnit.Create('���-��������/�', 0.0421401));
  Add(TUnit.Create('���-����-����/�', 1.35582));
  Add(TUnit.Create('����. ����.��./�', 0.293071));
  Add(TUnit.Create('���������.����.��./���', 1899.1));
end;

end.
