unit MassFlow;

interface

uses
  TypeInterface;

type
  TMassFlow = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TMassFlow }

constructor TMassFlow.Create;
begin
  inherited Create('�������� ������');
end;

procedure TMassFlow.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�/�', 1));
  Add(TUnit.Create('�/���', 16.667e-3));
  Add(TUnit.Create('�/���', 277.8e-3));
  Add(TUnit.Create('�/�����', 11.574e-3));
  Add(TUnit.Create('�����/�', 28.3e-3));
  Add(TUnit.Create('����/���', 126e-6));
end;

end.
