unit TypeInterface;

interface

type
  TUnit = class(TObject)
    FName : string;
    FFactor : Extended;
  protected
    FValue : Extended;
    function GetBaseValue: Extended; virtual;
    function GetValue: Extended; virtual;
    procedure SetBaseValue(const Value: Extended); virtual;
    procedure SetValue(const Value: Extended); virtual;
  public
    constructor Create(AName : string; AFactor : Extended); virtual;
    property BaseValue: Extended read GetBaseValue write SetBaseValue;
    property Value: Extended read GetValue write SetValue;
    property Name: string read FName;
    property Factor: Extended read FFactor;
  end;

  TUnitGroup = class(TObject)
  private
    FName : string;
    FPrefixEnable: Boolean;
    FListUnit : array of TUnit;
    function GetListUnit(index : Integer): TUnit;
    function GetCount: Integer;
  protected
    procedure FillListUnit; virtual; abstract;
  public
    constructor Create(AName : string; APrefixEnable : Boolean = True); virtual;
    destructor Destroy; override;
    function Multiplier(AValue : Extended) : Extended; virtual;
    function Add(AUnit : TUnit): Integer;
    property Item[index: Integer]: TUnit read GetListUnit;
    property Count: integer read GetCount;
    property Name: string read FName;
    property PrefixEnable: Boolean read FPrefixEnable;
  end;

implementation

{ TUnit }
constructor TUnit.Create(AName: string; AFactor: Extended);
begin
  FName := AName;
  FFactor := AFactor;
end;

function TUnit.GetBaseValue: Extended;
begin
  Result := FValue * FFactor;
end;

function TUnit.GetValue: Extended;
begin
  Result := FValue;
end;

procedure TUnit.SetBaseValue(const Value: Extended);
begin
  FValue := Value / FFactor;
end;

procedure TUnit.SetValue(const Value: Extended);
begin
  FValue := Value;
end;

{ TUnitGroup }
function TUnitGroup.Add(AUnit: TUnit): Integer;
var
  vCnt : Integer;
begin
  vCnt := Length(FListUnit) + 1;
  SetLength(FListUnit, vCnt);

  FListUnit[vCnt - 1] := AUnit;
  Result := vCnt;
end;

constructor TUnitGroup.Create(AName : string; APrefixEnable : Boolean = True);
begin
  FName := AName;
  FPrefixEnable := APrefixEnable;
  SetLength(FListUnit, 0);
end;

destructor TUnitGroup.Destroy;
var
  i : integer;
begin
  for I := Low(FListUnit) to High(FListUnit) do
    FListUnit[i].Free;

  inherited;
end;

function TUnitGroup.GetCount: Integer;
begin
  if Length(FListUnit) = 0 then
    FillListUnit;

  Result := Length(FListUnit);
end;

function TUnitGroup.GetListUnit(index : Integer): TUnit;
begin
  Result := nil;

  if index <= GetCount - 1 then
    Result := FListUnit[index];
end;

function TUnitGroup.Multiplier(AValue: Extended): Extended;
begin
  Result := AValue;
end;

end.
