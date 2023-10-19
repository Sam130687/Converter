unit Amperage;

interface

uses
  TypeInterface;

type
  TAmperage = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAmperage }

constructor TAmperage.Create;
begin
  inherited Create('���� ����');
end;

procedure TAmperage.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�����', 1));
  Add(TUnit.Create('����� (�����.)', 0.99985));
  Add(TUnit.Create('Bio', 10));
  Add(TUnit.Create('��.���� ���� ���, ����', 3.33564e-10));
  Add(TUnit.Create('Fr/s (�������� � ���.)', 3.33564e-10));
  Add(TUnit.Create('��.���� ���� ����', 10));
end;

end.
