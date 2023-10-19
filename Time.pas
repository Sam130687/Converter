unit Time;

interface

uses
  TypeInterface;

type
  TTime = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TTime }

constructor TTime.Create;
begin
  inherited Create('�����');
end;

procedure TTime.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�������', 1));
  Add(TUnit.Create('������������ ���', 3.15581486e7));
  Add(TUnit.Create('������������� ���', 2.9947970678400004e7));
  Add(TUnit.Create('���������������� ���', 3.1558433011776e7));
  Add(TUnit.Create('������', 60));
  Add(TUnit.Create('���', 60*60 ));
  Add(TUnit.Create('�����', 60*60*24 ));
  Add(TUnit.Create('������', 60*60*24*7 ));
  Add(TUnit.Create('������', 60*60*24*10 ));
  Add(TUnit.Create('����� (28�.)', 60*60*24*28 ));
  Add(TUnit.Create('����� (29�.)', 60*60*24*29 ));
  Add(TUnit.Create('����� (30�.)', 60*60*24*30 ));
  Add(TUnit.Create('�����(31�.)', 60*60*24*31 ));
  Add(TUnit.Create('������� 1', 60*60*24*(31+28+31) ));
  Add(TUnit.Create('������� 1(����������)', 60*60*24*(31+29+31) ));
  Add(TUnit.Create('������� 2', 60*60*24*(30+31+30) ));
  Add(TUnit.Create('������� 3', 60*60*24*(31+31+30) ));
  Add(TUnit.Create('������� 4', 60*60*24*(31+30+31) ));
  Add(TUnit.Create('���(365�.)', 60*60*24*365 ));
  Add(TUnit.Create('���(366�.)', 60*60*24*366 ));
  Add(TUnit.Create('���', 3153600000)); //3600*24*365*100
  Add(TUnit.Create('�����������', 31536000000));  // 3600*24*365*1000
  Add(TUnit.Create('������ ���', 3.1567708800000003e7));
end;

end.

