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
  inherited Create('ќбъЄмный расход');
end;

procedure TVolumeFlow.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('м^3/сек.', 1));
  Add(TUnit.Create('м^3/мин.', 16668e-6));
  Add(TUnit.Create('м^3/час', 277.8e-6));
  Add(TUnit.Create('м^3/сутки', 11.574e-6));

  Add(TUnit.Create('Ћитр/с', 1.000028e-3));
  Add(TUnit.Create('Ћитр/мин', 16.667e-6));
  Add(TUnit.Create('Ћитр/час', 277.8e-9));
  Add(TUnit.Create('Ћитр/сутки', 11.574e-9));
  Add(TUnit.Create('ƒюйм^3/с', 16.4e-6));
  Add(TUnit.Create('‘ут^3/c', 28.3e-3));
  Add(TUnit.Create('ярд^3/c', 0.765));
  Add(TUnit.Create('√ал/с', 3.785e-3));
  Add(TUnit.Create('√ал/мин', 63.09e-6));
  Add(TUnit.Create('√ал/ч', 1.0515e-6));
end;

end.
