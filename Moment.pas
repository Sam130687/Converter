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
  inherited Create('Момент изгибающий/крутящий');
end;

procedure TMoment.FillListUnit;
begin
  inherited;
  Add(TUnit.Create('Н*м', 1));
  Add(TUnit.Create('H*см', 0.01));
  Add(TUnit.Create('Н*мм', 0.001));
  Add(TUnit.Create('г*м', 9.80665e-3));
  Add(TUnit.Create('г*см', 9.80665e-5));
  Add(TUnit.Create('г*мм', 9.80665e-6));
  Add(TUnit.Create('гс*м', 0.00980665));
  Add(TUnit.Create('гс*см', 0.980665));
  Add(TUnit.Create('гс*мм', 9.80665));
  Add(TUnit.Create('ps*i(Фунтсилы*дюйм)', 4.44822*0.0254));
  Add(TUnit.Create('Дин*см', 1e-7));
  Add(TUnit.Create('Lbf*ft (Фунт-сила*фут)', 1.35582));
end;

end.
