unit Voltage;

interface

uses
  TypeInterface;

type
  TVoltage = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TVoltage }

constructor TVoltage.Create;
begin
  inherited Create('����������');
end;

procedure TVoltage.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�����', 1));
  Add(TUnit.Create('����� (�����.)', (1/1.00035)));
  Add(TUnit.Create('����/�����', 1));
  Add(TUnit.Create('���/��������', 299.7925));
  Add(TUnit.Create('��.�.�.�. ���, ����', 299.7925));
  Add(TUnit.Create('��.�.�.�. ����', 1e-8));
end;

end.
