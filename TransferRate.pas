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
  inherited Create('�������� �������� ������', False);
end;

procedure TTransferRate.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('���/�', 1));
  Add(TUnit.Create('����/�', 1024));
  Add(TUnit.Create('����/�', (1024*1024)));
  Add(TUnit.Create('����/�', (1024*1024*1024)));
  Add(TUnit.Create('����/�', (1099511627776)));
  Add(TUnit.Create('�/�', 8));
  Add(TUnit.Create('��/�', (1024*8)));
  Add(TUnit.Create('��/�', (1024*8*1024)));
  Add(TUnit.Create('��/�', 8589934592));
  Add(TUnit.Create('��/�', 8796093022208));
end;

end.
