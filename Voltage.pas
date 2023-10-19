unit Voltage;

interface

uses
  TypeInterface;

type
  TVoltage = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TVoltage }

constructor TVoltage.Create;
begin
  inherited Create('Напряжение');
end;

procedure TVoltage.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Вольт', 1));
  Add(TUnit.Create('Вольт (устар.)', (1/1.00035)));
  Add(TUnit.Create('Ватт/ампер', 1));
  Add(TUnit.Create('Эрг/франклин', 299.7925));
  Add(TUnit.Create('Ед.э.д.с. СГС, СГСЭ', 299.7925));
  Add(TUnit.Create('Ед.э.д.с. СГСМ', 1e-8));
end;

end.
