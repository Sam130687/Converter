unit Volume;

interface

uses
  TypeInterface, Length;

type
  TVolume = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
    function Multiplier(AValue: Extended): Extended; override;
  end;

implementation

{ TVolume }
// a^b = exp(ln(a^b)) = exp(b*ln(a))

constructor TVolume.Create;
begin
  inherited Create('�����');
end;

procedure TVolume.FillListUnit;
var
  i : Integer;
begin
  inherited;
  Add(TUnit.Create('����^3', 1));
  Add(TUnit.Create('������ UK', 0.00454609));
  Add(TUnit.Create('������ USA', 0.00378543));
  Add(TUnit.Create('������ UK', 0.0363687));
  Add(TUnit.Create('������ USA', 0.0352393));
  Add(TUnit.Create('������� �����', 0.158983));
  Add(TUnit.Create('������� �����', 0.115628));
  Add(TUnit.Create('�������. �����', 1.13));
  Add(TUnit.Create('����� UK', 28.4130e-6));
  Add(TUnit.Create('����� USA', 29.5737e-6));
  Add(TUnit.Create('����� ���. UK', 0.00056826125));
  Add(TUnit.Create('����� ���. UK', 0.000473179));
  Add(TUnit.Create('����� ���. USA', 0.000473179));
  Add(TUnit.Create('����� ���. USA', 0.000550614));
  Add(TUnit.Create('����', 0.001));
  Add(TUnit.Create('����������� �����', 1e-6 ));
  Add(TUnit.Create('������', (2*0.00056826125)));
  Add(TUnit.Create('��', 0.00084));
  Add(TUnit.Create('������', 0.05508));
  Add(TUnit.Create('�������. �����', 2.83));
  Add(TUnit.Create('�����(�����.����.)', 0.0122994));
  Add(TUnit.Create('����(�����.����.)', 10/0.0122994));
  Add(TUnit.Create('������� ������', 16/0.0122994));
  Add(TUnit.Create('������� ��������', 20/0.0122994));
  Add(TUnit.Create('�����(�����.����.)', 100/0.0122994));
  Add(TUnit.Create('��������(�����.����.)', 0.209909));
  Add(TUnit.Create('��������(�����.����.)', 0.262387));
  Add(TUnit.Create('������(�����.����.)', 0.00327984));

  with TLength.Create do
  try
    for I := 1 to Count - 1 do
      Add(TUnit.Create(Item[i].Name + '^3', Multiplier(Item[i].Factor)));
  finally
    Free;
  end;
end;

function TVolume.Multiplier(AValue: Extended): Extended;
begin
  Result := AValue * AValue* AValue;
end;

end.
