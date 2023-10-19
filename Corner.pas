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
  inherited Create('Угол');
end;

procedure TCorner.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Градус', 1));
  Add(TUnit.Create('Радиан', 1/(Pi / 180) ));
  Add(TUnit.Create('Град', 1/(40 / 36) ));
  Add(TUnit.Create('Минута', 1/(60) ));
  Add(TUnit.Create('Секунда', 1/(3600) ));
  Add(TUnit.Create('Румб морской', 1/(16 / 180) ));
  Add(TUnit.Create('Румб в метеор.', 1/(8 / 180) ));
end;

end.
