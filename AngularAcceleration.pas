unit AngularAcceleration;

interface

uses
  TypeInterface;

type
  TAngularAcceleration = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAngularAcceleration }

constructor TAngularAcceleration.Create;
begin
  inherited Create('������� ���������');
end;

procedure TAngularAcceleration.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('������ � ���. �� ���.', 1));
  Add(TUnit.Create('�������� � ���. �� ���.', (2*Pi)));
  Add(TUnit.Create('�������� � ���. �� ���.', 1/(180/Pi) ));
  Add(TUnit.Create('���� � ���. �� ���.', 1/(63.6619773095026) ));
end;

end.
