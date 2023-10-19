unit Charge;

interface

uses
  TypeInterface;

type
  TCharge = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TCharge }

constructor TCharge.Create;
begin
  inherited Create('Заряд');
end;

procedure TCharge.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Кулон', 1));
  Add(TUnit.Create('Кулон (устар.)', (1/0.99985)));
  Add(TUnit.Create('Ампер*сек.', 1));
  Add(TUnit.Create('Ампер*мин.', 60));
  Add(TUnit.Create('Ампер*час', 3600));
  Add(TUnit.Create('Фарадей', 96520));
  Add(TUnit.Create('Франклин', 3.33564e-10));
  Add(TUnit.Create('Bio*s', 10));
  Add(TUnit.Create('Ед.кол.эл. СГС, СГСЭ', 3.33564e-10));
  Add(TUnit.Create('Элементар.элек.зар.', 1.60206e-9));
  Add(TUnit.Create('Ед.кол.эл. СГСМ', 10));
end;

end.
