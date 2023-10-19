unit Capacity;

interface

uses
  TypeInterface;

type
  TCapacity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TCapacity }

constructor TCapacity.Create;
begin
  inherited Create('�������');
end;

procedure TCapacity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�����', 1));
  Add(TUnit.Create('��������^2/���', 1.11265e-12));
  Add(TUnit.Create('��.�.�.�. ���, ����', 1.11265e-12));
  Add(TUnit.Create('��.�.�.�. ����', 1e9));
end;

end.
