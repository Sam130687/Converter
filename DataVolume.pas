unit DataVolume;

interface

uses
  TypeInterface;

type
  TDataVolume = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDataVolume }

constructor TDataVolume.Create;
begin
  inherited Create('����� ������', False);
end;

procedure TDataVolume.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('���', 1));
  Add(TUnit.Create('�������', 1024));
  Add(TUnit.Create('�������', 1048576));
  Add(TUnit.Create('�������', 1073741824));
  Add(TUnit.Create('�������', 1099511627776));
  Add(TUnit.Create('�������', 1125899906842624));
  Add(TUnit.Create('����', 8));
  Add(TUnit.Create('��������', 8192));
  Add(TUnit.Create('��������', 8388608));
  Add(TUnit.Create('��������', 8589934592));
  Add(TUnit.Create('��������', 8796093022208));
  Add(TUnit.Create('��������', 9007199254740992));
  Add(TUnit.Create('����(�� �����)', 8));
  Add(TUnit.Create('��������(�� �����)', 8000));
  Add(TUnit.Create('��������(�� �����)', 8000000));
  Add(TUnit.Create('��������(�� �����)', 8000000000));
  Add(TUnit.Create('��������(�� �����)', 8000000000000));
  Add(TUnit.Create('��������(�� �����)', 8000000000000000));
end;

end.
