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
  inherited Create('Угловая скорость');
end;

procedure TAngularVelocity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Радиан в сек.', 1));
  Add(TUnit.Create('Оборотов в сек.', (2*Pi)));
  Add(TUnit.Create('Градусов в сек.', 1/(180/Pi) ));
  Add(TUnit.Create('Град в сек.', 1/(63.6619773095026) ));
end;

end.
