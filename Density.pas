unit Density;

interface

uses
  TypeInterface;

type
  TDensity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDensity }

constructor TDensity.Create;
begin
  inherited Create('ѕлотность');
end;

procedure TDensity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('г/м^3', 1));
  Add(TUnit.Create('г/см^3', 1e6));
  Add(TUnit.Create('‘унт/фут^3', 16020));
  Add(TUnit.Create('‘унт/дюйм^3', 27679700));
  Add(TUnit.Create('‘унт/€рд^3', 593.27));
  Add(TUnit.Create('‘унт/галлон(USA)', 119800));
  Add(TUnit.Create('”нци€/фут^3', 1001.10));
  Add(TUnit.Create('—лаг/фут^3', 515400));
  Add(TUnit.Create('г/л', 999.972));
  Add(TUnit.Create('г/мл', 999972));
  Add(TUnit.Create('“ех.ед.массы/м^3', 9806.65));
  Add(TUnit.Create('г/дм^3', 1000))
end;

end.



