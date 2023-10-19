unit VolumeFlow;

interface

uses
  TypeInterface;

type
  TVolumeFlow = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TVolumeFlow }

constructor TVolumeFlow.Create;
begin
  inherited Create('�������� ������');
end;

procedure TVolumeFlow.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�^3/���.', 1));
  Add(TUnit.Create('�^3/���.', 16668e-6));
  Add(TUnit.Create('�^3/���', 277.8e-6));
  Add(TUnit.Create('�^3/�����', 11.574e-6));

  Add(TUnit.Create('����/�', 1.000028e-3));
  Add(TUnit.Create('����/���', 16.667e-6));
  Add(TUnit.Create('����/���', 277.8e-9));
  Add(TUnit.Create('����/�����', 11.574e-9));
  Add(TUnit.Create('����^3/�', 16.4e-6));
  Add(TUnit.Create('���^3/c', 28.3e-3));
  Add(TUnit.Create('���^3/c', 0.765));
  Add(TUnit.Create('���/�', 3.785e-3));
  Add(TUnit.Create('���/���', 63.09e-6));
  Add(TUnit.Create('���/�', 1.0515e-6));
end;

end.
