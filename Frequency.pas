unit Frequency;

interface

uses
  TypeInterface;

type
  TFrequency = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TFrequency }

constructor TFrequency.Create;
begin
  inherited Create('�������');
end;

procedure TFrequency.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('����', 1));
  Add(TUnit.Create('������/�', 1));
  Add(TUnit.Create('������/���', 1/60));
  Add(TUnit.Create('������/���', 1/3600));
  Add(TUnit.Create('����� � ���.', 1));
  Add(TUnit.Create('����� � ���.', 1/60));
  Add(TUnit.Create('����� � ���', 1/3600));
  Add(TUnit.Create('������ � ���.', 1));
  Add(TUnit.Create('������ � ���.', 1/60));
  Add(TUnit.Create('������ � ���', 1/3600));
  Add(TUnit.Create('������ � ���.', 1/(2*Pi)));
  Add(TUnit.Create('������ � ���.', 1/(2*Pi*60)));
  Add(TUnit.Create('������ � ���', 1/(2*Pi*3600)));
end;

end.

