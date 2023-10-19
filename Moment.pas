unit Moment;

interface

uses
  TypeInterface;

type
  TMoment = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMoment }

constructor TMoment.Create;
begin
  inherited Create('������ ����������/��������');
end;

procedure TMoment.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�*�', 1));
  Add(TUnit.Create('H*��', 0.01));
  Add(TUnit.Create('�*��', 0.001));
  Add(TUnit.Create('�*�', 9.80665e-3));
  Add(TUnit.Create('�*��', 9.80665e-5));
  Add(TUnit.Create('�*��', 9.80665e-6));
  Add(TUnit.Create('��*�', 0.00980665));
  Add(TUnit.Create('��*��', 0.980665));
  Add(TUnit.Create('��*��', 9.80665));
  Add(TUnit.Create('ps*i(��������*����)', 4.44822*0.0254));
  Add(TUnit.Create('���*��', 1e-7));
  Add(TUnit.Create('Lbf*ft (����-����*���)', 1.35582));
end;

end.
