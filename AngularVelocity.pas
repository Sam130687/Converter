unit AngularVelocity;

interface

uses
  TypeInterface;

type
  TAngularVelocity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAngularVelocity }

constructor TAngularVelocity.Create;
begin
  inherited Create('������� ��������');
end;

procedure TAngularVelocity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('������ � ���.', 1));
  Add(TUnit.Create('�������� � ���.', (2*Pi)));
  Add(TUnit.Create('�������� � ���.', 1/(180/Pi) ));
  Add(TUnit.Create('���� � ���.', 1/(63.6619773095026) ));
end;

end.
