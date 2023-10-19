unit Speed;

interface

uses
  TypeInterface;

type
  TSpeed = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TSpeed }

constructor TSpeed.Create;
begin
  inherited Create('Скорость');
end;

procedure TSpeed.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('м/с', 1));
  Add(TUnit.Create('м/ч', (1/3600)));
  Add(TUnit.Create('миль/с', 1609.344));
  Add(TUnit.Create('миль/ч (сух.)', 0.44704));
  Add(TUnit.Create('узел', 0.514));
  Add(TUnit.Create('фут/с', 0.3048));
  Add(TUnit.Create('фут/час', (0.3048*3600) ));
  Add(TUnit.Create('Число Маха(н/у)', 340.29));
end;

end.
