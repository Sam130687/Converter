unit Speed;

interface

uses
  TypeInterface;

type
  TSpeed = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TSpeed }

constructor TSpeed.Create;
begin
  inherited Create('��������');
end;

procedure TSpeed.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�/�', 1));
  Add(TUnit.Create('�/�', (1/3600)));
  Add(TUnit.Create('����/�', 1609.344));
  Add(TUnit.Create('����/� (���.)', 0.44704));
  Add(TUnit.Create('����', 0.514));
  Add(TUnit.Create('���/�', 0.3048));
  Add(TUnit.Create('���/���', (0.3048*3600) ));
  Add(TUnit.Create('����� ����(�/�)', 340.29));
end;

end.
