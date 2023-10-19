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
  inherited Create('��������', False);
end;

procedure TPrefix.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('��� ���������', 1));
  Add(TUnit.Create('�����', 1e-24));
  Add(TUnit.Create('�����', 1e-21));
  Add(TUnit.Create('����', 1e-18));
  Add(TUnit.Create('�����', 1e-15));
  Add(TUnit.Create('����', 1e-12));
  Add(TUnit.Create('����', 1e-9));
  Add(TUnit.Create('�����', 1e-6));
  Add(TUnit.Create('����', 1e-3));
  Add(TUnit.Create('�����', 1e-2));
  Add(TUnit.Create('����', 1e-1));
  Add(TUnit.Create('����', 1e1));
  Add(TUnit.Create('�����', 1e2));
  Add(TUnit.Create('����', 1e3));
  Add(TUnit.Create('����', 1e6));
  Add(TUnit.Create('����', 1e9));
  Add(TUnit.Create('����', 1e12));
  Add(TUnit.Create('����', 1e15));
  Add(TUnit.Create('����', 1e18));
  Add(TUnit.Create('����', 1e21));
  Add(TUnit.Create('����', 1e24));
end;

end.

