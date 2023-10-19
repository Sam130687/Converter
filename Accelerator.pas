unit Accelerator;

interface

uses
  TypeInterface;

type
  TAccelerator = class(TUnitGroup)
  protected
    procedure FillListUnit; override;
  public
    constructor Create;
  end;

implementation

{ TAccelerator }

constructor TAccelerator.Create;
begin
  inherited Create('���������');
end;

procedure TAccelerator.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('�/�^2', 1));
  Add(TUnit.Create('�/�^2', 1/(3600*3600)));
  Add(TUnit.Create('����/�^2', 1609.344));
  Add(TUnit.Create('����/�^2', 1609.344/(3600*3600)));
  Add(TUnit.Create('���', 0.01));
  Add(TUnit.Create('���/�^2', 0.3048));
  Add(TUnit.Create('���/���^2', 0.3048/(3600*3600)));
end;

end.
