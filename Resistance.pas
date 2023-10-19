unit Resistance;

interface

uses
  TypeInterface;

type
  TResistance = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TResistance }

constructor TResistance.Create;
begin
  inherited Create('�������������');
end;

procedure TResistance.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('��', 1));
  Add(TUnit.Create('��.��.����. ���, ����', 8.98755e11));
  Add(TUnit.Create('��.��.����. ����', 1e-9));
end;

end.
