unit Corner;

interface

uses
  TypeInterface;

type
  TCorner = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TCorner }

constructor TCorner.Create;
begin
  inherited Create('����');
end;

procedure TCorner.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('������', 1));
  Add(TUnit.Create('������', 1/(Pi / 180) ));
  Add(TUnit.Create('����', 1/(40 / 36) ));
  Add(TUnit.Create('������', 1/(60) ));
  Add(TUnit.Create('�������', 1/(3600) ));
  Add(TUnit.Create('���� �������', 1/(16 / 180) ));
  Add(TUnit.Create('���� � ������.', 1/(8 / 180) ));
end;

end.
