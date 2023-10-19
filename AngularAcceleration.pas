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
  inherited Create('Угловое ускорение');
end;

procedure TAngularAcceleration.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Радиан в сек. за сек.', 1));
  Add(TUnit.Create('Оборотов в сек. за сек.', (2*Pi)));
  Add(TUnit.Create('Градусов в сек. за сек.', 1/(180/Pi) ));
  Add(TUnit.Create('Град в сек. за сек.', 1/(63.6619773095026) ));
end;

end.
