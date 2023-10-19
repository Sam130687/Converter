unit Length;

interface

uses
  TypeInterface;

type
  TLength = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TLength }
constructor TLength.Create;
begin
  inherited Create('Длина');
end;

procedure TLength.FillListUnit;
begin
  Add(TUnit.Create('Метр', 1));
  Add(TUnit.Create('Астрономическая единица', 149597870691));
  Add(TUnit.Create('Парсек', ((149597870691*360*60*60)/(2*Pi))));
  Add(TUnit.Create('Световой год', 9460730472580820));
  Add(TUnit.Create('Сириометр', 1.496e17));
  Add(TUnit.Create('Морская миля', 1852));
  Add(TUnit.Create('Кабельтов', 185.2));
  Add(TUnit.Create('Географическая миля', 1853.25));
  Add(TUnit.Create('Немецкая миля', 7420));
  Add(TUnit.Create('Французкая сухопутная миля', 4448));
  Add(TUnit.Create('Шведская(Норвежская) миля', 10000));
  Add(TUnit.Create('USA миля', 1609.344));
  Add(TUnit.Create('Лига', 4828.032));
  Add(TUnit.Create('Фурлонг', 201.168));
  Add(TUnit.Create('Чейн', 20.1168));
  Add(TUnit.Create('Род', 5.0292));
  Add(TUnit.Create('Линк', 0.201168));
  Add(TUnit.Create('Дюйм', 0.0254));
  Add(TUnit.Create('Ярд', 0.9144));
  Add(TUnit.Create('Фут', 0.3048));
  Add(TUnit.Create('Микрон', 1e-6));
  Add(TUnit.Create('Ангстрем', 1e-10));
  Add(TUnit.Create('X единица', 1.00206e-13));
  Add(TUnit.Create('Миля(устар.руск.)', 7467.6));
  Add(TUnit.Create('Верста(устар.руск.)', 1066.781));
  Add(TUnit.Create('Маховая сажень(устар.руск.)', 1.778));
  Add(TUnit.Create('Сажень(устар.руск.)', 2.133562));
  Add(TUnit.Create('Косая сажень(устар.руск.)', 2.48));
  Add(TUnit.Create('Пядь(устар.руск.)', 0.1778));
  Add(TUnit.Create('Аршин(устар.руск.)', 0.7112));
  Add(TUnit.Create('Вершок(устар.руск.)', 0.04445));
  Add(TUnit.Create('Фут(устар.руск.)', 0.3048));
  Add(TUnit.Create('Дюйм(устар.руск.)', 0.0254));
  Add(TUnit.Create('Линия(устар.руск.)', 0.00254));
  Add(TUnit.Create('Точка(устар.руск.)', 0.000254));
  Add(TUnit.Create('Сотка(устар.руск.)', 0.021336));
  Add(TUnit.Create('Древнеримская миля(устар)', 1598));
  Add(TUnit.Create('Шотландская миля(устар)', 1809.344));
  Add(TUnit.Create('Шведская миля(устар)', 10688));
  Add(TUnit.Create('Норвежская миля(устар)', 11298));
end;

end.

