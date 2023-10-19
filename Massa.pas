unit Massa;

interface

uses
  TypeInterface;

type
  TMass = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMass }

constructor TMass.Create;
begin
  inherited Create('�����');
end;

procedure TMass.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�����', 1));
  Add(TUnit.Create('�����', 1000000));
  Add(TUnit.Create('������� �����', 1016047));
  Add(TUnit.Create('�������� �����', 907184.7));
  Add(TUnit.Create('�������', 100000));
  Add(TUnit.Create('����.��.�����', (1.6605402*10E-25)));
  Add(TUnit.Create('�����', (0.2)));
  Add(TUnit.Create('����', 453.592));
  Add(TUnit.Create('�����', (453.592/16)));
  Add(TUnit.Create('�������� �����', 31.1035));
  Add(TUnit.Create('����������� �����', 31.1035));
  Add(TUnit.Create('����', 14593.9));
  Add(TUnit.Create('����', (453.592/7000)));
  Add(TUnit.Create('������', 1.7718));
  Add(TUnit.Create('�������', 1.29598));
  Add(TUnit.Create('������', 1000000));
  Add(TUnit.Create('���(�����.����.)', 16380.4815));
  Add(TUnit.Create('���(�����.����.)', (16380.4815/1280)));
  Add(TUnit.Create('����(�����.����.)', (16380.4815/368640)));
  Add(TUnit.Create('����(���.)', (16380.4815/40)));
  Add(TUnit.Create('��������', (16380.4815/3840)));
end;
end.
