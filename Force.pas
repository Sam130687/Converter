unit Force;

interface

uses
  TypeInterface;

type
  TForce = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TForce }

constructor TForce.Create;
begin
  inherited Create('����');
end;

procedure TForce.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('������', 1));
  Add(TUnit.Create('����', 1000));
  Add(TUnit.Create('����� ����', 0.00980665));
  Add(TUnit.Create('����', 9.80665e-3));
  Add(TUnit.Create('����', 1e-5));
  Add(TUnit.Create('���� ����', 4.44822));
  Add(TUnit.Create('��������', 0.138255));
end;

end.
