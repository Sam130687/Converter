unit Capacity;

interface

uses
  TypeInterface;

type
  TCapacity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TCapacity }

constructor TCapacity.Create;
begin
  inherited Create('®мкость');
end;

procedure TCapacity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('‘арад', 1));
  Add(TUnit.Create('‘ранклин^2/эрг', 1.11265e-12));
  Add(TUnit.Create('≈д.э.д.с. —√—, —√—Ё', 1.11265e-12));
  Add(TUnit.Create('≈д.э.д.с. —√—ћ', 1e9));
end;

end.
