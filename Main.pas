unit Main;

interface

uses
  Messages, Windows, Dialogs, Menus, SysUtils, Controls, Grids, Forms,
  StdCtrls, Classes, StdActns, ActnList, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, System.Variants,
  dxLayoutContainer, cxSpinEdit, cxCustomListBox, cxListBox, cxClasses,
  dxLayoutControl, TypeInterface, dxStatusBar, dxLayoutLookAndFeels;

type
  TMainForm = class(TForm)
    layContainer: TdxLayoutControl;
    lcgrContainerGroup_Root: TdxLayoutGroup;
    lcgrMainGroup: TdxLayoutGroup;
    cbbConvertData: TcxComboBox;
    lciConvertData: TdxLayoutItem;
    lstPrefixFrom: TcxListBox;
    lciPrefixFrom: TdxLayoutItem;
    cbbFormat: TComboBox;
    lciFormat: TdxLayoutItem;
    speDigits: TcxSpinEdit;
    lciDigits: TdxLayoutItem;
    spePrecision: TcxSpinEdit;
    lciPrecision: TdxLayoutItem;
    lcgrSettings: TdxLayoutGroup;
    txtValueFrom: TcxTextEdit;
    lciValueFrom: TdxLayoutItem;
    lstSIFrom: TcxListBox;
    lciSIFrom: TdxLayoutItem;
    lstPrefixTo: TcxListBox;
    lciPrefixTo: TdxLayoutItem;
    lstSITo: TcxListBox;
    lciSITo: TdxLayoutItem;
    txtValueTo: TcxTextEdit;
    lciValueTo: TdxLayoutItem;
    lcgrFromGroup: TdxLayoutGroup;
    lcgrToGroup: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup;
    clg1: TdxLayoutAutoCreatedGroup;
    clg2: TdxLayoutAutoCreatedGroup;
    dsb1: TdxStatusBar;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytstndrdlkndfl1: TdxLayoutStandardLookAndFeel;
    procedure txtValueFromKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbbConvertDataPropertiesEditValueChanged(Sender: TObject);
    procedure txtValueFromPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
    procedure ChangeData(Sender: TObject);
  private
    FPrefix : TUnitGroup;
  end;

var
  MainForm: TMainForm;

implementation

uses
  Frequency, Accelerator, Amperage, AngularAcceleration, AngularVelocity, Capacity, Charge,
  Corner, DataVolume, Density, DynamicMoment, DynamicViscosity, EnergyWork,
  Force, KinematicViscosity, Length, Massa, MassFlow, MolarVolume,
  Moment, MomentInertia, MomentResistance, Power, Prefixes, Pressure, Resistance,
  Speed, Square, Temperature, Time, TransferRate, Voltage, Volume, VolumeFlow;

{$R *.dfm}

procedure TMainForm.txtValueFromKeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0'..'9', 'e', 'E', ',', #8, '-', #13:;
  else
    Key := Chr(0);
  end;
end;

procedure TMainForm.txtValueFromPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  if DisplayValue = '' then
    DisplayValue := 0;
end;

procedure TMainForm.cbbConvertDataPropertiesEditValueChanged(Sender: TObject);
var
  i : Integer;
begin
  with cbbConvertData.ItemObject as TUnitGroup do
    begin
      lciPrefixFrom.Enabled := PrefixEnable;
      lstPrefixTo.Enabled := PrefixEnable;
      lstSIFrom.Clear;
      lstSITo.Clear;

      for I := 0 to Count - 1 do
        begin
          lstSIFrom.AddItem(Item[i].Name, Item[i]);
          lstSITo.AddItem(Item[i].Name, Item[i]);
        end;
      lstPrefixFrom.ItemIndex := 0;
      lstPrefixTo.ItemIndex := 0;
      lstSIFrom.ItemIndex := 0;
      lstSITo.ItemIndex := 0;

      txtValueFrom.EditValue := 0;
    end;
end;

procedure TMainForm.ChangeData(Sender: TObject);
var
  vPrefixFrom : Extended;
  vPrefixTo : Extended;
  vBaseSimpleValue : Extended;
begin
  if (lstPrefixFrom.ItemIndex < 0) or (lstSIFrom.ItemIndex < 0) or
   (lstPrefixTo.ItemIndex < 0) or (lstSITo.ItemIndex < 0) then Exit;

  txtValueTo.Clear;

  //Получаем множитель префикса слева
  with FPrefix.Item[lstPrefixFrom.ItemIndex] do
    begin
      Value := 1;
      vPrefixFrom := BaseValue;
    end;

  //Получаем множитель префикса справа
  with FPrefix.Item[lstPrefixTo.ItemIndex] do
    begin
      BaseValue := 1;
      vPrefixTo := Value;
    end;

  //Получаем базовое значение из выбранного слева
  with TUnit(lstSIFrom.ItemObject) do
    begin
      value := txtValueFrom.EditValue;
      vBaseSimpleValue := BaseValue;
    end;

  //Конвертируем с выводом результата.
  with TUnit(lstSITo.ItemObject) do
    begin
      BaseValue := vBaseSimpleValue *
                   TUnitGroup(cbbConvertData.ItemObject).Multiplier(vPrefixFrom) *
                   TUnitGroup(cbbConvertData.ItemObject).Multiplier(vPrefixTo);

      if lcgrSettings.ButtonOptions.CheckBox.Checked then
        txtValueTo.Text := floattostrf(Value, TFloatFormat(cbbFormat.ItemIndex), speDigits.EditValue+1, spePrecision.EditValue)
      else
        txtValueTo.EditValue := Value;
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
  procedure InitObject(AUnitGroup : TUnitGroup);
  begin
    cbbConvertData.Properties.Items.AddObject(AUnitGroup.Name, AUnitGroup);
  end;
var
  I: Integer;
begin
  InitObject(TAccelerator.Create);
  InitObject(TAmperage.Create);
  InitObject(TAngularAcceleration.Create);
  InitObject(TAngularVelocity.Create);
  InitObject(TCapacity.Create);
  InitObject(TCharge.Create);
  InitObject(TCorner.Create);
  InitObject(TDataVolume.Create);
  InitObject(TDensity.Create);
  InitObject(TDynamicMoment.Create);
  InitObject(TDynamicViscosity.Create);
  InitObject(TEnergyWork.Create);
  InitObject(TForce.Create);
  InitObject(TFrequency.Create);
  InitObject(TKinematicViscosity.Create);
  InitObject(TLength.Create);
  InitObject(TMass.Create);
  InitObject(TMassFlow.Create);
  InitObject(TMolarVolume.Create);
  InitObject(TMoment.Create);
  InitObject(TMomentInertia.Create);
  InitObject(TMomentResistance.Create);
  InitObject(TPower.Create);
  InitObject(TPressure.Create);
  InitObject(TResistance.Create);
  InitObject(TSpeed.Create);
  InitObject(TSquare.Create);
  InitObject(TTemperature.Create);
  InitObject(TTime.Create);
  InitObject(TTransferRate.Create);
  InitObject(TVoltage.Create);
  InitObject(TVolume.Create);
  InitObject(TVolumeFlow.Create);

  FPrefix := TPrefix.Create;

  for I := 0 to FPrefix.Count - 1 do
    begin
      lstPrefixFrom.AddItem(FPrefix.Item[i].Name, FPrefix.Item[i]);
      lstPrefixTo.AddItem(FPrefix.Item[i].Name, FPrefix.Item[i]);
    end;

  cbbConvertData.ItemIndex := 0;
end;

end.
