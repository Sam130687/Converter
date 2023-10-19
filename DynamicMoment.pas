unit DynamicMoment;

interface

uses
  TypeInterface;

type
  TDynamicMoment = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDynamicMoment }

constructor TDynamicMoment.Create;
begin
  inherited Create('Динамический момент');
end;

procedure TDynamicMoment.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('г*м^2', 1));
  Add(TUnit.Create('гс*м*с^2', 9.80655));
  Add(TUnit.Create('гс*см*с^2', 0.0980655));
  Add(TUnit.Create('Н*м^2', 9806.55));
  Add(TUnit.Create('г*см^2', 1e-4));
  Add(TUnit.Create('lb*in^2(Фунт*дюйм^2)', 0.29264));
  Add(TUnit.Create('Slug*ft^2(Слаг*фут^2)', 1356));
end;

end.
