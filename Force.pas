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
  inherited Create('Сила');
end;

procedure TForce.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Ньютон', 1));
  Add(TUnit.Create('Стен', 1000));
  Add(TUnit.Create('Грамм силы', 0.00980665));
  Add(TUnit.Create('Понд', 9.80665e-3));
  Add(TUnit.Create('Дина', 1e-5));
  Add(TUnit.Create('Фунт силы', 4.44822));
  Add(TUnit.Create('Паундаль', 0.138255));
end;

end.
