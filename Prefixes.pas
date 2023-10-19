unit Prefixes;

interface

uses
  TypeInterface;

type
  TPrefix = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TPrefix }

constructor TPrefix.Create;
begin
  inherited Create('Префиксы', False);
end;

procedure TPrefix.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Без приставки', 1));
  Add(TUnit.Create('Йокта', 1e-24));
  Add(TUnit.Create('Зепто', 1e-21));
  Add(TUnit.Create('Атто', 1e-18));
  Add(TUnit.Create('Фамто', 1e-15));
  Add(TUnit.Create('Пико', 1e-12));
  Add(TUnit.Create('Нано', 1e-9));
  Add(TUnit.Create('Микро', 1e-6));
  Add(TUnit.Create('Мили', 1e-3));
  Add(TUnit.Create('Санти', 1e-2));
  Add(TUnit.Create('Деци', 1e-1));
  Add(TUnit.Create('Дека', 1e1));
  Add(TUnit.Create('Гекто', 1e2));
  Add(TUnit.Create('Кило', 1e3));
  Add(TUnit.Create('Мега', 1e6));
  Add(TUnit.Create('Гига', 1e9));
  Add(TUnit.Create('Тера', 1e12));
  Add(TUnit.Create('Пета', 1e15));
  Add(TUnit.Create('Экса', 1e18));
  Add(TUnit.Create('Зета', 1e21));
  Add(TUnit.Create('Йота', 1e24));
end;

end.

