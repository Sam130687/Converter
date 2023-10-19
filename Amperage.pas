unit Amperage;

interface

uses
  TypeInterface;

type
  TAmperage = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAmperage }

constructor TAmperage.Create;
begin
  inherited Create('Сила тока');
end;

procedure TAmperage.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Ампер', 1));
  Add(TUnit.Create('Ампер (устар.)', 0.99985));
  Add(TUnit.Create('Bio', 10));
  Add(TUnit.Create('Ед.силы тока СГС, СГСЭ', 3.33564e-10));
  Add(TUnit.Create('Fr/s (франклин в сек.)', 3.33564e-10));
  Add(TUnit.Create('Ед.силы тока СГСМ', 10));
end;

end.
