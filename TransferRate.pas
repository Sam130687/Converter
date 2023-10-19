unit TransferRate;

interface

uses
  TypeInterface;

type
  TTransferRate = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TTransferRate }

constructor TTransferRate.Create;
begin
  inherited Create('—корость передачи данных', False);
end;

procedure TTransferRate.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('бит/с', 1));
  Add(TUnit.Create(' бит/с', 1024));
  Add(TUnit.Create('ћбит/с', (1024*1024)));
  Add(TUnit.Create('√бит/с', (1024*1024*1024)));
  Add(TUnit.Create('“бит/с', (1099511627776)));
  Add(TUnit.Create('Ѕ/с', 8));
  Add(TUnit.Create(' Ѕ/с', (1024*8)));
  Add(TUnit.Create('ћЅ/с', (1024*8*1024)));
  Add(TUnit.Create('√Ѕ/с', 8589934592));
  Add(TUnit.Create('“Ѕ/с', 8796093022208));
end;

end.
