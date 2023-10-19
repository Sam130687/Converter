unit Resistance;

interface

uses
  TypeInterface;

type
  TResistance = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TResistance }

constructor TResistance.Create;
begin
  inherited Create('Сопротивление');
end;

procedure TResistance.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Ом', 1));
  Add(TUnit.Create('Ед.эл.сопр. СГС, СГСЭ', 8.98755e11));
  Add(TUnit.Create('Ед.эл.сопр. СГСМ', 1e-9));
end;

end.
