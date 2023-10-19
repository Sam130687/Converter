unit Square;

interface

uses
  TypeInterface, Length;

type
  TSquare = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
    function Multiplier(AValue: Extended): Extended; override;
  end;


implementation

{ TSquare }

constructor TSquare.Create;
begin
  inherited Create('�������');
end;

procedure TSquare.FillListUnit;
var
  I: integer;
begin
  inherited;
  Add(TUnit.Create('����^2 (��)', 1));
  Add(TUnit.Create('���', 100));
  Add(TUnit.Create('��', 10000));
  Add(TUnit.Create('���', 4046.85642));
  Add(TUnit.Create('���', 0.9144));
  Add(TUnit.Create('����', 1e-28));
  Add(TUnit.Create('���', 1011.71));
  Add(TUnit.Create('��������', 10925.4));

  with TLength.Create do
  try
    for I := 1 to Count - 1 do
      Add(TUnit.Create(Item[i].Name + '^2', Multiplier(Item[i].Factor)));
  finally
    Free;
  end;
end;

function TSquare.Multiplier(AValue: Extended): Extended;
begin
  Result := Sqr(AValue);
end;

end.


