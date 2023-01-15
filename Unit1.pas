unit Unit1;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsdelphisystem,
  WEBLib.Forms, WEBLib.Miletus, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls,
  WEBLib.StdCtrls, WEBLib.ComCtrls, WEBLib.WebCtrls, WEBLib.Storage,
  WEBLib.ExtCtrls, WEBLib.WebSocketClient, VCL.TMSFNCCustomControl,
  VCL.TMSFNCCustomPicker, VCL.TMSFNCComboBox, WEBLib.DropDown;

type
  TForm1 = class(TMiletusForm)
    pages: TWebPageControl;
    pageHome: TWebTabSheet;
    pageScenes: TWebTabSheet;
    pageRooms: TWebTabSheet;
    pageConfiguration: TWebTabSheet;
    titleCatheedral: TWebLabel;
    divConfigURL: TWebHTMLDiv;
    lablelConfigURL: TWebLabel;
    editConfigURL: TWebEdit;
    divConfigTOKEN: TWebHTMLDiv;
    labelConfigTOKEN: TWebLabel;
    editConfigTOKEN: TWebEdit;
    navLeft: TWebHTMLDiv;
    navRight: TWebHTMLDiv;
    divConfigBACKGROUND: TWebHTMLDiv;
    labelConfigBACKGROUND: TWebLabel;
    divConfigLONGDATE: TWebHTMLDiv;
    labelConfigLONGTIME: TWebLabel;
    editConfigLONGDATE: TWebEdit;
    labelConfigLONGDATE: TWebLabel;
    editConfigLONGTIME: TWebEdit;
    divConfigSHORTDATE: TWebHTMLDiv;
    labelConfigSHORTTIME: TWebLabel;
    labelConfigSHJORTDATE: TWebLabel;
    editConfigSHORTDATE: TWebEdit;
    editConfigSHORTTIME: TWebEdit;
    divConfigVERSION: TWebHTMLDiv;
    labelConfigVERSION: TWebLabel;
    dataConfigVERSION: TWebLabel;
    divConfigRELEASE: TWebHTMLDiv;
    labelConfigRELEASE: TWebLabel;
    dataConfigRELEASE: TWebLabel;
    divConfigSYSTEMDATE: TWebHTMLDiv;
    labelConfigSYSTEMDATE: TWebLabel;
    dataConfigSYSTEMDATE: TWebLabel;
    divConfigSYSTEMTIME: TWebHTMLDiv;
    labelConfigSYSTEMTIME: TWebLabel;
    dataConfigSYSTEMTIME: TWebLabel;
    divConfigSTATUS: TWebHTMLDiv;
    labelConfigSTATUS: TWebLabel;
    dataConfigSTATUS: TWebLabel;
    divConfigSTARTDATE: TWebHTMLDiv;
    labelConfigSTARTDATE: TWebLabel;
    dataConfigSTARTDATE: TWebLabel;
    divConfigSTARTTIME: TWebHTMLDiv;
    labelConfigSTARTTIME: TWebLabel;
    dataConfigSTARTTIME: TWebLabel;
    divConfigRUNNINGTIME: TWebHTMLDiv;
    labelConfigRUNNINGTIME: TWebLabel;
    dataConfigRUNNINGTIME: TWebLabel;
    tmrSeconds: TWebTimer;
    tmrConnect: TWebTimer;
    HAWebSocket: TWebSocketClient;
    divClock: TWebHTMLDiv;
    labelDate: TWebLabel;
    labelTime: TWebLabel;
    labelDay: TWebLabel;
    tmrInactivity: TWebTimer;
    circleMinute: TWebHTMLDiv;
    circleHour: TWebHTMLDiv;
    circleDay: TWebHTMLDiv;
    circleDawnDusk: TWebHTMLDiv;
    circleRiseSet: TWebHTMLDiv;
    circleHourMarker: TWebHTMLDiv;
    labelHomeSet: TWebLabel;
    dataHomeSet: TWebLabel;
    dataHomeDusk: TWebLabel;
    labelHomeRise: TWebLabel;
    dataHomeRise: TWebLabel;
    dataHomeDawn: TWebLabel;
    labelHomeDusk: TWebLabel;
    labelHomeDawn: TWebLabel;
    labelHomeDaylight: TWebLabel;
    dataHomeDaylight: TWebLabel;
    dataHomeTwilight: TWebLabel;
    labelHomeTwilight: TWebLabel;
    divHomeMoon: TWebHTMLDiv;
    navLeftInner: TWebHTMLDiv;
    navRightInner: TWebHTMLDiv;
    divClimate: TWebHTMLDiv;
    dataHomeTemperature: TWebLabel;
    labelHomeMin: TWebLabel;
    labelHomeMax: TWebLabel;
    dataHomeMax: TWebLabel;
    dataHomeMin: TWebLabel;
    labelHomeHumidity: TWebLabel;
    dataHomeHumidity: TWebLabel;
    dataHomeSetPoint: TWebLabel;
    labelHomeTempName: TWebLabel;
    labelSetPoint: TWebLabel;
    labelHomeMode: TWebLabel;
    dataHomeMode: TWebLabel;
    dataHomeAction: TWebLabel;
    labelHomeAction: TWebLabel;
    circleCurrent: TWebHTMLDiv;
    circleSetPoint: TWebHTMLDiv;
    circleHumidity: TWebHTMLDiv;
    circleCurrMark: TWebHTMLDiv;
    circleSetMarker: TWebHTMLDiv;
    circleHumMarker: TWebHTMLDiv;
    circleMinuteMarker: TWebHTMLDiv;
    dataHomeLightLevel: TWebLabel;
    btnHomeTempDown: TWebButton;
    btnHomeTempUp: TWebButton;
    btnHALinks: TWebButton;
    btnHASaveConfiguration: TWebButton;
    btnHALoadConfiguration: TWebButton;
    editConfigBACKGROUND: TWebEdit;
    btnListBackgrounds: TWebButton;
    listBackgrounds: TWebListBox;
    btnListTimesLong: TWebButton;
    btnListTimesShort: TWebButton;
    btnListDatesLong: TWebButton;
    btnListDatesShort: TWebButton;
    listDatesLong: TWebListBox;
    listDatesShort: TWebListBox;
    listTimesLong: TWebListBox;
    listTimesShort: TWebListBox;
    btnHelp: TWebButton;
    btnHome: TWebButton;
    btnChange: TWebButton;
    btnConfiguration: TWebButton;
    pageHelpConfig: TWebTabSheet;
    divHelpConfig: TWebHTMLDiv;
    pageConfigSensors: TWebTabSheet;
    divConfigSensors: TWebHTMLDiv;
    pageConfigInfo: TWebTabSheet;
    pageCustom1: TWebTabSheet;
    pageCustom2: TWebTabSheet;
    pageCustom3: TWebTabSheet;
    pageCustom4: TWebTabSheet;
    divCustom2: TWebHTMLDiv;
    divCustom1: TWebHTMLDiv;
    divCustom3: TWebHTMLDiv;
    divCustom4: TWebHTMLDiv;
    tmrSwitchPage: TWebTimer;
    tmrStartup: TWebTimer;
    pageInit: TWebTabSheet;
    divCatheedral: TWebLabel;
    divInit: TWebLabel;
    divInfoCatheedral: TWebHTMLDiv;
    labelInfoCatheedral: TWebLabel;
    dataInfoCatheedral: TWebLabel;
    divInfoVersion: TWebHTMLDiv;
    labelInfoVersion: TWebLabel;
    dataInfoVersion: TWebLabel;
    divInfoRelease: TWebHTMLDiv;
    labelInfoRelease: TWebLabel;
    dataInfoRelease: TWebLabel;
    divInfoRunning: TWebHTMLDiv;
    labelInfoRunning: TWebLabel;
    dataInfoRunning: TWebLabel;
    WebHTMLDiv7: TWebHTMLDiv;
    labelInfoPlatform: TWebLabel;
    dataInfoPlatform: TWebLabel;
    divInfoArch: TWebHTMLDiv;
    labelInfoArch: TWebLabel;
    dataInfoArch: TWebLabel;
    WebHTMLDiv9: TWebHTMLDiv;
    labelInfoBuild: TWebLabel;
    dataInfoBuild: TWebLabel;
    divInfoMemory: TWebHTMLDiv;
    labelInfoMemory: TWebLabel;
    dataInfoMemory: TWebLabel;
    divInfoInternet: TWebHTMLDiv;
    labelInfoInternet: TWebLabel;
    dataInfoInternet: TWebLabel;
    divInfoSystem: TWebHTMLDiv;
    labelInfoSystem: TWebLabel;
    dataInfoSystem: TWebLabel;
    divInfoHAVersion: TWebHTMLDiv;
    WebLabel25: TWebLabel;
    dataInfoHAVersion: TWebLabel;
    divInfoLatitude: TWebHTMLDiv;
    labelInfoLatitude: TWebLabel;
    dataInfoLatitude: TWebLabel;
    divInfoLongitude: TWebHTMLDiv;
    labelInfoLongitude: TWebLabel;
    dataInfoLongitude: TWebLabel;
    divInfoElevation: TWebHTMLDiv;
    labelInfoElevation: TWebLabel;
    dataInfoElevation: TWebLabel;
    divInfoCountry: TWebHTMLDiv;
    labelInfoCountry: TWebLabel;
    dataInfoCountry: TWebLabel;
    divInfoTimeZone: TWebHTMLDiv;
    labelInfoTimeZone: TWebLabel;
    dataInfoTimeZone: TWebLabel;
    divInfoInternal: TWebHTMLDiv;
    labelInfoInternal: TWebLabel;
    dataInfoInternal: TWebLabel;
    divInfoExternal: TWebHTMLDiv;
    labelInfoExternal: TWebLabel;
    dataInfoExternal: TWebLabel;
    divInfoLanguage: TWebHTMLDiv;
    labelInfoLanguage: TWebLabel;
    dataInfoLanguage: TWebLabel;
    divInfoCurrency: TWebHTMLDiv;
    labelInfoCurrency: TWebLabel;
    dataInfoCurrency: TWebLabel;
    divInfoTemperature: TWebHTMLDiv;
    labelInfoTemperature: TWebLabel;
    dataInfoTemperature: TWebLabel;
    divInfoMass: TWebHTMLDiv;
    labelInfoMass: TWebLabel;
    dataInfoMass: TWebLabel;
    divInfoDistance: TWebHTMLDiv;
    labelInfoDistance: TWebLabel;
    dataInfoDistance: TWebLabel;
    divInfoVolume: TWebHTMLDiv;
    labelInfoVolume: TWebLabel;
    dataInfoVolume: TWebLabel;
    divInfoPressure: TWebHTMLDiv;
    labelInfoPressure: TWebLabel;
    dataInfoPressure: TWebLabel;
    divInfoPrecipitation: TWebHTMLDiv;
    labelInfoPrecipitation: TWebLabel;
    dataInfoPrecipitation: TWebLabel;
    divInfoWindSpeed: TWebHTMLDiv;
    labelInfoWindSpeed: TWebLabel;
    dataInfoWindSpeed: TWebLabel;
    pageHelpConfigInfo: TWebTabSheet;
    divHelpConfigInfo: TWebHTMLDiv;
    pageHelpConfigSensors: TWebTabSheet;
    divHelpConfigSensors: TWebHTMLDiv;
    pageHelpCustom: TWebTabSheet;
    divHelpCustom: TWebHTMLDiv;
    pageHelpHome: TWebTabSheet;
    divHelpHome: TWebHTMLDiv;
    WebLabel1: TWebLabel;
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    circleDayMarker: TWebHTMLDiv;
    divBackground: TWebHTMLDiv;
    labelHomeLights: TWebLabel;
    dataHomeLights: TWebLabel;
    procedure tmrSecondsTimer(Sender: TObject);
    procedure editConfigChange(Sender: TObject);
    [async] procedure LoadConfiguration;
    procedure navLeftClick(Sender: TObject);
    procedure tmrConnectTimer(Sender: TObject);
    procedure dataConfigSTATUSClick(Sender: TObject);
    procedure SwitchPages(StartPage: Integer; EndPage: Integer);
    procedure HAWebSocketConnect(Sender: TObject);
    procedure HAWebSocketDisconnect(Sender: TObject);
    procedure HAWebSocketDataReceived(Sender: TObject; Origin: string; SocketData: TJSObjectRecord);
    procedure editConfigTOKENChange(Sender: TObject);
    procedure editConfigURLChange(Sender: TObject);
    procedure editConfigBACKGROUNDChange(Sender: TObject);
    procedure Sparkline_Donut(CTop, CLeft, CWidth, CHeight: Integer; Chart: TWebHTMLDiv; ChartData: String; Fill: String; Rotation: String; InnerRadius: Double; DisplayText: String);
    procedure MiletusFormCreate(Sender: TObject);
    procedure tmrInactivityTimer(Sender: TObject);
    procedure navRightClick(Sender: TObject);
    procedure btnHomeTempDownClick(Sender: TObject);
    procedure btnHomeTempUpClick(Sender: TObject);
    procedure StateChanged(Entity: String; State: JSValue);
    procedure btnListBackgroundsClick(Sender: TObject);
    procedure listBackgroundsChange(Sender: TObject);
    procedure btnListDatesLongClick(Sender: TObject);
    procedure listDatesLongChange(Sender: TObject);
    procedure listDatesShortChange(Sender: TObject);
    procedure btnListDatesShortClick(Sender: TObject);
    procedure listTimesLongChange(Sender: TObject);
    procedure btnListTimesLongClick(Sender: TObject);
    procedure listTimesShortChange(Sender: TObject);
    procedure btnListTimesShortClick(Sender: TObject);
    procedure btnHALinksClick(Sender: TObject);
    procedure btnHASaveConfigurationClick(Sender: TObject);
    procedure btnHALoadConfigurationClick(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure btnConfigurationClick(Sender: TObject);
    procedure ShowDisconnected;
    procedure ShowConnected;
    procedure SetupJavaScriptFunctions;
    procedure btnHelpClick(Sender: TObject);
    procedure ResetInactivityTimer(Sender: TObject);
    procedure divHelpConfigMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ConfigureTabSensors;
    procedure btnChangeClick(Sender: TObject);
    procedure tmrSwitchPageTimer(Sender: TObject);
    procedure tmrStartupTimer(Sender: TObject);
    procedure labelConfigSTATUSClick(Sender: TObject);
    procedure MiletusFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MiletusFormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure CopyPosition(src: TWebHTMLDiv; dest: TWebHTMLDiv);

  private
    { Private declarations }
  public
    { Public declarations }
    HASystemName :String;
    HATimeZone: String;
    HAID: Integer;
    HAGetConfig: Integer;
    HAGetStates: Integer;
    HAGetEvents: Integer;
    HAStates: JSValue;
    HAEntities: JSValue;
    HALoadConfig: Boolean;

    HATemperatureUnits: String;

    SunSensor: String;
    ClimateSensor: String;
    MoonSensor: String;
    DaylightSensor: String;

    LightsOn: Integer;
    LightsOff: Integer;
    LightsCount: Integer;
    Lights: JSValue;

    SunRise: String;
    SunSet: String;
    SunDawn: String;
    SunDusk: String;
    MoonIcon: String;

    ClimateName: String;
    ClimateMin: Double;
    ClimateMax: Double;
    ClimateSetPoint: Double;
    ClimateHumidity: Double;
    ClimateCurrent: Double;
    ClimateState: String;
    ClimateMode: String;
    ClimateLight: String;

    CustomPage1URL: String;
    CustomPage2URL: String;
    CustomPage3URL: String;
    CustomPage4URL: String;
    CustomPage1Refresh: String;
    CustomPage2Refresh: String;
    CustomPage3Refresh: String;
    CustomPage4Refresh: String;

    tabConfigSensors: JSValue;

    Features: Integer;

    PanelWidth: Integer;
    PanelHeight: Integer;
    MainButtonSize: Integer;
    MainNavSize: Integer;
    MainButtonPad: Integer;

    Circle1: String;
    Circle2: String;
    Circle3: String;
    Circle4: String;
    Circle5: String;
    CircleB: String;
  end;

var
  Form1: TForm1;

  AppStarted: TDateTime;
  AppVersion: String;
  AppRelease: String;
  AppBackground: String;

implementation

{$R *.dfm}

procedure TForm1.SetupJavaScriptFunctions;
begin
  asm
    window.CapWords = function(str) {
      const arr = str.split(' ');
      for (var i = 0; i < arr.length; i++) {
        arr[i] = arr[i].charAt(0).toUpperCase() + arr[i].slice(1);
      }
      return arr.join(' ');
    }
  end;
end;

procedure TForm1.ShowConnected;
begin
  if pages.TabIndex = 1
  then btnHome.Caption := '<i class="fa-solid fa-bolt fa-2x"></i>'
  else btnHome.Caption := '<i class="fa-solid fa-home fa-2x"></i>';

  btnHALinks.Enabled := True;
  btnHALoadConfiguration.Enabled := True;
  btnHASaveConfiguration.Enabled := True;
  btnHALinks.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
  btnHALoadConfiguration.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
  btnHASaveConfiguration.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
end;

procedure TForm1.ShowDisconnected;
begin
  btnHome.Caption := '<i class="fa-solid fa-triangle-exclamation fa-2x opacity-100 text-warning"></i>';

  btnHALinks.Enabled := False;
  btnHALoadConfiguration.Enabled := False;
  btnHASaveConfiguration.Enabled := False;
  btnHALinks.ElementHandle.ClassList.Replace('opacity-75','opacity-25');
  btnHALoadConfiguration.ElementHandle.ClassList.Replace('opacity-75','opacity-25');
  btnHASaveConfiguration.ElementHandle.ClassList.Replace('opacity-75','opacity-25');
end;

procedure TForm1.Sparkline_Donut(CTop, CLeft, CWidth, CHeight: Integer; Chart: TWebHTMLDiv; ChartData: String; Fill: String; Rotation: String; InnerRadius: Double; DisplayText: String);
var
  Element: TJSElement;
  Width: Integer;
  Height: Integer;

begin
  // Set Dimensions of Chart
  Chart.Top := CTop;
  Chart.Left := CLeft;
  Chart.Width := CWidth;
  Chart.Height := CHeight;

  // Create a place to attach the Sparkline
  Chart.ElementHandle.innerHTML := '<span></span>';

  // Add data to this place
  Element := Chart.ElementHandle.firstElementChild;
  Element.innerHTML := ChartData;

  // Get dimensions from size of encompassing DIV
  Width := Chart.Width;
  Height := Chart.Height;

  asm
    peity(Element, "pie", {
      width: Width,
      height: Height,
      fill: JSON.parse(Fill),
      innerRadius: InnerRadius
    });

    Element.parentElement.lastElementChild.style.transform = ' rotate('+Rotation+')';

    const newdiv = document.createElement("div");
    const newtxt = document.createTextNode(DisplayText);
    newdiv.appendChild(newtxt);
    newdiv.style.cssText = 'position:absolute; display:flex; align-items:center; justify-content:center; width:100%; height:100%; top:0px; left:0px; color:#fff; font-size:10px;';
    Element.parentElement.appendChild(newdiv);
  end;
end;


procedure TForm1.StateChanged(Entity: String; State: JSValue);
begin

  // This is used to convert data coming from Home Assistant into something that we can use.
  // We also take the opporutnity to try and filter or adjust the data to meet our needs, such
  // as capitalizing words, removing superfluous words, trimming text, and so on.  Though much
  // of the time this can be done in Home Assistant directly.  Insert your preferences here!


  if (Entity = ClimateSensor) then
  begin
    asm
      this.ClimateName = window.CapWords(State.attributes.friendly_name).replace('Thermostat','').trim();
      this.ClimateMin = State.attributes.min_temp;
      this.ClimateMax = State.attributes.max_temp;
      this.ClimateHumidity = State.attributes.current_humidity;
      this.ClimateCurrent = State.attributes.current_temperature;
      this.ClimateSetPoint = State.attributes.temperature;
      this.ClimateState = window.CapWords(State.state).trim();
      this.ClimateMode = window.CapWords(State.attributes.hvac_action).trim();
    end;
  end

  else if (Entity = SunSensor) then
  begin
    asm
      this.SunRise = luxon.DateTime.fromISO(State.attributes.next_rising).toFormat('HH:mm');
      this.SunSet = luxon.DateTime.fromISO(State.attributes.next_setting).toFormat('HH:mm');
      this.SunDawn = luxon.DateTime.fromISO(State.attributes.next_dawn).toFormat('HH:mm');
      this.SunDusk = luxon.DateTime.fromISO(State.attributes.next_dusk).toFormat('HH:mm');
    end;
  end

  else if (Entity = MoonSensor) then
  begin
    asm
      this.MoonIcon = State.attributes.icon;
    end;
  end

  else if (Entity = DaylightSensor) then
  begin
    asm
      this.ClimateLight = (State.attributes.light_level+' '+State.attributes.unit_of_measurement).replace('lx','lux');
    end;
  end;

  // Update entire Home Page right away
  if (pages.TabIndex = 1) then
  begin
    tmrSeconds.Tag := 1;
    tmrSecondsTimer(nil);
  end;

end;

procedure TForm1.btnHALinksClick(Sender: TObject);
begin
  SwitchPages(0,5);
end;

procedure TForm1.btnHALoadConfigurationClick(Sender: TObject);
begin

  // Change icon to indicate an update is happening.
  // Though in this case it might be too quick to be visible
  btnHALoadConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row"><div class="mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div><i class="fa-solid fa-rotate fa-spin fa-fw" style="color:black; font-size:24px;"></i><div class="ps-2 lh-1" style="color:black;text-align:left;">Load Configuration<br />from Home Assistant</div></div>';

  // Set flag to indicate that when states arrive, we want to retrieve the configuration
  HALoadConfig := True;

  // Request full set of states again (no option to limit what is returned
  HAID := HAID + 1;
  HAGetStates := HAID;
  HAWebSocket.Send('{"id":'+IntToStr(HAID)+',"type": "get_states"}');

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnHASaveConfigurationClick(Sender: TObject);
var
  Command: String;
  Data: String;
  i: Integer;
begin

  // Change icon to indicate an update is happening.
  // Though in this case it might be too quick to be visible
  btnHASaveConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row"><i class="fa-solid fa-rotate fa-fw fa-spin" style="color:black; font-size:24px;"></i><div class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div><div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div></div>';

  // Update version information
  HAID := HAID + 1;
  Data := 'Catheedral: Version '+dataConfigVersion.Caption+', Released '+dataConfigRelease.Caption+' (Saved: '+FormatDateTime('yyyy-MMM-dd hh:nn:ss',Now)+ ')';
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_config_version","value":"'+Data+'"}}';
  HAWebSocket.Send(Command);

  // Update Var 000: Date and Time Formats, Background as JSON object
  HAID := HAID + 1;
  Data := '{"LD":"'+editConfigLongDate.Text+'",'+
           '"SD":"'+editConfigShortDate.Text+'",'+
           '"LT":"'+editConfigLongTime.Text+'",'+
           '"ST":"'+editConfigShortTime.Text+'",'+
           '"BG":"'+editConfigBackground.Text+'"}';
  asm Data = JSON.stringify(Data); end;
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_config_var_000","value":'+Data+'}}';
  HAWebSocket.Send(Command);

  // Update var 001+ values from table, where the number of entries in the table
  // should match the number of var entries in Home Assistant, ideally
  i := 1;
  while (i <= Features) do
  begin
    HAID := HAID + 1;
    asm Data = this.tabConfigSensors.getRow(i).getCell('entity_id').getValue(); end;
    Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_config_var_'+Format('%.*d',[3,i])+'","value":"'+Data+'"}}';
    HAWebSocket.Send(Command);
    i := i + 1
  end;

  // Revert to normal icon
  btnHASaveConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row"><i class="fa-solid fa-right-long fa-fw" style="color:black; font-size:24px;"></i><div class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div><div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div></div>';

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnHomeClick(Sender: TObject);
begin
  if pages.TabIndex = 1
  then dataConfigSTATUSClick(Sender)
  else SwitchPages(pages.TabIndex, 1);

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnHomeTempDownClick(Sender: TObject);
begin
  HAID := HAID + 1;
  HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "climate", "service": "set_temperature", "service_data": {"temperature":'+IntToStr(Trunc(ClimateSetPoint - 1))+'}, "target": {"entity_id":"'+ClimateSensor+'"}}');
end;

procedure TForm1.btnHomeTempUpClick(Sender: TObject);
begin
  HAID := HAID + 1;
  HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "climate", "service": "set_temperature", "service_data": {"temperature":'+IntToStr(Trunc(ClimateSetPoint + 1))+'}, "target": {"entity_id":"'+ClimateSensor+'"}}');
end;

procedure TForm1.dataConfigSTATUSClick(Sender: TObject);
begin
  HAWebSocket.Disconnect;
  HAWebSocket.Active := False;
  dataConfigSTATUS.Caption := 'Not Connected';
  dataConfigSTATUS.ElementLabelClassName := 'Title StatusBad';

  ShowDisconnected;

  tmrConnect.Tag := 0;
  tmrConnect.Enabled := False;
  tmrConnect.Enabled := True;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.divHelpConfigMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ResetInactivityTimer(Sender);
end;

procedure TForm1.editConfigBACKGROUNDChange(Sender: TObject);
var
  StoredValue: String;
begin
  editConfigChange(nil);
  if (Trim(editConfigBACKGROUND.Text) <> '') and (LowerCase(Trim(editConfigBACKGROUND.Text)) <> 'none') then
  begin
    AppBackground := editConfigBACKGROUND.Text;
    divBackground.ElementHandle.style.setProperty('background', AppBackground);
  end;
end;

procedure TForm1.editConfigChange(Sender: TObject);
var
  AppINIFile: TMiletusINIFile;
  i: Integer;
  FeatureKey: String;
  FeatureValue: String;

begin
//  console.log('Saving Configuration');
  AppINIFile := TMiletusINIFile.Create(StringReplace(ParamStr(0),'.exe','',[])+'.ini');

  // Save each of the Configuration Page paramerts to the INI File
  AppIniFile.WriteString('Configuration', 'URL', editConfigURL.Text);
  AppIniFile.WriteString('Configuration', 'TOKEN', editConfigTOKEN.Text);
  AppIniFile.WriteString('Configuration', 'BACKGROUND', editConfigBACKGROUND.Text);
  AppIniFile.WriteString('Configuration', 'LONGDATE', editConfigLONGDATE.Text);
  AppIniFile.WriteString('Configuration', 'LONGTIME', editConfigLONGTIME.Text);
  AppIniFile.WriteString('Configuration', 'SHORTDATE', editConfigSHORTDATE.Text);
  AppIniFile.WriteString('Configuration', 'SHORTTIME', editConfigSHORTTIME.Text);

  // Save each of the links to Home Assistant to the INI file as well
  // Kind of a pain to get it out of Tabulator, but it is an odd thing we're doing...
  FeatureKey := '';
  FeatureValue := '';
  for i := 1 to Features do
  begin

    asm
      var table = this.tabConfigSensors;
      FeatureKey = table.getRow(i).getCell('feature').getValue();
      FeatureValue = table.getRow(i).getCell('entity_id').getValue();
      if (FeatureKey === undefined) {FeatureKey = ''};
      if (FeatureValue === undefined) {FeatureValue = ''};
    end;

    AppIniFile.WriteString('Home Assistant', FeatureKey, FeatureValue);
  end;

  // Update current Form variables
  asm
    var table = this.tabConfigSensors;

    this.SunSensor = table.getRow(1).getCell('entity_id').getValue();
    this.MoonSensor = table.getRow(2).getCell('entity_id').getValue();
    this.ClimateSensor = table.getRow(7).getCell('entity_id').getValue();
    this.DaylightSensor = table.getRow(8).getCell('entity_id').getValue();

    this.CustomPage1URL = table.getRow(3).getCell('entity_id').getValue();
    this.CustomPage2URL = table.getRow(4).getCell('entity_id').getValue();
    this.CustomPage3URL = table.getRow(5).getCell('entity_id').getValue();
    this.CustomPage4URL = table.getRow(6).getCell('entity_id').getValue();
  end;

  // Might as well load these up right away
  if   divCustom1.HTML.Text <> '<iframe src="'+CustomPage1URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom2.HTML.Text <> '<iframe src="'+CustomPage2URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom3.HTML.Text <> '<iframe src="'+CustomPage3URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom4.HTML.Text <> '<iframe src="'+CustomPage4URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  CustomPage1Refresh := FormatDateTime('yyyymmddhh',Now);
  CustomPage2Refresh := CustomPage1Refresh;
  CustomPage3Refresh := CustomPage1Refresh;
  CustomPage4Refresh := CustomPage1Refresh;

  // Update display right away
  tmrSecondsTimer(nil);

  // Cleanup
  AppINIFile.Free;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.editConfigTOKENChange(Sender: TObject);
begin
  editConfigChange(nil);
  dataConfigSTATUSClick(nil);
end;

procedure TForm1.editConfigURLChange(Sender: TObject);
begin
  editConfigChange(nil);
  dataConfigSTATUSClick(nil);
end;

procedure TForm1.HAWebSocketConnect(Sender: TObject);
begin
  dataConfigSTATUS.Caption := 'Connected';

  if pages.TabIndex = 1
  then btnHome.Caption := '<i class="fa-solid fa-bolt fa-2x"></i>'
  else btnHome.Caption := '<i class="fa-solid fa-home fa-2x"></i>';
end;

procedure TForm1.HAWebSocketDataReceived(Sender: TObject; Origin: string; SocketData: TJSObjectRecord);
var
  ResponseType: String;
  ResponseID: Integer;

  LocationName: String;
begin
  ResponseType := 'unknown';
  ResponseID := 0;

  if (dataConfigSTATUS.Caption <> 'Connected')
  then dataConfigSTATUS.Caption := 'Processing';

  asm

    var hadata = JSON.parse(SocketData.jsobject);
    ResponseType = hadata.type;


    if ((ResponseType == 'result') && (hadata.success == true)) {
      ResponseID = hadata.id;

      // Results from get_config
      if (hadata.id == this.HAGetConfig) {

        // Let's have a look at it, shall we??
        console.log('Config Information: '+SocketData.jsobject.length+' bytes');
        console.log(hadata);

        this.HASystemName = hadata.result.location_name;
        this.HATimeZone = hadata.result.time_zone;

        // We don't really care about these, but report them anyway
        dataInfoSystem.firstElementChild.innerHTML = hadata.result.location_name;
        dataInfoHAVersion.firstElementChild.innerHTML = hadata.result.version;
        dataInfoLatitude.firstElementChild.innerHTML = hadata.result.latitude.toFixed(5);
        dataInfoLongitude.firstElementChild.innerHTML = hadata.result.longitude.toFixed(5);
        dataInfoElevation.firstElementChild.innerHTML = hadata.result.elevation;
        dataInfoCountry.firstElementChild.innerHTML = hadata.result.country;
        dataInfoTimeZone.firstElementChild.innerHTML = hadata.result.time_zone;
        dataInfoInternal.firstElementChild.innerHTML = hadata.result.internal_url;
        dataInfoExternal.firstElementChild.innerHTML = hadata.result.external_url;
        dataInfoLanguage.firstElementChild.innerHTML = hadata.result.language;
        dataInfoCurrency.firstElementChild.innerHTML = hadata.result.currency;

        // We might care about these
        this.HATemperatureUnits = hadata.result.unit_system.temperature;
        dataInfoTemperature.firstElementChild.innerHTML = hadata.result.unit_system.temperature;
        dataInfoMass.firstElementChild.innerHTML = hadata.result.unit_system.mass;
        dataInfoDistance.firstElementChild.innerHTML = hadata.result.unit_system.length;
        dataInfoVolume.firstElementChild.innerHTML = hadata.result.unit_system.volume;
        dataInfoPressure.firstElementChild.innerHTML = hadata.result.unit_system.pressure;
        dataInfoPrecipitation.firstElementChild.innerHTML = hadata.result.unit_system.accumulated_precipitation;
        dataInfoWindSpeed.firstElementChild.innerHTML = hadata.result.unit_system.wind_speed;
      }

      // Results from get_states
      if (hadata.id == this.HAGetStates) {

        // The idea is that we'll initialize values here while we're at it,
        // so that there are some reasonable defaults in case no data is found.
        // But we'll call the same function that we call when handling events
        // so we don't have quite as much code duplication.

        // This is the state of all Home Assistant objects and their contents in detail
        this.HAStates = hadata.result.sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);

        // Let's have a look at it, shall we??
        console.log('State Information: '+SocketData.jsobject.length+' bytes');
        console.log(this.HAStates);

        // This is a list of the names of all the entities that have a state, sorted
        this.HAEntities = this.HAStates.map( obj => obj.entity_id ).sort();
//        console.log(this.HAEntities);

        // Sun Information
        if (this.SunSensor !== '') {
          var sun = hadata.result.find(o => o.entity_id === this.SunSensor);
          if (sun !== undefined) {
            this.StateChanged(this.SunSensor, sun);
          }
        }

        // Moon Information
        if (this.MoonSensor !== '') {
          var moon = hadata.result.find(o => o.entity_id === this.MoonSensor);
          if (moon !== undefined) {
            this.StateChanged(this.MoonSensor, moon);
          }
        }

        // Climate Information
        if (this.ClimateSensor !== '') {
          var climate = hadata.result.find(o => o.entity_id === this.ClimateSensor);
          if (climate !== undefined) {
            this.StateChanged(this.ClimateSensor, climate);
          }
        }

        // Dayight Information
        if (this.DaylightSensor !== '') {
          var daylight = hadata.result.find(o => o.entity_id === this.DaylightSensor);
          if (daylight !== undefined) {
            this.StateChanged(this.DaylightSensor, daylight);
          }
        }

        // There are FOUR lights
        this.LightsOn = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && (o.state == "on") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
          }).length;
        this.LightsOff = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && (o.state == "off") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
          }).length;
        this.Lights = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
          }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        this.LightsCount = this.Lights.length;

        // Lets include the groups so we can use them later, but not include them in the counts
        var LightGroups = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && ((o.attributes.lights !== undefined) || (o.entity_id.indexOf("_group") !== -1)) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
          }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        this.Lights = [...this.Lights, ...LightGroups];

        // Let's have a look at it, shall we??
        console.log('Lighting Information: '+JSON.stringify(this.Lights).length+' bytes');
        console.log(this.Lights);


        // Load Configuration
        if (this.HALoadConfig == true) {
          for (var i = 0; i <= this.Features; i++) {
            var param = hadata.result.find(o => o.entity_id === 'var.catheedral_config_var_'+String(i).padStart(3,'0'));
            if (param.state !== undefined) {
              // Date/TimeFormats and Background as JSON stored in 000
              if (i == 0) {
                var params = JSON.parse(param.state);
                editConfigLONGDATE.value = params.LD;
                editConfigSHORTDATE.value = params.SD;
                editConfigLONGTIME.value = params.LT;
                editConfigSHORTTIME.value = params.ST;
                editConfigBACKGROUND.value = params.BG;
              }
              // List of sensors stored in 001..Features
              else {
                this.tabConfigSensors.getRow(i).getCell('entity_id').setValue(param.state);
              }
            }
          }

          // Reconnect to reload everything
          this.editConfigChange(null);
          this.editConfigBACKGROUNDChange(null);
          this.dataConfigSTATUSClick(null);

          // And don't run this again unless asked
          this.HALoadConfig = false;

          // Put back the normal icon
          this.btnHALoadConfiguration.SetCaption('<div class="d-flex align-items-center justify-content-stretch flex-row"><div class="mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div><i class="fa-solid fa-right-long fa-fw" style="color:black; font-size:24px;"></i><div class="lh-1 ps-2" style="color:black;text-align:left;">Load Configuration<br />from Home Assistant</div></div>');
        }
      }
    }
    else if ((ResponseType == 'result') && (hadata.success == false)) {
      console.log(hadata);
    }
    else if ((ResponseType == 'event') && (hadata.id == this.HAGetEvents)) {
      ResponseID = hadata.id;
    }

  end;

  // Server asking to authenticate
  if (ResponseType = 'auth_required') then
  begin
    if (dataConfigSTATUS.Caption <> 'Connected')
    then dataConfigSTATUS.Caption := 'Authenticating';
    dataConfigSTATUS.ElementLabelClassName := 'Title StatusGood';
    HAWebSocket.Send('{"type": "auth","access_token":"'+editConfigTOKEN.Text+'"}');
  end

  // Authentication Successful
  else if (ResponseType = 'auth_ok') then
  begin
    dataConfigSTATUS.Caption := 'Connected';
    dataConfigSTATUS.ElementLabelClassName := 'Title StatusGood';
    tmrConnect.Enabled := False;

    ShowConnected;

    // We're in business.
    HAID := HAID + 1;
    HAGetConfig := HAID;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+',"type": "get_config"}');
    HAID := HAID + 1;
    HAGetStates := HAID;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+',"type": "get_states"}');
    HAID := HAID + 1;
    HAGetEvents := HAID;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+',"type": "subscribe_events", "event_type":"state_changed"}');

    ResetInactivityTimer(Sender);
  end

  // Failed to login with a valid token
  else if (ResponseType = 'auth_invalid') then
  begin
    dataConfigSTATUS.Caption := 'Invalid Token';
    dataConfigSTATUS.ElementLabelClassName := 'Title StatusBad';
    tmrConnect.Enabled := False;

    // Stay on this page
    tmrInActivity.Enabled := False;
  end

  // Response to our get_config request
  else if (ResponseType = 'result') and (ResponseID = HAGetConfig) then
  begin
    labelConfigSTATUS.Caption := HASystemName+ ' Status';
  end

  // Response to our get_states request
  else if (ResponseType = 'result') and (ResponseID = HAGetStates) then
  begin
//    labelConfigSTATUS.Caption := HASystemName+ ' Status';
  end

  // Response to our get_states request
  else if (ResponseType = 'event') and (ResponseID = HAGetEvents) then
  begin
    asm
      var hadata = JSON.parse(SocketData.jsobject);
      if (hadata.event.event_type == 'state_changed') {

        // Let's have a look at it, shall we??
//        console.log('Event Information: '+SocketData.jsobject.length+' bytes');
//        console.log(hadata);

        // Update light counts
        if (hadata.event.data.entity_id.indexOf("light.") == 0) {
          var lightidx = this.Lights.findIndex(o => o.entity_id == hadata.event.data.entity_id);
          if (lightidx > -1) {
            if ((this.Lights[lightidx].state == "off") && (hadata.event.data.new_state.state == "on")) {
              if (!((hadata.event.data.new_state.attributes.lights !== undefined) || (hadata.event.data.entity_id.indexOf("_group") > -1))) {
                this.LightsOn += 1;
                this.LightsOff -= 1;
              }
            } else if ((this.Lights[lightidx].state == "on") && (hadata.event.data.new_state.state == "off")) {
              if (!((hadata.event.data.new_state.attributes.lights !== undefined) || (hadata.event.data.entity_id.indexOf("_group") > -1))) {
                this.LightsOn -= 1;
                this.LightsOff += 1;
              }
            }
            this.Lights[lightidx] = hadata.event.data.new_state;
          }
        }

        if (hadata.event.data.entity_id == this.ClimateSensor) {
          this.StateChanged(hadata.event.data.entity_id, hadata.event.data.new_state);
        }
        else if (hadata.event.data.entity_id == this.SunSensor) {
          this.StateChanged(hadata.event.data.entity_id, hadata.event.data.new_state);
        }
        else if (hadata.event.data.entity_id == this.MoonSensor) {
          this.StateChanged(hadata.event.data.entity_id, hadata.event.data.new_state);
        }
        else if (hadata.event.data.entity_id == this.DaylightSensor) {
          this.StateChanged(hadata.event.data.entity_id, hadata.event.data.new_state);
        }
        else {
//          console.log("State changed: "+hadata.event.data.new_state.entity_id);
//          console.log(hadata.event);
        }
      }
      else {
//        console.log(hadata.event);
      }
    end;
  end

  // Some other message was received
  else
  begin
    asm
//      console.log(SocketData);
    end;
  end;

end;

procedure TForm1.HAWebSocketDisconnect(Sender: TObject);
begin
  HAWebSocket.Active := False;

  // If previously connected, then retry connection
  if dataConfigSTATUS.Caption = 'Connected' then
  begin
    dataConfigSTATUS.Caption := 'Not Connected';
    tmrConnect.Tag := 15;
    tmrConnect.Enabled := True;

    ShowDisconnected;
  end;
end;

procedure TForm1.labelConfigSTATUSClick(Sender: TObject);
begin
  SwitchPages(0, 6);
end;

procedure TForm1.listBackgroundsChange(Sender: TObject);
begin
  editconfigBackground.Text := listBackgrounds.Items[listBackgrounds.ItemIndex];
  listBackgrounds.Visible := False;
  btnListBackgrounds.Caption := '<i class="fa-solid fa-caret-down"></i>';
  editConfigBackgroundChange(Sender);
end;

procedure TForm1.listDatesLongChange(Sender: TObject);
begin
  editConfigLONGDATE.Text := listDatesLong.Items[listDatesLong.ItemIndex];
  listDatesLong.Visible := False;
  btnListDatesLong.Caption := '<i class="fa-solid fa-caret-down"></i>';
  editConfigChange(Sender);
end;

procedure TForm1.listDatesShortChange(Sender: TObject);
begin
  editConfigSHORTDATE.Text := listDatesShort.Items[listDatesShort.ItemIndex];
  listDatesShort.Visible := False;
  btnListDatesShort.Caption := '<i class="fa-solid fa-caret-down"></i>';
  editConfigChange(Sender);
end;

procedure TForm1.listTimesLongChange(Sender: TObject);
begin
  editConfigLONGTIME.Text := listTimesLong.Items[listTimesLong.ItemIndex];
  listTimesLong.Visible := False;
  btnListTimesLong.Caption := '<i class="fa-solid fa-caret-down"></i>';
  editConfigChange(Sender);
end;

procedure TForm1.listTimesShortChange(Sender: TObject);
begin
  editConfigShortTIME.Text := listTimesShort.Items[listTimesShort.ItemIndex];
  listTimesShort.Visible := False;
  btnListTimesShort.Caption := '<i class="fa-solid fa-caret-down"></i>';
  editConfigChange(Sender);
end;

procedure TForm1.LoadConfiguration;
var
  AppINIFile: TMiletusINIFile;
  StoredValue: String;
  FeatureKey: String;
  FeatureValue: String;
  i: Integer;
  os: TMiletusOSVersion;
  Internet: string;
const
  arches: TArray<String> = ['x86', 'x64','arm32','arm64'];
begin
  //  Console.log('Loading configuration');
  AppINIFile := TMiletusINIFile.Create(StringReplace(ParamStr(0),'.exe','',[])+'.ini');


  // Sort out a few other things while we're here
  os := Await(TMiletusOSVersion, GetOSVersionP);
  dataInfoPlatform.Caption := os.Name;
  dataInfoArch.Caption := arches[Integer(os.Architecture)];
  dataInfoBuild.Caption := IntToSTr(os.Major)+'.'+IntToStr(os.Minor)+' [ '+IntToStr(os.Build)+' ]';

  Internet := 'Unknown';
  asm
    var ipdata = await fetch('https://ipapi.co/json/').then(function(response) {return response.json()});
    Internet = ipdata.ip
  end;
  dataInfoInternet.Caption := Internet;


  // Update the version in the INI file if it has changed
  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'VERSION', 'UNKNOWN'));
  if AppVersion <> StoredValue then
  begin
    AppINIFile.WriteString('Configuration', 'VERSION', AppVersion);
  end;

  // Read in the Configuration Page values individually
  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'URL', ''));
  if StoredValue <> '' then editConfiguRL.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'TOKEN', ''));
  if StoredValue <> '' then editConfigTOKEN.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'BACKGROUND', ''));
  if StoredValue <> '' then editConfigBACKGROUND.Text := StoredValue;
  if (Trim(editConfigBACKGROUND.Text) <> '') and (LowerCase(Trim(editConfigBACKGROUND.Text)) <> 'none') then
  begin
    AppBackground := editConfigBACKGROUND.Text;
    divBackground.ElementHandle.style.setProperty('opacity', '1');
    divBackground.ElementHandle.style.setProperty('background', AppBackground);
  end;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'LONGDATE', ''));
  if StoredValue <> '' then editConfigLONGDATE.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'LONGTIME', ''));
  if StoredValue <> '' then editConfigLONGTIME.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'SHORTDATE', ''));
  if StoredValue <> '' then editConfigSHORTDATE.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'SHORTTIME', ''));
  if StoredValue <> '' then editConfigSHORTTIME.Text := StoredValue;


  // Add each of the links for Home Assistant from the INI file as well
  // Kind of a pain to get it back into Tabulator, but it is an odd thing we're doing...
  FeatureKey := '';
  FeatureValue := '';
  for i := 1 to Features do
  begin
    asm
      var table = this.tabConfigSensors;
      FeatureKey = table.getRow(i).getCell('feature').getValue();
      if (FeatureKey === undefined) {FeatureKey = ''};
    end;
    FeatureValue := await(String, AppINIFile.ReadString('Home Assistant', FeatureKey, ''));
    asm
      var table = this.tabConfigSensors;
      table.getRow(i).getCell('entity_id').setValue(FeatureValue);
    end;
  end;

  // Update current Form variables
  asm
    var table = this.tabConfigSensors;

    this.SunSensor = table.getRow(1).getCell('entity_id').getValue();
    this.MoonSensor = table.getRow(2).getCell('entity_id').getValue();
    this.ClimateSensor = table.getRow(7).getCell('entity_id').getValue();
    this.DaylightSensor = table.getRow(8).getCell('entity_id').getValue();

    this.CustomPage1URL = table.getRow(3).getCell('entity_id').getValue();
    this.CustomPage2URL = table.getRow(4).getCell('entity_id').getValue();
    this.CustomPage3URL = table.getRow(5).getCell('entity_id').getValue();
    this.CustomPage4URL = table.getRow(6).getCell('entity_id').getValue();
  end;

  // Might as well load these up right away
  if   divCustom1.HTML.Text <> '<iframe src="'+CustomPage1URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom2.HTML.Text <> '<iframe src="'+CustomPage2URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom3.HTML.Text <> '<iframe src="'+CustomPage3URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  if   divCustom4.HTML.Text <> '<iframe src="'+CustomPage4URL+'" width=1280 height=400 style="background:none; overflow:hidden;">'
  then divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';

  CustomPage1Refresh := FormatDateTime('yyyymmddhh',Now);
  CustomPage2Refresh := CustomPage1Refresh;
  CustomPage3Refresh := CustomPage1Refresh;
  CustomPage4Refresh := CustomPage1Refresh;

  // Cleanup
  AppINIFile.Free;
end;

procedure TForm1.MiletusFormCreate(Sender: TObject);
var
  datafile: String;
begin

  // Let's just do this versioning stuff by hand
  AppVersion := '1.0.3';
  AppRelease := '2023-Jan-03';
  AppStarted := Now;

  datafile := StringReplace(ParamStr(0),'.exe','',[])+'.ini';
  asm
    datafile = datafile.split('\\').pop().split('/').pop();
  end;
  dataInfoCatheedral.Caption := datafile;
  dataInfoVersion.Caption := AppVersion;
  dataInfoRelease.Caption := AppRelease;

  // Home Assistant State - Unknonw at start
  HASystemName := '';
  HAID := 0;
  ShowDisconnected;
  HALoadConfig := False;

  // Let's start with this.  Will adjust later.
  // Try to use these for all adjustments, so when we move to
  // different form factors, these are all we have to consider.
  PanelWidth := 1280;
  PanelHeight := 400;
  MainNavSize := 40;
  MainButtonSize := 40;
  MainButtonPad := 3;

  // Same goes for themes.  Probably lots that can be done,
  // but for now let's start here.
  Circle1 := 'darkred';
  Circle2 := 'darkgreen';
  Circle3 := 'royalblue';
  Circle4 := 'orange';
  Circle5 := 'yellow';
  CircleB := '#FFFFFF40';

  // Everything is "faded out" to begin with
  pages.TabIndex := 11;  // start with init page
  pages.ElementHandle.style.setProperty('opacity','0');
  divCatheedral.ElementHandle.style.setProperty('opacity','0');
  divInit.ElementHandle.style.setProperty('opacity','0');

  // Set Starting positions of Main controls
  // slide in from left
  navLeft.Top := (PanelHeight - navLeft.Height) div 2;
  navLeft.Left := -MainNavSize;
  // slide in from right
  navRight.Top := navLeft.Top;
  navRight.left := PanelWidth + MainNavSize;
  // slide in from left
  btnHelp.Top := MainButtonPad;
  btnHelp.Left := -MainButtonSize;
  btnHelp.Width := MainButtonSize;
  btnHelp.Height := MainButtonSize;
  // slide in from top
  btnChange.Top := -MainButtonSize;
  btnChange.Left := PanelWidth - MainButtonSize - MainButtonPad;
  btnChange.Width := MainButtonSize;
  btnChange.Height := MainButtonSize;
  // slide in from right
  btnHome.Top := PanelHeight - MainButtonPad;
  btnHome.Left := PanelWidth + MainButtonSize;
  btnHome.Width := MainButtonSize;
  btnHome.Height := MainButtonSize;
  // slide in from bottom
  btnConfiguration.top := PanelHeight + MainButtonSize;
  btnConfiguration.Left := MainButtonPad;
  btnConfiguration.Width := MainButtonSize;
  btnConfiguration.Height := MainButtonSize;

  // Make sure Help is sized appropriately
//  divHelpHome.Top := 0;
//  divHelpHome.Left := Trunc(MainNavSize * 1.5);
//  divHelpHome.Width := Trunc(PanelWidth - (MainNavSize * 3));
//  divHelpHome.Height := PanelHeight;
//  CopyPosition(divHelpHome, divHelpConfig);
//  CopyPosition(divHelpHome, divHelpConfigInfo);
//  CopyPosition(divHelpHome, divHelpConfigSensors);
//  CopyPosition(divHelpHome, divHelpCustom);

  // Update the main configuration page title
  titleCatheedral.Caption := 'Catheedral v'+AppVersion;
  dataConfigVERSION.Caption := AppVersion;
  dataconfigRELEASE.Caption := AppRelease;


  // Configure Tabulator list of Sensors
  ConfigureTabSensors;


  // Adjust sizes of Config Listboxes
  listBackgrounds.Top := 204;
  listBackgrounds.Left := 190;
  listBackgrounds.Width := 520;
  listBackgrounds.Height := 178;

  listDatesLong.Top := 244;
  listDatesLong.Left := 190;
  listDatesLong.Width := 260;
  listDatesLong.Height := 138;

  listDatesShort.Top := 284;
  listDatesShort.Left := 190;
  listDatesShort.Width := 260;
  listDatesShort.Height := 98;

  listTimesLong.Top := 244;
  listTimesLong.Left := 560;
  listTimesLong.Width := 150;
  listTimesLong.Height := 138;

  listTimesShort.Top := 284;
  listTimesShort.Left := 560;
  listTimesShort.Width := 150;
  listTimesShort.Height := 98;


  // Initialize various States

  //  Sensors
  SunSensor := '';
  ClimateSensor := '';
  MoonSensor := '';
  DaylightSensor := '';

  // Config Page Defaults
  editConfigURL.Text := 'http://homeassistant.local:8123';
  editConfigTOKEN.Text := '';
  editConfigBACKGROUND.Text := 'black';
  editConfigLONGDATE.Text := 'yyyy-mmm-dd (ddd)';
  editConfigLONGTIME.Text := 'hh:nn:ss';
  editConfigSHORTDATE.Text := 'mmm d' ;
  editConfigSHORTTIME.Text := 'hh:nn:ss';

  // Home Page - Time Panel
  SunRise := '00:00';
  SunSet := '00:00';
  SunDawn := '00:00';
  SunDusk := '00:00';
  MoonIcon := '';


  // Light Counts
  LightsOn := 0;
  LightsOff := 0;
  LightsCount := 0;

  // Home Page - Climate Panel
  ClimateName := 'Not Configured';
  ClimateMin := 0;
  ClimateMax := 40;
  ClimateHumidity := 0;
  ClimateCurrent := 0;
  ClimateSetPoint := 0;
  ClimateState := 'None';
  ClimateMode := 'None';
  ClimateLight := '';


  // Got JavaScript functions we want to use?  Not sure where to put them.
  SetupJavaScriptFunctions;


  // Start the UI
  tmrStartup.Enabled := True;
  tmrStartupTimer(Sender);

end;

procedure TForm1.MiletusFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if (document.activeElement.tagName <> 'INPUT') then
  begin
    if (char(Key) = '1') then
    begin
      btnHelpClick(Sender);
    end
    else if (char(Key) = '2') then
    begin
      btnChangeClick(Sender);
    end
    else if (char(Key) = '3') then
    begin
      btnHomeClick(Sender);
    end
    else if (char(Key) = '4') then
    begin
      btnConfigurationClick(Sender);
    end
    else if (Key = VK_LEFT) and (document.activeElement.tagName <> 'input') then
    begin
      navLeftclick(Sender);
    end
    else if (Key = VK_RIGHT) and (document.activeElement.tagName <> 'input') then
    begin
      navRightclick(Sender);
    end;
  end;

  if tmrInactivity.Enabled
  then ResetInactivityTimer(Sender);

end;

procedure TForm1.MiletusFormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if tmrInactivity.Enabled
  then ResetInactivityTimer(Sender);
end;

procedure TForm1.navLeftClick(Sender: TObject);
var
  Custom1,
  Custom2,
  Custom3,
  Custom4: Integer;
begin
  // 00 - Configuration Main
  // 01 - Home
  // 02 - Rooms
  // 03 - Scenes
  // 04 - HELP: Main Configuration
  // 05 - Configuration Sensors
  // 06 - Configuration Information
  // 07 - Custom URL 1
  // 08 - Custom URL 2
  // 09 - Custom URL 3
  // 10 - Custom URL 4
  // 11 - Initialization - Should not appear again
  // 12 - HELP: Configuration Information
  // 13 - HELP: Configuration Sensors
  // 14 - HELP: Custom Pages
  // 15 - HELP: Home Page

  // Not all custom pages are available, so if we kick out
  // some of them (or all of them), still want cycle to work
  Custom1 :=  7;
  Custom2 :=  8;
  Custom3 :=  9;
  Custom4 := 10;
  if Trim(CustomPage1URL) = '' then Custom1 := 2;
  if Trim(CustomPage2URL) = '' then Custom2 := Custom1;
  if Trim(CustomPage3URL) = '' then Custom3 := Custom2;
  if Trim(CustomPage4URL) = '' then Custom4 := Custom3;

  // Configuration cycle: 3
  // 06 - 00 - 05
  // Sensors - Config - Info

  // Main Cycle: 7
  // 09 - 10 - 03 - 01 - 02 - 07 - 08
  // Custom3 - Custom4 - Scenes - Home - Rooms - Custom1 - Custom2

  // Help Cycle: 5
  // 13 - 04 - 12 - 14 - 15
  // Cs - Cf - Ci - C1 - Hm

  // Configuration Cycle
  if      (pages.TabIndex =  6) then SwitchPages(  6,  5)
  else if (pages.TabIndex =  0) then SwitchPages(  0,  6)
  else if (pages.TabIndex =  5) then SwitchPages(  5,  0)

  // Main Cycle
  else if (pages.TabIndex =  9) then SwitchPages(  9, Custom2)
  else if (pages.TabIndex = 10) then SwitchPages( 10, Custom3)
  else if (pages.TabIndex =  3) then SwitchPages(  3, Custom4)
  else if (pages.TabIndex =  1) then SwitchPages(  1,       3)
  else if (pages.TabIndex =  2) then SwitchPages(  2,       1)
  else if (pages.TabIndex =  7) then SwitchPages(  7,       2)
  else if (pages.TabIndex =  8) then SwitchPages(  8, Custom1)

  // Help
  else if (pages.TabIndex = 13) then SwitchPages( 13, 15)
  else if (pages.TabIndex =  4) then SwitchPages(  4, 13)
  else if (pages.TabIndex = 12) then SwitchPages( 12,  4)
  else if (pages.TabIndex = 14) then SwitchPages( 14, 12)
  else if (pages.TabIndex = 15) then SwitchPages( 15, 14);

  ResetInactivityTimer(Sender);
end;

procedure TForm1.navRightClick(Sender: TObject);
var
  Custom1,
  Custom2,
  Custom3,
  Custom4: Integer;
begin
  // 00 - Configuration Main
  // 01 - Home
  // 02 - Rooms
  // 03 - Scenes
  // 04 - HELP: Main Configuration
  // 05 - Configuration Sensors
  // 06 - Configuration Information
  // 07 - Custom URL 1
  // 08 - Custom URL 2
  // 09 - Custom URL 3
  // 10 - Custom URL 4
  // 11 - Initialization - Should not appear again
  // 12 - HELP: Configuration Information
  // 13 - HELP: Configuration Sensors
  // 14 - HELP: Custom Pages
  // 15 - HELP: Home Page

  // Not all custom pages are available, so if we kick out
  // some of them (or all of them), still want cycle to work
  Custom1 :=  7;
  Custom2 :=  8;
  Custom3 :=  9;
  Custom4 := 10;
  if Trim(CustomPage4URL) = '' then Custom4 := 3;
  if Trim(CustomPage3URL) = '' then Custom3 := Custom4;
  if Trim(CustomPage2URL) = '' then Custom2 := Custom3;
  if Trim(CustomPage1URL) = '' then Custom1 := Custom2;

  // Configuration cycle
  //  06 - 00 - 05
  // Sensors - Config - Info

  // Main Cycle
  // 09 - 10 - 03 - 01 - 02 - 07 - 08
  // Custom3 - Custom4 - Scenes - Home - Rooms - Custom1 - Custom2

  // Help Cycle
  // 13 - 04 - 12 - 14 - 15
  // Cs - Cf - Ci - C1 - Hm

  // Configuration Cycle
  if      (pages.TabIndex =  6) then SwitchPages(  6,   0)
  else if (pages.TabIndex =  0) then SwitchPages(  0,   5)
  else if (pages.TabIndex =  5) then SwitchPages(  5,   6)

  // Main Cycle
  else if (pages.TabIndex =  9) then SwitchPages(  9, Custom4)
  else if (pages.TabIndex = 10) then SwitchPages( 10,       3)
  else if (pages.TabIndex =  3) then SwitchPages(  3,       1)
  else if (pages.TabIndex =  1) then SwitchPages(  1,       2)
  else if (pages.TabIndex =  2) then SwitchPages(  2, Custom1)
  else if (pages.TabIndex =  7) then SwitchPages(  7, Custom2)
  else if (pages.TabIndex =  8) then SwitchPages(  8, Custom3)

  // Help
  else if (pages.TabIndex = 13) then SwitchPages( 13,  4)
  else if (pages.TabIndex =  4) then SwitchPages(  4, 12)
  else if (pages.TabIndex = 12) then SwitchPages( 12, 14)
  else if (pages.TabIndex = 14) then SwitchPages( 14, 15)
  else if (pages.TabIndex = 15) then SwitchPages( 15, 13);


  ResetInactivityTimer(Sender);
end;


procedure TForm1.ResetInactivityTimer(Sender: TObject);
begin
  // Reset Inactivity Timer
  tmrInactivity.Enabled := False;
  tmrInactivity.Enabled := True;
end;

procedure TForm1.SwitchPages(StartPage, EndPage: Integer);
begin

  // This is in case we want to update the page when it is not visible
  tmrSeconds.Tag := EndPage;
  tmrSecondsTimer(nil);



  // If Leaving "Configure Sensors" Page, Save Changes
  if StartPage = 5
  then editConfigChange(nil);


  // configuration button on Configuration Page is Power On/Off otherwise it is a Gear
  if EndPage = 0
  then btnConfiguration.Caption := '<i class="fa-solid fa-power-off fa-2x"></i>'
  else btnConfiguration.Caption := '<i class="fa-solid fa-gear fa-2x"></i>';


  // Home button on Home Page is bolt if connnected or
  if dataConfigSTATUS.Caption = 'Connected' then
  begin
    ShowConnected;
    if EndPage = 1
    then btnHome.Caption := '<i class="fa-solid fa-bolt fa-2x"></i>'
    else btnHome.Caption := '<i class="fa-solid fa-home fa-2x"></i>';
  end
  else
  begin
    ShowDisconnected;
  end;


  // Fadeout CurrentPage
  if (StartPage <> EndPage)
  then pages.ActivePage.ElementHandle.style.setProperty('opacity','0');


  // Would really like a sleep function here.
  // Instead, we'll finish up what we're doing in a timer


  tmrSwitchPage.Tag := EndPage;
  tmrSwitchPage.Enabled := True;
end;

procedure TForm1.tmrConnectTimer(Sender: TObject);
begin
  if (HAWebSocket.Active = False) then
  begin

    if tmrConnect.Tag = 0 then
    begin
      tmrConnect.Enabled := False;
      dataConfigSTATUS.Caption := 'Connecting';
      tmrConnect.Tag := 15;

      if (editConfigURL.Text = '') or (editConfigTOKEN.Text = '') then
      begin
        dataConfigSTATUS.Caption := 'Config Missing';
      end
      else
      begin
        HAWebSocket.HostName := Copy(editConfigURL.Text, pos('://', editConfigURL.Text)+3,length(editConfigURL.Text));
        if Pos(':',HAWEBSocket.Hostname) > 0
        then HAWebSocket.Hostname := Copy(HAWebSocket.Hostname,1,Pos(':', HAWebSocket.Hostname)-1);

        HAWebSocket.PathName := '/api/websocket';

        if Pos(':', editConfigURL.Text) > 0
        then HAWebSocket.Port := StrToIntDef(Trim(Copy(editConfigURL.Text, LastDelimiter(':', editConfigURL.Text)+1, 5)),80);

        if Pos('https:', editConfigURL.Text) > 0
        then HAWebSocket.UseSSL := True;

        HAWebSocket.Active := True;
        tmrConnect.Enabled := True;

      end;
    end
    else
    begin
      tmrConnect.Tag := tmrConnect.Tag - 1;
      dataConfigSTATUS.Caption := 'Retry in '+IntToStr(tmrConnect.Tag)+'s';
    end;
  end;
end;

procedure TForm1.tmrInactivityTimer(Sender: TObject);
begin
  if pages.TabIndex <> 1
  then SwitchPages(pages.TabIndex,1);

  tmrInactivity.Enabled := False;
end;

procedure TForm1.tmrSecondsTimer(Sender: TObject);
var
  current_seconds: Integer;
  segment_start: Integer;
  segment_end: Integer;
  segment: String;
  rotation: String;
  memory: integer;
  lights: String;
begin
  // Stuff we want to update every second - should be a short list!

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Entries on the Configuration Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 0) or (tmrSeconds.Tag = 0) then
  begin

    try
      dataConfigSTARTDATE.Caption := FormatDateTime(editConfigSHORTDATE.Text, AppStarted);
    except on E: Exception do
      dataConfigSTARTDATE.Caption := 'Invalid Format';
    end;
    try
      dataConfigSTARTTIME.Caption := FormatDateTime(editConfigSHORTTIME.Text, AppStarted);
    except on E: Exception do
      dataConfigSTARTTIME.Caption := 'Invalid Format';
    end;
    try
    dataConfigSYSTEMDATE.Caption := FormatDateTime(editConfigLONGDATE.Text, Now);
    except on E: Exception do
      dataConfigSYSTEMDATE.Caption := 'Invalid Format';
    end;
    try
    dataConfigSYSTEMTIME.Caption := FormatDateTime(editConfigLONGTIME.Text, Now);
    except on E: Exception do
      dataConfigSYSTEMTIME.Caption := 'Invalid Format';
    end;

    dataConfigRUNNINGTIME.Caption := IntToStr(Trunc(Now-AppStarted))+'d '+FormatDateTime('h"h "n"m "s"s"', Now-AppStarted);

  end;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Entries on the Info Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 6) or (tmrSeconds.Tag = 6) then
  begin

    dataInfoRunning.Caption := IntToStr(Trunc(Now-AppStarted))+'d '+FormatDateTime('h"h "n"m "s"s"', Now-AppStarted);
    asm
      memory = performance.memory.totalJSHeapSize;
    end;
    dataInfoMemory.Caption := FloatToStrF(memory / (1024 * 1024), ffNumber, 6,1)+' MB';
  end;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Entries on the Home Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 1) or (tmrSeconds.Tag = 1) then
  begin


   // Time Panel //////////////////////////////////////////////////////////////////////////////////

    try
      labelDate.Caption := FormatDateTime(editConfigSHORTDATE.Text, Now);
    except on E: Exception do
      labelDate.Caption := 'Invalid Format';
    end;
    try
      LabelTime.Caption := FormatDateTime(editConfigSHORTTIME.Text, Now);
    except on E: Exception do
      labelTime.Caption := 'Invalid Format';
    end;

    labelDay.Caption := FormatDateTime('dddd',Now);


    current_seconds := SecondsBetween(Now, Trunc(Now));

    // Rings: There are 5 Rings + 2 Markers (also Rings)
    // From outer to inner:
    //  - Minute
    //  - Hour
    //  - Day
    //  - Dawn/Dusk
    //  - SunRise / SunSet
    //  - Minute Marker (like a second hand on a regular clock)
    //  - Marker (same but for 24-hour period)

    // Minute (Ring 1)
    segment := IntToStr(current_seconds mod 60);
    Sparkline_Donut(
      55, 5, 290, 290,                           // T, L, W, H
      circleMinute,                              // TWebHTMLDiv
      segment+'/60',                             // Data
      '["'+Circle1+'","'+CircleB+'"]',           // Fill
      '0deg',                                    // Rotation
      138,                                       // Inner Radius
      ''                                         // Text
    );

    // Minute Marker (Ring 1)
    rotation := IntToStr(Trunc((current_seconds mod 60)*6)-2);
    Sparkline_Donut(
      50, 0, 300, 300,                           // T, L, W, H
      circleMinuteMarker,                        // TWebHTMLDiv
      '4/360',                                   // Data
      '["'+Circle1+'","transparent"]',           // Fill
      rotation+'deg',                            // Rotation
      93,                                        // Inner Radius
      ''                                         // Text
    );

    if ((current_seconds mod 60) = 0) or (tmrSeconds.Tag = 1) then
    begin
      // We don't need to update these every second
      dataHomeRise.Caption := SunRise;
      dataHomeSet.Caption := SunSet;
      dataHomeDawn.Caption := SunDawn;
      dataHomeDusk.Caption := SunDusk;
      divHomeMoon.HTML.Text := '<img src="weather-icons-dev/production/fill/svg/moon'+StringReplace(StringReplace(MoonIcon,'_','-',[]),'mdi:moon','',[])+'.svg">';

      // Hour (Ring 2)
      segment := IntToStr(current_seconds mod 3600);
      Sparkline_Donut(
        65, 15, 270, 270,                        // T, L, W, H
        circleHour,                              // TWebHTMLDiv
        segment+'/3600',                         // Data
        '["'+Circle2+'","'+CircleB+'"]',         // Fill
        '0deg',                                  // Rotation
        128,                                     // Inner Radius
        ''                                       // Text
      );

      // Day (Ring 3)
      segment := IntToStr(current_seconds);
      Sparkline_Donut(
        75,25,250,250,                           // T, L, W, H
        circleDay,                               // TWebHTMLDiv
        segment+'/86400',                        // Data
        '["'+Circle3+'","'+CircleB+'"]',         // Fill
        '0deg',                                  // Rotation
        118,                                     // Inner Radius
        ''                                       // Text
      );

      // Dawn/Dusk (Ring 4)
      segment_start := Trunc((( StrToInt(Copy(SunDawn,1,2))*3600 + StrToInt(Copy(SunDawn,4,2))*60 )/86400)*360);
      segment_end := ( StrToInt(Copy(SunDusk,1,2))*3600 + StrToInt(Copy(SunDusk,4,2))*60) - ( StrToInt(Copy(SunDawn,1,2))*3600 + StrToInt(Copy(SunDawn,4,2))*60 );
      segment := IntToStr(segment_end);
      rotation := IntToStr(segment_start);
      dataHomeTwilight.Caption := FormatDateTime('hh:nn', segment_end/86400.0);
      Sparkline_Donut(
        85, 35, 230, 230,                        // T, L, W, H
        circleDawnDusk,                          // TWebHTMLDiv
        segment+'/86400',                        // Data
        '["'+Circle4+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        108,                                     // Inner Radius
        ''                                       // Text
      );

      // Rise/Set (Ring 5)
      segment_start := Trunc((( StrToInt(Copy(SunRise,1,2))*3600 + StrToInt(Copy(SunRise,4,2))*60 )/86400)*360);
      segment_end := ( StrToInt(Copy(SunSet,1,2))*3600 + StrToInt(Copy(SunSet,4,2))*60) - ( StrToInt(Copy(SunRise,1,2))*3600 + StrToInt(Copy(SunRise,4,2))*60 );
      segment := IntToStr(segment_end);
      rotation := IntToStr(segment_start);
      dataHomeDaylight.Caption := FormatDateTime('hh:nn', segment_end/86400.0);
      Sparkline_Donut(
        95, 45, 210, 210,                        // T, L, W, H
        circleRiseSet,                           // TWebHTMLDiv
        segment+'/86400',                        // Data
        '["'+Circle5+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        98,                                      // Inner Radius
        ''                                       // Text
      );

      // Hour Marker (Ring 2)
      rotation := IntToStr(Trunc((current_seconds mod 3600) / 10)-2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleHOurMarker,                        // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle2+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        93,                                      // Inner Radius
        ''                                       // Text
      );

      // Day Marker (Ring 3)
      rotation := IntToStr(Trunc(((current_seconds)/86400)*360)-2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleDayMarker,                         // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle3+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        93,                                      // Inner Radius
        ''                                       // Text
      );
    end;


    // Climate Panel //////////////////////////////////////////////////////////////////////////////////

    // If lights have changed, then update them
//    Lights := '<div>'+IntToStr(LightsOn)+'<i class="fa-solid fa-lightbulb Yellow fa-2xs px-2"></i>'+
//              IntToStr(LightsOff)+''+'<i class="fa-solid fa-lightbulb DarkGray fa-2xs px-2"></i>'+
//              IntToStr(LightsCount)+'</div>';
    Lights := '<div>'+IntToStr(LightsOn)+'<i class="fa-solid fa-lightbulb Yellow fa-2xs px-2"></i>'+
              IntToStr(LightsOff)+'</div>';
     if dataHomeLights.HTML <> Lights
     then dataHomeLights.HTML := Lights;

    // Updates once a minute at 15s mark
    if ((current_seconds mod 60) = 15) or (tmrSeconds.Tag = 1) then
    begin

      dataHomeMin.Caption := Trim(FloatToStrF(ClimateMin,ffNumber,5,0)+HATemperatureUnits);
      dataHomeMax.Caption := Trim(FloatToStrF(ClimateMax,ffNumber,5,0)+HATemperatureUnits);
      dataHomeHumidity.Caption := Trim(FloatToStrF(ClimateHumidity,ffNumber,5,0)+' %');
      dataHomeSetPoint.Caption := Trim(FloatToStrF(ClimateSetPoint,ffNumber,5,0)+HATemperatureUnits);
      labelHomeTempName.Caption := ClimateName;
      dataHomeTemperature.Caption := Trim(FloatToStrF(ClimateCurrent,ffNumber,5,1)+HATemperatureUnits);
      dataHomeMode.Caption := ClimateState;
      dataHomeAction.Caption := ClimateMode;
      dataHomeLightLevel.Caption := ClimateLight;

      // Decide whether buttons should be enabled
      if (ClimateSetPoint <= ClimateMin) or (labelHomeTempName.Caption = 'Not Configured')
      then btnHOmeTempDown.Enabled := False
      else btnHomeTempDown.Enabled := True;

      if (ClimateSetPoint >= ClimateMax) or (labelHomeTempName.Caption = 'Not Configured')
      then btnHOmeTempUp.Enabled := False
      else btnHomeTempUp.Enabled := True;

      // Three Rings this time out, plus Three more as Markers
      // - Temperature
      // - Setpoint
      // - Humidity
      // - Temperature Marker
      // - Setpoint Marker
      // - Humidity Marker

      // Temperature (Ring 1)
      segment_start := Trunc(((ClimateCurrent-ClimateMin)*280) / (ClimateMax-ClimateMin));
      segment := IntToStr(segment_start)+','+IntToStr(280-segment_start)+',80';
      Sparkline_Donut(
        55, 5, 290, 290,                         // T, L, W, H
        circleCurrent,                           // TWebHTMLDiv
        segment,                                 // Data
        '["'+Circle1+'","'+CircleB+'","transparent"]',  // Fill
        '220deg',                                // Rotation
        138,                                     // Inner Radius
        ''                                       // Text
      );

      // Setpoint (Ring 2)
      segment_start := Trunc(((ClimateSetPoint-ClimateMin)*290) / (ClimateMax-ClimateMin));
      segment := IntToStr(segment_start)+','+IntToStr(290-segment_start)+',70';
      Sparkline_Donut(
        65, 15, 270, 270,                        // T, L, W, H
        circleSetPoint,                          // TWebHTMLDiv
        segment,                                 // Data
        '["'+Circle2+'","'+CircleB+'","transparent"]', // Fill
        '215deg',                                // Rotation
        128,                                     // Inner Radius
        ''                                       // Text
      );

      // Humidity (Ring 3)
      segment_start := Trunc((ClimateHumidity*300) / 100);
      segment := IntToStr(segment_start)+','+IntToStr(300-segment_start)+',60';
      Sparkline_Donut(
        75, 25, 250, 250,                        // T, L, W, H
        circleHumidity,                          // TWebHTMLDiv
        segment,                                 // Data
        '["'+Circle3+'","'+CircleB+'","transparent"]',   // Fill
        '210deg',                                // Rotation
        118,                                     // Inner Radius
        ''                                       // Text
      );

      // Temperature Marker (Ring 1)
      rotation := IntToStr(220+Trunc(((ClimateCurrent-ClimateMin)*280) / (ClimateMax-ClimateMin))-2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleCurrMark,                          // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle1+'","transparent"]',             // Fill
        rotation+'deg',                          // Rotation
        113,                                     // Inner Radius
        ''                                       // Text
      );

      // SetPoint Marker (Ring 2)
      rotation := IntToStr(215+Trunc(((ClimateSetpoint-ClimateMin)*290) / (ClimateMax-ClimateMin))-2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleSetMarker,                         // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle2+'","transparent"]',            // Fill
        rotation+'deg',                          // Rotation
        113,                                     // Inner Radius
        ''                                       // Text
      );

      // Humidity Marker (Ring 3)
      rotation := IntToStr(210+Trunc((ClimateHumidity*300) / 100)-2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleHumMarker,                         // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle3+'","transparent"]',              // Fill
        rotation+'deg',                          // Rotation
        113,                                     // Inner Radius
        ''                                       // Text
      );


    end;



    tmrSeconds.Tag := -1;

  end;


end;

procedure TForm1.tmrStartupTimer(Sender: TObject);
begin

  // This orchestrates a number of events at startup for
  // a bit more dramatic effect, but also to try and ensure
  // things appear in an orderly fashion


  // Stage 0: Load Configuration
  if (tmrStartup.Tag = 0) then
  begin
    LoadConfiguration;
  end

  // Stage 1: Display main TWebPageControl
  else if (tmrStartup.Tag = 1) then
  begin
    pages.Visible := True;
    pages.ElementHandle.style.setProperty('opacity','1');
    pageInit.ElementHandle.style.setProperty('opacity','1');
  end

  // Stage 2: Show title
  else if (tmrStartup.Tag = 2) then
  begin
    divCatheedral.ElementHandle.style.setProperty('opacity','1');
  end

  // Stage 3: Show subtitle
  else if (tmrStartup.Tag = 3) then
  begin
    divInit.ElementHandle.style.setProperty('opacity','1');
    tmrConnect.Enabled := True;
  end

  // Stage 4: Show corner icons
  else if (tmrStartup.Tag = 4) then
  begin
    btnHelp.ElementHandle.style.setProperty('opacity','0.25');
    btnHelp.Top := MainButtonPad;
    btnHelp.Left := MainButtonPad;

    btnChange.ElementHandle.style.setProperty('opacity','0.25');
    btnChange.Top := MainButtonPad;
    btnChange.Left := PanelWidth - MainButtonSize - MainButtonPad;

    btnHome.ElementHandle.style.setProperty('opacity','0.25');
    btnHome.Top := PanelHeight - MainButtonSize - MainButtonPad;
    btnHome.Left := PanelWidth - MainButtonSize - MainButtonPad;

    btnConfiguration.ElementHandle.style.setProperty('opacity','0.25');
    btnConfiguration.Top := PanelHeight - MainButtonSize - MainButtonPad;
    btnConfiguration.Left := MainButtonPad;
  end

  // Stage 8: Show navigation arrows
  else if (tmrStartup.Tag = 5) then
  begin
    navLeft.Left := 0;
    navRight.Left := PanelWidth - MainNavSize;
  end

  // All done with Startup
  else if (tmrStartup.Tag = 6) then
  begin
    tmrSecondsTimer(nil);  // No delay
    tmrSeconds.Enabled := True;
  end

  // Show the Home page if connected,
  // or the Configuration page if not
  else if (tmrStartup.Tag >= 7) then
  begin
    tmrStartup.Enabled := False;

    if dataConfigSTATUS.Caption = 'Connected'
    then SwitchPages(11,1)
    else SwitchPages(11,0);

    ResetInactivityTimer(Sender);
  end;

  tmrStartup.Tag := tmrStartup.Tag + 1;

end;

procedure TForm1.tmrSwitchPageTimer(Sender: TObject);
var
  StartPage: Integer;
  EndPage: Integer;
  CustomRefresh: String;
begin

  tmrSwitchPage.Enabled := False;
  StartPage := pages.TabIndex;
  EndPage := tmrSwitchPage.Tag;


  // Alright, back to what we were doing.


  // Switch the page
  pages.TabIndex := EndPage;
//  pages.ElementHandle.style.setProperty('background', AppBackground,'important');
//  pages.ActivePage.ElementHandle.style.setProperty('background', AppBackground,'important');
  tmrSeconds.Tag := EndPage;
  tmrSecondsTimer(nil);

  if (StartPage <> EndPage)
  then pages.ActivePage.ElementHandle.style.setProperty('opacity','1');


  // Help button is either Hand or Back depending on whether on Help page or not
  if pos('Help',pages.ActivePage.ElementClassName) > 0 then
  begin
    btnHelp.Caption := '<i class="fa-solid fa-caret-left text-white fa-2x opacity-100"></i>';
    pages.ActivePage.Tag := StartPage;
  end
  else
  begin
    btnHelp.Caption := '<i class="fa-solid fa-hand text-white fa-2x"></i>';
  end;


  // Refresh Custom URL after each hour
  CustomRefresh := FormatDateTime('yyyymmddhh',Now);
  if (pages.TabIndex =  7) and (CustomPage1Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex =  8) and (CustomPage2Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex =  9) and (CustomPage3Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex = 10) and (CustomPage4Refresh <> CustomRefresh) then btnChangeClick(nil);


  // Update Change Button
  if ((pages.TabIndex >= 5) and (pages.TabIndex <= 10)) or (pages.TabIndex = 0)
  then btnChange.Caption := '<i class="fa-solid fa-rotate-right fa-2x"></i>'
  else btnChange.Caption := '<i class="fa-solid fa-shuffle fa-2x"></i>';


  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnChangeClick(Sender: TObject);
begin

  // If displaying Custom URL then reload <iframe> page
  if pages.TabIndex = 7 then
  begin
    divCustom1.HTML.Text := '';
    divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';
  end
  else if pages.TabIndex = 8 then
  begin
    divCustom2.HTML.Text := '';
    divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';
  end
  else if pages.TabIndex = 9 then
  begin
    divCustom3.HTML.Text := '';
    divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';
  end
  else if pages.TabIndex = 10 then
  begin
    divCustom4.HTML.Text := '';
    divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" width=1280 height=400 style="background:none; overflow:hidden;">';
  end;


  // Configuration Information
  if (pages.TabIndex = 0) or (pages.TabIndex = 5) or (pages.TabIndex = 6) then
  begin
    window.location.reload(true);
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnHelpClick(Sender: TObject);
begin
  // Page Tag value is used to indicate which page is the "help page" for a given page.
  // When a help page is shown, its Tag value is updated to indicate the calling page
  // so that we can have the equivalent functionality of a "back" button.
  SwitchPages(Pages.TabIndex, Pages.ActivePage.Tag);

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnConfigurationClick(Sender: TObject);
begin
  if (pages.TabIndex = 0) then
  begin
    // Config Button on Config Page is for Power Off.
    Close;
  end
  else
  begin
    SwitchPages(pages.TabIndex, 0);
  end;

end;

procedure TForm1.btnListBackgroundsClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListBackgrounds)
  then listBackgrounds.Visible := not(listBackgrounds.Visible)
  else listBackgrounds.Visible := False;

  if listBackgrounds.Visible
  then btnListBackgrounds.Caption := '<i class="fa-solid fa-caret-up"></i>'
  else btnListBackgrounds.Caption := '<i class="fa-solid fa-caret-down"></i>';

  if (Sender is TWebButton) and (Sender = btnlistBackgrounds) then
  begin
//    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListDatesLongClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListDatesLong)
  then listDatesLong.Visible := not(listDatesLong.Visible)
  else listDatesLong.Visible := false;

  if listDatesLong.Visible
  then btnListDatesLong.Caption := '<i class="fa-solid fa-caret-up"></i>'
  else btnlistDatesLong.Caption := '<i class="fa-solid fa-caret-down"></i>';

  if (Sender is TWebButton) and (Sender = btnlistDatesLong) then
  begin
    btnListBackgroundsClick(Sender);
//    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListDatesShortClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListDatesShort)
  then listDatesShort.Visible := not(listDatesShort.Visible)
  else listDatesShort.Visible := False;

  if listDatesShort.Visible
  then btnListDatesShort.Caption := '<i class="fa-solid fa-caret-up"></i>'
  else btnlistDatesShort.Caption := '<i class="fa-solid fa-caret-down"></i>';

  if (Sender is TWebButton) and (Sender = btnlistDatesShort) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
//    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListTimesLongClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnlistTimeSLong)
  then listTimesLong.Visible := not(listTimesLong.Visible)
  else listTimesLong.Visible := False;

  if listTimesLong.Visible
  then btnListTimesLong.Caption := '<i class="fa-solid fa-caret-up"></i>'
  else btnlistTimesLong.Caption := '<i class="fa-solid fa-caret-down"></i>';

  if (Sender is TWebButton) and (Sender = btnlistTimesLong) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
//    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListTimesShortClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListTimesShort)
  then listTimesShort.Visible := not(listTimesShort.Visible)
  else listTimesShort.Visible := False;

  if listTimesShort.Visible
  then btnListTimesShort.Caption := '<i class="fa-solid fa-caret-up"></i>'
  else btnlistTimesShort.Caption := '<i class="fa-solid fa-caret-down"></i>';

  if (Sender is TWebButton) and (Sender = btnlistTimesShort) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
//    btnListTimesShortClick(Sender);
   exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.ConfigureTabSensors;
begin
  asm
    var FeatureData = [
      {"id":  1, "feature":"Sun Sensor"           , "example":"eg: sun.sun" },
      {"id":  2, "feature":"Moon Sensor"          , "example":"eg: sensor.moon_phase" },
      {"id":  3, "feature":"Custom Page 1"        , "example":"eg: http://www.example.com" },
      {"id":  4, "feature":"Custom Page 2"        , "example":"eg: http://www.example.com" },
      {"id":  5, "feature":"Custom Page 3"        , "example":"eg: http://www.example.com" },
      {"id":  6, "feature":"Custom Page 4"        , "example":"eg: http://www.example.com" },
      {"id":  7, "feature":"Climate Sensor"       , "example":"eg: climate.room_thermostat" },
      {"id":  8, "feature":"Indoor Light Sensor"  , "example":"eg: sensor.motion_illuminance" },
      {"id":  9, "feature":"Weather Sensor"       , "example":"eg: weather.city_forecast" }
    ];
    pas.Unit1.Form1.Features = FeatureData.length;

    this.tabConfigSensors = new Tabulator('#divConfigSensors',{
      data: FeatureData,
      index: "id",
      height: 360,
      layout: "fitColumns",
      headerVisible: false,
      popupContainer: true,
      columnDefaults: {
        resizable: false,
        visible: true
      },
      columns: [
        { title: "#", field: "id", width: 50, hozAlign: "center" },
        { title: "Feature", field: "feature", width: 200 },
        { title: "Entity", field: "entity_id",  editor: "list", editorParams:{
            valuesLookup:function(cell, filterTerm) {
              return pas.Unit1.Form1.HAEntities
            },
            emptyValue: "",
            autocomplete: true,
            verticalNavigation: "hybrid",
            freetext: true,
            clearable: true,
            placeholderEmpty: '"<span class="text-white">No Matching Home Assistant Entities Found</span>',
            elementAttributes: {
              spellcheck: false,
              maxlength: "255"
            }
        }},
        { title: "Example", field: "example", width: 300 },
      ]
    });
    this.tabConfigSensors.on("cellEditing", function(cell){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
    this.tabConfigSensors.on("cellEdited", function(cell){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
    this.tabConfigSensors.on("rowMouseOver", function(e, row){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
  end;
end;

procedure TForm1.CopyPosition(src, dest: TWebHTMLDiv);
begin
  dest.Top := src.Top;
  dest.Left := src.Left;
  dest.Width := src.Width;
  dest.Height := src.Height;
end;

initialization
  RegisterClass(TForm1);

end.