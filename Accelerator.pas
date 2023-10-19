unit Accelerator;

interface

uses
  TypeInterface;

type
  TAccelerator = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAccelerator }

constructor TAccelerator.Create;
begin
  inherited Create('”скорение');
end;

procedure TAccelerator.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('м/с^2', 1));
  Add(TUnit.Create('м/ч^2', 1/(3600*3600)));
  Add(TUnit.Create('миль/с^2', 1609.344));
  Add(TUnit.Create('миль/ч^2', 1609.344/(3600*3600)));
  Add(TUnit.Create('√ал', 0.01));
  Add(TUnit.Create('фут/с^2', 0.3048));
  Add(TUnit.Create('фут/час^2', 0.3048/(3600*3600)));
end;

end.
