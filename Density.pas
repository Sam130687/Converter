unit Density;

interface

uses
  TypeInterface;

type
  TDensity = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TDensity }

constructor TDensity.Create;
begin
  inherited Create('���������');
end;

procedure TDensity.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�/�^3', 1));
  Add(TUnit.Create('�/��^3', 1e6));
  Add(TUnit.Create('����/���^3', 16020));
  Add(TUnit.Create('����/����^3', 27679700));
  Add(TUnit.Create('����/���^3', 593.27));
  Add(TUnit.Create('����/������(USA)', 119800));
  Add(TUnit.Create('�����/���^3', 1001.10));
  Add(TUnit.Create('����/���^3', 515400));
  Add(TUnit.Create('�/�', 999.972));
  Add(TUnit.Create('�/��', 999972));
  Add(TUnit.Create('���.��.�����/�^3', 9806.65));
  Add(TUnit.Create('�/��^3', 1000))
end;

end.



