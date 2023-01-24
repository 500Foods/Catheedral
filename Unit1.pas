unit Unit1;

interface

uses
  System.SysUtils, System.Classes, System.DateUtils, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsdelphisystem, System.Math,
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
    circleSeconds: TWebHTMLDiv;
    circleMinutes: TWebHTMLDiv;
    circleHours: TWebHTMLDiv;
    circleDawnDusk: TWebHTMLDiv;
    circleRiseSet: TWebHTMLDiv;
    circleMinutesMarker: TWebHTMLDiv;
    labelHomeSetIcon: TWebLabel;
    dataHomeSet: TWebLabel;
    dataHomeDusk: TWebLabel;
    labelHomeRiseIcon: TWebLabel;
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
    dataHomeState: TWebLabel;
    labelHomeState: TWebLabel;
    circleClimateTemperature: TWebHTMLDiv;
    circleSetPoint: TWebHTMLDiv;
    circleClimateHumidity: TWebHTMLDiv;
    circleClimateTemperatureMarker: TWebHTMLDiv;
    circleSetPointMarker: TWebHTMLDiv;
    circleClimateHumidityMarker: TWebHTMLDiv;
    circleSecondsMarker: TWebHTMLDiv;
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
    HelpConfig: TWebHTMLDiv;
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
    HelpConfigInfo: TWebHTMLDiv;
    pageHelpConfigSensors: TWebTabSheet;
    HelpConfigSensors: TWebHTMLDiv;
    pageHelpCustom: TWebTabSheet;
    HelpCustomPages: TWebHTMLDiv;
    pageHelpHome: TWebTabSheet;
    HelpHome: TWebHTMLDiv;
    labelHomeRise: TWebLabel;
    labelHomeSet: TWebLabel;
    circleHoursMarker: TWebHTMLDiv;
    divBackground: TWebHTMLDiv;
    labelHomeLights: TWebLabel;
    dataHomeLights: TWebLabel;
    labelHomeDawnIcon: TWebLabel;
    labelHomeDuskIcon: TWebLabel;
    pageLights: TWebTabSheet;
    btnLioghtsShowAll: TWebButton;
    btnLightsGroups: TWebButton;
    btnLightsNoGroups: TWebButton;
    btnLightsAllOn: TWebButton;
    btnLightsAllOff: TWebButton;
    divAllLights: TWebHTMLDiv;
    pageHelpLights: TWebTabSheet;
    divHomeLightsCover: TWebHTMLDiv;
    divWeather: TWebHTMLDiv;
    circleWeatherHumidity: TWebHTMLDiv;
    circleWeatherHumidityMarker: TWebHTMLDiv;
    labelWeatherMin: TWebLabel;
    labelWeatherHumidity: TWebLabel;
    labelWeatherMax: TWebLabel;
    dataWeatherHumidity: TWebLabel;
    dataWeatherTemperature: TWebLabel;
    dataWeatherMin: TWebLabel;
    dataWeatherMax: TWebLabel;
    circleWeatherTemperature: TWebHTMLDiv;
    circleWeatherTemperatureMarker: TWebHTMLDiv;
    dataWeatherMinPressure: TWebLabel;
    dataWeatherMaxPressure: TWebLabel;
    circleWeatherPressure: TWebHTMLDiv;
    circleWeatherPressureMarker: TWebHTMLDiv;
    labelWeatherPressure: TWebLabel;
    labelWeatherUV: TWebLabel;
    dataWeatherUV: TWebLabel;
    labelWeatherWind: TWebLabel;
    dataWeatherWind: TWebLabel;
    labelWeatherAQHI: TWebLabel;
    dataWeatherAQHI: TWebLabel;
    divWeatherIcon: TWebHTMLDiv;
    dataWeatherCondition: TWebLabel;
    divEnergy: TWebHTMLDiv;
    labelBattery1: TWebLabel;
    labelBattery2: TWebLabel;
    labelBattery3: TWebLabel;
    labelBattery4: TWebLabel;
    dataEnergyUse: TWebLabel;
    dataBattery1Status: TWebLabel;
    dataBattery2Status: TWebLabel;
    dataBattery3Status: TWebLabel;
    dataBattery4Status: TWebLabel;
    dataBattery1: TWebLabel;
    dataBattery2: TWebLabel;
    dataBattery3: TWebLabel;
    dataBattery4: TWebLabel;
    circleEnergyUse: TWebHTMLDiv;
    circleEnergyUseMarker: TWebHTMLDiv;
    divPerson1: TWebHTMLDiv;
    divPerson2: TWebHTMLDiv;
    dataPerson1Location: TWebLabel;
    dataPerson2Location: TWebLabel;
    circleEnergyToday: TWebHTMLDiv;
    circleEnergyTodayMarker: TWebHTMLDiv;
    circleEnergyYesterday: TWebHTMLDiv;
    circleEnergyYesterdayMarker: TWebHTMLDiv;
    tmrExit: TWebTimer;
    pageExit: TWebTabSheet;
    labelShutdown: TWebLabel;
    tmrLights: TWebTimer;
    HelpLights: TWebHTMLDiv;
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
    [async] procedure MiletusFormCreate(Sender: TObject);
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
    procedure HelpConfigMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ConfigureTabSensors;
    procedure btnChangeClick(Sender: TObject);
    procedure tmrSwitchPageTimer(Sender: TObject);
    procedure tmrStartupTimer(Sender: TObject);
    procedure labelConfigSTATUSClick(Sender: TObject);
    procedure MiletusFormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MiletusFormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure CopyPosition(src: TWebHTMLDiv; dest: TWebHTMLDiv);
    procedure UpdateNow;
    procedure divHomeLightsCoverClick(Sender: TObject);
    procedure btnLightsAllOffClick(Sender: TObject);
    procedure LightButtonClicked(light: String);
    procedure btnLioghtsShowAllClick(Sender: TObject);
    procedure btnLightsGroupsClick(Sender: TObject);
    procedure btnLightsNoGroupsClick(Sender: TObject);
    procedure btnLightsAllOnClick(Sender: TObject);
    procedure tmrExitTimer(Sender: TObject);
    procedure tmrLightsTimer(Sender: TObject);
    procedure LoadHelp(HelpDIV: String);

  private
    { Private declarations }
  public
    { Public declarations }

    // Application State
    ChangeMode: Boolean;
    DebugMode: Boolean;
    DesktopMode: Boolean;

    ConfigurationLoaded: Boolean;
    LastRefresh: TDateTime;
    UpdatePending: Boolean;

    Features: Integer;

    // Configuration - Tabulator
    tabConfigSensors: JSValue;
    ConfigTableReady: Boolean;

    // Styles?
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


    // Home Assistant Information
    HASystemName :String;
    HATimeZone: String;
    HAID: Integer;
    HAGetConfig: Integer;
    HAGetStates: Integer;
    HAGetEvents: Integer;
    HAStates: JSValue;
    HAEntities: JSValue;
    HALoadConfig: Boolean;
    HAStatesLoaded: Boolean;

    // Home Assistant values we'll use frequently
    HALanguage: String;
    HACountry: String;
    HATemperatureUnits: String;
    HAPressureUnits: String;

    // Time Panel
    SunSensor: String;
    MoonSensor: String;

    SunRise: TTime;
    SunSet: TTime;
    SunDawn: TTime;
    SunDusk: TTime;
    MoonIcon: String;

    // Climate Panel
    DaylightSensor: String;
    ClimateSensor: String;
    ClimateMinTempSensor: String;
    ClimateMaxTempSensor: String;
    ClimateMinHumiditySensor: String;
    ClimateMaxHumiditySensor: String;

    ClimateMinTemp: Double;
    ClimateMaxTemp: Double;
    ClimateMinTempRange: Double;
    ClimateMaxTempRange: Double;
    ClimateMinHumidity: Double;
    ClimateMaxHumidity: Double;

    ClimateName: String;
    ClimateMin: Double;
    ClimateMax: Double;
    ClimateSetPoint: Double;
    ClimateHumidity: Double;
    ClimateCurrent: Double;
    ClimateState: String;
    ClimateMode: String;
    ClimateLight: String;

    // Weather Panel
    WeatherSensor: String;
    WeatherMinTempSensor: String;
    WeatherMaxTempSensor: String;
    WeatherMinPressureSensor: String;
    WeatherMaxPressureSensor: String;
    WeatherMinHumiditySensor: String;
    WeatherMaxHumiditySensor: String;
    WeatherUVSensor: String;
    WeatherAQHISensor: String;

    WeatherIcon: String;
    WeatherCondition: String;
    WeatherWind: String;
    WeatherTemperature: Double;
    WeatherHumidity: Double;
    WeatherPressure: Double;
    WeatherPressureUnit: String;
    WeatherMinTemp: Double;
    WeatherMaxTemp: Double;
    WeatherMinPressure: Double;
    WeatherMaxPressure: Double;
    WeatherMinHumidity: Double;
    WeatherMaxHumidity: Double;
    WeatherMinTempRange: Double;
    WeatherMaxTempRange: Double;
    WeatherMinPressureRange: Double;
    WeatherMaxPressureRange: Double;
    WeatherUV: String;
    WeatherAQHI: String;

    // Energy Panel
    Person1Sensor: String;
    Person2Sensor: String;

    Person1Name: String;
    Person1Photo: String;
    Person1Location: String;

    Person2Name: String;
    Person2Photo: String;
    Person2Location: String;

    Battery1Sensor: String;
    Battery2Sensor: String;
    Battery3Sensor: String;
    Battery4Sensor: String;

    Battery1Name: String;
    Battery2Name: String;
    Battery3Name: String;
    Battery4Name: String;

    Battery1: String;
    Battery2: String;
    Battery3: String;
    Battery4: String;

    Battery1Status: String;
    Battery2Status: String;
    Battery3Status: String;
    Battery4Status: String;

    EnergyUse: Integer;

    // Lights Page
    LightsOn: Integer;
    LightsOff: Integer;
    LightsCount: Integer;
    Lights: JSValue;
    LightsMode: Integer;
    LightsAll: string;


    // Custom Pages
    CustomPage1URL: String;
    CustomPage2URL: String;
    CustomPage3URL: String;
    CustomPage4URL: String;

    CustomPage1Refresh: String;
    CustomPage2Refresh: String;
    CustomPage3Refresh: String;
    CustomPage4Refresh: String;

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
    // Don't have any sensors yet
    window.SensorList = [];


    // This is what we're plucking out of the Home Assistant data streams
    window.UpdateSensorList = function() {

      const here = pas.Unit1.Form1;
      const table = here.tabConfigSensors;

      // Time Panel
      here.SunSensor = table.getRow(1).getCell('entity_id').getValue();
      here.MoonSensor = table.getRow(2).getCell('entity_id').getValue();

      // Custom URLs
      here.CustomPage1URL = table.getRow(3).getCell('entity_id').getValue();
      here.CustomPage2URL = table.getRow(4).getCell('entity_id').getValue();
      here.CustomPage3URL = table.getRow(5).getCell('entity_id').getValue();
      here.CustomPage4URL = table.getRow(6).getCell('entity_id').getValue();

      // Climate Panel
      here.ClimateSensor = table.getRow(7).getCell('entity_id').getValue();
      here.DaylightSensor = table.getRow(8).getCell('entity_id').getValue();
      here.ClimateMinTempSensor = table.getRow(9).getCell('entity_id').getValue();
      here.ClimateMaxTempSensor = table.getRow(10).getCell('entity_id').getValue();
      here.ClimateMinHumiditySensor = table.getRow(11).getCell('entity_id').getValue();
      here.ClimateMaxHumiditySensor = table.getRow(12).getCell('entity_id').getValue();

      // Weather Panel
      here.WeatherSensor = table.getRow(13).getCell('entity_id').getValue();
      here.WeatherMinTempSensor = table.getRow(14).getCell('entity_id').getValue();
      here.WeatherMaxTempSensor = table.getRow(15).getCell('entity_id').getValue();
      here.WeatherMinPressureSensor = table.getRow(16).getCell('entity_id').getValue();
      here.WeatherMaxPressureSensor = table.getRow(17).getCell('entity_id').getValue();
      here.WeatherMinHumiditySensor = table.getRow(18).getCell('entity_id').getValue();
      here.WeatherMaxHumiditySensor = table.getRow(19).getCell('entity_id').getValue();
      here.WeatherUVSensor = table.getRow(20).getCell('entity_id').getValue();
      here.WeatherAQHISensor = table.getRow(21).getCell('entity_id').getValue();

      // Energy Panel
      here.Battery1Sensor = table.getRow(22).getCell('entity_id').getValue();
      here.Battery2Sensor = table.getRow(23).getCell('entity_id').getValue();
      here.Battery3Sensor = table.getRow(24).getCell('entity_id').getValue();
      here.Battery4Sensor = table.getRow(25).getCell('entity_id').getValue();
      here.Person1Sensor = table.getRow(26).getCell('entity_id').getValue();
      here.Person2Sensor = table.getRow(27).getCell('entity_id').getValue();

      window.SensorList = [

        // Time Panel
        here.SunSensor,
        here.MoonSensor,

        // Climate Panel
        here.DaylightSensor,
        here.ClimateSensor,
        here.ClimateMinTempSensor,
        here.ClimateMaxTempSensor,
        here.ClimateMinHumiditySensor,
        here.ClimateMaxHumiditySensor,

        // Weather Panel
        here.WeatherSensor,
        here.WeatherMinTempSensor,
        here.WeatherMaxTempSensor,
        here.WeatherMinPressureSensor,
        here.WeatherMaxPressureSensor,
        here.WeatherMinHumiditySensor,
        here.WeatherMaxHumiditySensor,
        here.WeatherUVSensor,
        here.WeatherAQHISensor,

        // Energy Panel
        here.Person1Sensor,
        here.Person2Sensor,
        here.Battery1Sensor,
        here.Battery2Sensor,
        here.Battery3Sensor,
        here.Battery4Sensor
      ];
    }

    // Capitalize the first letter of each word
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
  btnHome.ElementHandle.style.setProperty('opacity','0.25');
  if (pages.TabIndex = 1) or (pages.TabIndex = 11) then
  begin
    asm
      btnHome.firstElementChild.style.setProperty('opacity','0');
      btnHome.firstElementChild.nextElementSibling.style.setProperty('opacity','0');
      btnHome.lastElementChild.style.setProperty('opacity','1');
    end;
  end
  else
  begin
    asm
      btnHome.firstElementChild.style.setProperty('opacity','1');
      btnHome.firstElementChild.nextElementSibling.style.setProperty('opacity','0');
      btnHome.lastElementChild.style.setProperty('opacity','0');
    end;
  end;

  btnHALinks.Enabled := True;
  btnHALoadConfiguration.Enabled := True;
  btnHASaveConfiguration.Enabled := True;
  btnHALinks.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
  btnHALoadConfiguration.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
  btnHASaveConfiguration.ElementHandle.ClassList.Replace('opacity-25','opacity-75');
end;

procedure TForm1.ShowDisconnected;
begin
  asm
    btnHome.style.setProperty('opacity','1');
    btnHome.firstElementChild.style.setProperty('opacity','0');
    btnHome.firstElementChild.nextElementSibling.style.setProperty('opacity','1');
    btnHome.lastElementChild.style.setProperty('opacity','0');
  end;


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
//  ChartName: String;
begin
//  ChartName := StringReplace(StringReplace(Chart.ElementID,'circle','',[]),'Marker','M',[]);
//  asm
//    console.log('Drawing Chart: '+ChartName+' ['+CTop+','+CLeft+','+CWidth+','+CHeight+'] '+InnerRadius+': '+ChartData);
//  end;

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

  asm
    peity(Element, "pie", {
      width: CWidth,
      height: CHeight,
      fill: JSON.parse(Fill),
      innerRadius: InnerRadius
    });

    Element.parentElement.lastElementChild.style.transform = ' rotate('+Rotation+')';

    if (DisplayText !== '') {
      const newdiv = document.createElement("div");
      const newtxt = document.createTextNode(DisplayText);
      newdiv.appendChild(newtxt);
      newdiv.style.cssText = 'position:absolute; display:flex; align-items:center; justify-content:center; width:100%; height:100%; top:0px; left:0px; color:#fff; font-size:10px;';
      Element.parentElement.appendChild(newdiv);
    }
  end;
end;


procedure TForm1.StateChanged(Entity: String; State: JSValue);
begin

  // This is used to convert data coming from Home Assistant into something that we can use.
  // We also take the opporutnity to try and filter or adjust the data to meet our needs, such
  // as capitalizing words, removing superfluous words, trimming text, and so on.  Though much
  // of the time this can be done in Home Assistant directly.


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
      var timestr = luxon.DateTime.fromISO(State.attributes.next_rising).toFormat('HH:mm:ss');
      this.SunRise = (parseInt(timestr.substr(0,2))*3600 + parseInt(timestr.substr(3,2))*60 + parseInt(timestr.substr(6,2)))/86400;

      timestr = luxon.DateTime.fromISO(State.attributes.next_setting).toFormat('HH:mm:ss');
      this.SunSet = (parseInt(timestr.substr(0,2))*3600 + parseInt(timestr.substr(3,2))*60 + parseInt(timestr.substr(6,2)))/86400;

      timestr = luxon.DateTime.fromISO(State.attributes.next_dawn).toFormat('HH:mm:ss');
      this.SunDawn = (parseInt(timestr.substr(0,2))*3600 + parseInt(timestr.substr(3,2))*60 + parseInt(timestr.substr(6,2)))/86400;

      timestr = luxon.DateTime.fromISO(State.attributes.next_dusk).toFormat('HH:mm:ss');
      this.SunDusk = (parseInt(timestr.substr(0,2))*3600 + parseInt(timestr.substr(3,2))*60 + parseInt(timestr.substr(6,2)))/86400;
    end;
  end


  else if (Entity = WeatherSensor) then
  begin
    asm
      this.WeatherTemperature = State.attributes.temperature;
      this.WeatherPressure = State.attributes.pressure;
      this.WeatherHumidity = State.attributes.humidity;
      this.WeatherPressureUnit = State.attributes.pressure_unit;
      this.WeatherCondition = window.CapWords(State.state);

      var wind_bearing = parseInt(State.attributes.wind_bearing);
      var wind_heading = Math.round(((wind_bearing %= 360) < 0 ? wind_bearing + 360 : wind_bearing) / 22.5) % 16;
      var headings = ['N','NNE','NE','ENE','E','ESE','SE','SSE','S','SWS','SW','WSW','W','WNW','NW','NWW'];
      this.WeatherWind = State.attributes.wind_speed+' '+State.attributes.wind_speed_unit+' '+headings[wind_heading];
    end;

    WeatherIcon := 'not-available';

    // Environment Canada Contitions - other data sources may be very different!!
    // https://github.com/home-assistant/core/blob/dev/homeassistant/components/environment_canada/weather.py
    if WeatherCondition = 'Partlycloudy' then WeatherCondition := 'Partly Cloudy';
    if WeatherCondition = 'Clear-night' then WeatherCondition := 'Clear Night';
    if      WeatherCondition = 'Sunny' then WeatherIcon := 'clear-day'
    else if WeatherCondition = 'Clear Night' then WeatherIcon := 'clear-night'
    else if WeatherCondition = 'Partly Cloudy' then WeatherIcon := 'partly-cloudy-day'
    else if WeatherCondition = 'Cloudy' then WeatherIcon := 'cloudy'
    else if WeatherCondition = 'Rainy' then WeatherIcon := 'rain'
    else if WeatherCondition = 'Lightning Rainy' then WeatherIcon := 'thunderstorms-rain'
    else if WeatherCondition = 'Pouring' then WeatherIcon := 'extreme-rain'
    else if WeatherCondition = 'Snowy Rainy' then WeatherIcon := 'thunderstorms-snow'
    else if WeatherCondition = 'Snowy' then WeatherIcon := 'snow'
    else if WeatherCondition = 'Windy' then WeatherIcon := 'wind'
    else if WeatherCondition = 'Fog' then WeatherIcon := 'fog'
    else if WeatherCondition = 'Hail' then WeatherIcon := 'hail'
  end

  else if (Entity = Battery1Sensor) then
  begin
    asm
      if (State.attributes["name"] !== undefined) {
        this.Battery1Name = State.attributes["name"];
      }
      if ((State.attributes["battery"] !== undefined) && (State.attributes["battery"] !== "") && (State.attributes["battery"] !== 0)) {
        this.Battery1 = State.attributes["battery"]+'%';
      }
      else {
        this.Battery1 = '';
      }
      if ((State.attributes["battery_status"] !== undefined) && (State.attributes["battery_status"] !== 'Unknown') && (State.attributes["battery_status"] !== "")) {
        if (State.attributes["battery_status"] == 'NotCharging') {
          this.Battery1Status = 'Idle';
        }
        else {
          this.Battery1Status = State.attributes["battery_status"];
        }
      }
      else {
        this.Battery1Status = 'N/A';
      }
    end;
    if Battery1 = '100%'
    then dataBattery1.ElementLabelClassName := 'Text TextSM Orange'
    else dataBattery1.ElementLabelClassName := 'Text TextSM Yellow';
  end
  else if (Entity = Battery2Sensor) then
  begin
    asm
      if (State.attributes["name"] !== undefined) {
        this.Battery2Name = State.attributes["name"];
      }
      if ((State.attributes["battery"] !== undefined) && (State.attributes["battery"] !== "") && (State.attributes["battery"] !== 0)) {
        this.Battery2 = State.attributes["battery"]+'%';
      }
      else {
        this.Battery2 = '';
      }
      if ((State.attributes["battery_status"] !== undefined) && (State.attributes["battery_status"] !== 'Unknown') && (State.attributes["battery_status"] !== "")) {
        if (State.attributes["battery_status"] == 'NotCharging') {
          this.Battery2Status = 'Idle';
        }
        else {
          this.Battery2Status = State.attributes["battery_status"];
        }
      }
      else {
        this.Battery2Status = 'N/A';
      }
    end;
    if Battery2 = '100%'
    then dataBattery2.ElementLabelClassName := 'Text TextSM Orange'
    else dataBattery2.ElementLabelClassName := 'Text TextSM Yellow';
  end
  else if (Entity = Battery3Sensor) then
  begin
    asm
      if (State.attributes["name"] !== undefined) {
        this.Battery3Name = State.attributes["name"];
      }
      if ((State.attributes["battery"] !== undefined) && (State.attributes["battery"] !== "") && (State.attributes["battery"] !== 0)) {
        this.Battery3 = State.attributes["battery"]+'%';
      }
      else {
        this.Battery3 = '';
      }
      if ((State.attributes["battery_status"] !== undefined) && (State.attributes["battery_status"] !== 'Unknown') && (State.attributes["battery_status"] !== "")) {
        if (State.attributes["battery_status"] == 'NotCharging') {
          this.Battery3Status = 'Idle';
        }
        else {
          this.Battery3Status = State.attributes["battery_status"];
        }
      }
      else {
        this.Battery3Status = 'N/A';
      }
    end;
    if Battery3 = '100%'
    then dataBattery3.ElementLabelClassName := 'Text TextSM Orange'
    else dataBattery3.ElementLabelClassName := 'Text TextSM Yellow';
  end
  else if (Entity = Battery4Sensor) then
  begin
    asm
      if (State.attributes["name"] !== undefined) {
        this.Battery4Name = State.attributes["name"];
      }
      if ((State.attributes["battery"] !== undefined) && (State.attributes["battery"] !== "") && (State.attributes["battery"] !== 0)) {
        this.Battery4 = State.attributes["battery"]+'%';
      }
      else {
        this.Battery4 = '';
      }
      if ((State.attributes["battery_status"] !== undefined) && (State.attributes["battery_status"] !== 'Unknown') && (State.attributes["battery_status"] !== "")) {
        if (State.attributes["battery_status"] == 'NotCharging') {
          this.Battery4Status = 'Idle';
        }
        else {
          this.Battery4Status = State.attributes["battery_status"];
        }
      }
      else {
        this.Battery4Status = 'N/A';
      }
    end;
    if Battery4 = '100%'
    then dataBattery4.ElementLabelClassName := 'Text TextSM Orange'
    else dataBattery4.ElementLabelClassName := 'Text TextSM Yellow';
  end

  else if (Entity = Person1Sensor) then
  begin
    asm
      if (State.attributes["friendly_name"] !== undefined) {
        this.Person1Name = window.CapWords(State.attributes["friendly_name"]);
      }
      if (State.attributes["entity_picture"] !== undefined) {
        this.Person1Photo = State.attributes["entity_picture"];
      }
      if (State.state !== undefined) {
        this.Person1Location = window.CapWords(State.state.replace('_',' '));
      }
    end;
    if Person1Location = 'Stationary' then Person1Location := 'Somewhere';
  end
  else if (Entity = Person2Sensor) then
  begin
    asm
      if (State.attributes["friendly_name"] !== undefined) {
        this.Person2Name = window.CapWords(State.attributes["friendly_name"]);
      }
      if (State.attributes["entity_picture"] !== undefined) {
        this.Person2Photo = State.attributes["entity_picture"];
      }
      if (State.state !== undefined) {
        this.Person2Location = window.CapWords(State.state.replace('_',' '));
      }
    end;
    if Person2Location = 'Stationary' then Person2Location := 'Somewhere';
  end


  // Entities where we're just looking for a single value
  else if (Entity = MoonSensor) then asm this.MoonIcon = State.attributes.icon end
  else if (Entity = ClimateMinTempSensor) then asm if (!isNaN(State.state)) { this.ClimateMinTemp = parseFloat(State.state) } end
  else if (Entity = ClimateMaxTempSensor) then asm if (!isNaN(State.state)) { this.ClimateMaxTemp = parseFloat(State.state) } end
  else if (Entity = ClimateMinHumiditySensor) then asm this.ClimateMinHumidity = parseFloat(State.state) end
  else if (Entity = ClimateMaxHumiditySensor) then asm this.ClimateMaxHumidity = parseFloat(State.state) end
  else if (Entity = DaylightSensor) then asm this.ClimateLight = (State.attributes.light_level+' '+State.attributes.unit_of_measurement).replace('lx','lux') end
  else if (Entity = WeatherMinTempSensor) then asm if (!isNaN(State.state)) { this.WeatherMinTemp = parseFloat(State.state) } end
  else if (Entity = WeatherMaxTempSensor) then asm if (!isNaN(State.state)) { this.WeatherMaxTemp = parseFloat(State.state) } end
  else if (Entity = WeatherMinPressureSensor) then asm if (!isNaN(State.state)) { this.WeatherMinPressure = parseFloat(State.state) } end
  else if (Entity = WeatherMaxPressureSensor) then asm if (!isNaN(State.state)) { this.WeatherMaxPressure = parseFloat(State.state) }end
  else if (Entity = WeatherMinHumiditySensor) then asm this.WeatherMinHumidity = parseFloat(State.state) end
  else if (Entity = WeatherMaxHumiditySensor) then asm this.WeatherMaxHumidity = parseFloat(State.state) end
  else if (Entity = WeatherUVSensor) then asm this.WeatherUV = State.state end
  else if (Entity = WeatherAQHISensor) then asm this.WeatherAQHI = State.state end


  else
  begin
//    console.log('Misconfigured/Unexpected State Change Entity: '+Entity);
  end;

  // Update entire Home Page right away
  UpdateNow;

end;

procedure TForm1.btnHALinksClick(Sender: TObject);
begin
  SwitchPages(0,5);
end;

procedure TForm1.btnHALoadConfigurationClick(Sender: TObject);
begin

  // Change icon to indicate an update is happening.
  // Though in this case it might be too quick to be visible
  btnHALoadConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
                                      '<div class="mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div>'+
                                      '<i class="fa-solid fa-rotate fa-spin fa-fw" style="color:black; font-size:24px;"></i>'+
                                      '<div class="ps-2 lh-1" style="color:black;text-align:left;">Load Configuration<br />from Home Assistant</div>'+
                                    '</div>';

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
  btnHASaveConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
                                      '<i class="fa-solid fa-rotate fa-fw fa-spin" style="color:black; font-size:24px;"></i>'+
                                      '<div class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div>'+
                                      '<div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div>'+
                                    '</div>';

  // Update version information
  HAID := HAID + 1;
  Data := 'Catheedral: Version '+dataConfigVersion.Caption+', Released '+dataConfigRelease.Caption;
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_version","value":"'+Data+'"}}';
  HAWebSocket.Send(Command);

  // Update Configuration var as JSON
  HAID := HAID + 1;
  Data := '{"LD":"'+editConfigLongDate.Text+'",'+
           '"SD":"'+editConfigShortDate.Text+'",'+
           '"LT":"'+editConfigLongTime.Text+'",'+
           '"ST":"'+editConfigShortTime.Text+'",'+
           '"BG":"'+editConfigBackground.Text+'"}';
  asm Data = JSON.stringify(Data); end;
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_configuration","value":"'+FormatDateTime('yyyy-mm-dd hh:nn:ss',Now)+'","attributes":{"feature_000":'+Data+',';

  // Update var 001+ values from table, where the number of entries in the table
  // should match the number of var entries in Home Assistant, ideally
  i := 1;
  while (i <= Features) do
  begin
    asm Data = this.tabConfigSensors.getRow(i).getCell('entity_id').getValue(); end;
    Command := Command+'"feature_'+Format('%.*d',[3,i])+'":"'+Data+'"';
    if (i < Features)  then Command := Command+','
    else Command := Command+'}}}';
    i := i + 1
  end;
//  console.log(command);
  HAWebSocket.Send(Command);

  // Revert to normal icon
  btnHASaveConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
                                      '<i class="fa-solid fa-right-long fa-fw" style="color:black; font-size:24px;"></i>'+
                                      '<div class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; font-size:32px;"></div>'+
                                      '<div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div>'+
                                    '</div>';

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

procedure TForm1.HelpConfigMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ResetInactivityTimer(Sender);
end;

procedure TForm1.editConfigBACKGROUNDChange(Sender: TObject);
begin
  editConfigChange(nil);
  if (Trim(editConfigBACKGROUND.Text) <> '') and (LowerCase(Trim(editConfigBACKGROUND.Text)) <> 'none') then
  begin
    AppBackground := editConfigBACKGROUND.Text;
    if Pos(';', AppBackground) > 0
    then divBackground.ElementHandle.style.cssText := AppBackground
    else if ((Pos('.png', AppBackground) > 0) or (Pos('.gif', AppBackground) > 0) or (Pos('.webp', AppBackground) > 0) or (Pos('.svg', AppBackground) > 0) or (Pos('.jpg', AppBackground) > 0) or (Pos('.jpeg', AppBackground) > 0)) and (Pos('url', AppBackground) = 0) then
         begin
           divBackground.ElementHandle.style.setProperty('background', 'url('+AppBackground+')');
           divBackground.ElementHandle.style.setProperty('background-size', 'cover');
           divBackground.ElementHandle.style.setProperty('background-position', 'center');
         end
         else divBackground.ElementHandle.style.setProperty('background', AppBackground);
    divBackground.ElementHandle.style.setProperty('top', '0px');
    divBackground.ElementHandle.style.setProperty('left', '0px');
    divBackground.ElementHandle.style.setProperty('width', IntToStr(PanelWidth)+'px');
    divBackground.ElementHandle.style.setProperty('height', IntToStr(PanelHeight)+'px');
    divBackground.ElementHandle.style.setProperty('opacity', '1');
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

  asm
    window.UpdateSensorList();
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

  ShowConnected;
end;

procedure TForm1.HAWebSocketDataReceived(Sender: TObject; Origin: string; SocketData: TJSObjectRecord);
var
  ResponseType: String;
  ResponseID: Integer;
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
//        console.log('Config Information: '+SocketData.jsobject.length+' bytes');
//        console.log(hadata);

        this.HASystemName = hadata.result.location_name;
        this.HATimeZone = hadata.result.time_zone;
        this.HALanguage = hadata.result.language;
        this.HACountry = hadata.result.country;

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

        // We might care about these more than the others
        this.HATemperatureUnits = hadata.result.unit_system.temperature;
        this.HAPressureUnits = hadata.result.unit_system.pressure;

        // Display the rest anyway
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

        // This is the state of all Home Assistant objects and their contents in detail
        this.HAStates = hadata.result.sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);

        // Let's have a look at it, shall we??
//        console.log('State Information: '+SocketData.jsobject.length+' bytes');
//        console.log(this.HAStates);

        // This is a list of the names of all the entities that have a state, sorted
        this.HAEntities = this.HAStates.map( obj => obj.entity_id ).sort();
//        console.log(this.HAEntities);


        // Run through our list of sensors and see if any match
        for (var i = 0; i < window.SensorList.length; i++) {
          if (window.SensorList[i] !== '') {
            var sensor = this.HAEntities.find(o => o === window.SensorList[i]);
            if (sensor !== undefined) {
              this.StateChanged(sensor, hadata.result.find(o => o.entity_id === sensor));
            }
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
        // Lets include the groups so we can use them later, but not include them in the counts
        var LightGroups = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && ((o.attributes.lights !== undefined) || (o.entity_id.indexOf("_group") !== -1)) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
          }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        this.Lights = [...this.Lights, ...LightGroups];
        this.LightsCount = this.LightsOn + this.LightsOff;
        // Let's have a look at it, shall we??
//        console.log('Lighting Information: '+JSON.stringify(this.Lights).length+' bytes');
//        console.log(this.Lights);


        // Load Configuration from Home Assistant Data (triggered by button click - not automatic)
        if (this.HALoadConfig == true) {
          var config = hadata.result.find(o => o.entity_id === 'var.catheedral_configuration');
          if (config !== undefined) {
            for (var i = 0; i <= this.Features; i++) {
              var param = config.attributes['feature_'+String(i).padStart(3,'0')];
              if (param !== undefined) {
                // Date/TimeFormats and Background as JSON stored in 000
                if (i == 0) {
                  editConfigLONGDATE.value = param.LD;
                  editConfigSHORTDATE.value = param.SD;
                  editConfigLONGTIME.value = param.LT;
                  editConfigSHORTTIME.value = param.ST;
                  editConfigBACKGROUND.value = param.BG;
                }
                // List of sensors stored in 001..Features
                else {
                  this.tabConfigSensors.getRow(i).getCell('entity_id').setValue(param);
                }
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

        this.HAStatesLoaded = true;

      }
    }
    else if ((ResponseType == 'result') && (hadata.success == false)) {
//      console.log(hadata);
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
            this.Lights[lightidx] = hadata.event.data.new_state;
          } else {
            // Got a new light??
            this.Lights.push(hadata.event.data.new_state);                             }
          this.LightsOn = this.Lights.filter(
            function(o) {
             return ((o.entity_id.indexOf("light.") == 0) && (o.state == "on") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
            }).length;
          this.LightsOff = this.Lights.filter(
            function(o) {
             return ((o.entity_id.indexOf("light.") == 0) && (o.state == "off") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
            }).length;
          this.LightsCount = this.LightsOn + this.LightsOff;
          pas.Unit1.Form1.UpdateNow();
        }

        for (var i = 0; i < window.SensorList.length; i++) {
          if (window.SensorList[i] !== '') {
            if (hadata.event.data.entity_id == window.SensorList[i]) {
              this.StateChanged(hadata.event.data.entity_id, hadata.event.data.new_state);
            }
          }
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

procedure TForm1.LightButtonClicked(light: String);
begin
  if pos('light-',light) = 1 then
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+Copy(light,7,length(light))+'"}}');
  end;
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
    if Pos(';', AppBackground) > 0
    then divBackground.ElementHandle.style.cssText := AppBackground
    else if ((Pos('.png', AppBackground) > 0) or (Pos('.gif', AppBackground) > 0) or (Pos('.webp', AppBackground) > 0) or (Pos('.svg', AppBackground) > 0) or (Pos('.jpg', AppBackground) > 0) or (Pos('.jpeg', AppBackground) > 0)) and (Pos('url', AppBackground) = 0) then
         begin
           divBackground.ElementHandle.style.setProperty('background', 'url('+AppBackground+')');
           divBackground.ElementHandle.style.setProperty('background-size', 'cover');
           divBackground.ElementHandle.style.setProperty('background-position', 'center');
         end
         else divBackground.ElementHandle.style.setProperty('background', AppBackground);
    divBackground.ElementHandle.style.setProperty('top', '0px');
    divBackground.ElementHandle.style.setProperty('left', '0px');
    divBackground.ElementHandle.style.setProperty('width', IntToStr(PanelWidth)+'px');
    divBackground.ElementHandle.style.setProperty('height', IntToStr(PanelHeight)+'px');
    divBackground.ElementHandle.style.setProperty('opacity', '1');
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

  asm
    window.UpdateSensorList();
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

  ConfigurationLoaded := True;
end;

procedure TForm1.LoadHelp(HelpDIV: String);
var
  HelpFile: String;
  HelpFileAlt: String;
begin
  HelpFile := 'help/'+HALanguage+'-'+HACountry+'/'+HelpDIV+'.html';
  HelpFileAlt := 'help/en-CA/'+HelpDIV+'.html';
  asm
    var Help = document.getElementById(HelpDIV)
    fetch(HelpFile)
      .then(
        function(response) {
          if (response.status !== 200) {
            fetch(HelpFileAlt)
              .then(
                function(altresponse) {
                  if (response.status !== 200) {
                    Help.innerHTML = 'Help File Missing: '+HelpDIV+'.html'
                  }
                  response.text().then(function(AltHelpData) {
                    Help.innerHTML = AltHelpData
                  })
                }
              )
              .catch(function(err) {
                console.log('Error ['+err+'] Loading Help: '+HelpDIV)
              })
          }
          response.text().then(function(HelpData) {
            Help.innerHTML = HelpData
          })
        }
      )
      .catch(function(err) {
        console.log('Error ['+err+'] Loading Help: '+HelpDIV)
      })
  end;
end;

procedure TForm1.MiletusFormCreate(Sender: TObject);
var
  datafile: String;
  i: Integer;
begin

  // Let's just do this versioning stuff by hand
  AppVersion := '1.0.5';
  AppRelease := '2023-Jan-21';
  AppStarted := Now;

  // Application State
  DebugMode := False;
  DesktopMode := False;
  ChangeMode := False;
  ConfigTableReady := False;
  ConfigurationLoaded := False;
  UpdatePending := False;
  LastRefresh := Now;

  // Main reason we care is due to menu at top
  // messing with our fixed dimensions
  {$IFDEF DEBUG}
    DebugMode := True;
  {$ENDIF}

  // Main reason we care is that this determines
  // wether borderstyle changes on configuration page
  await(Boolean, TTMSParams.Execute);
  for i := 0 to ParamCount do
  begin
    if Pos('DESKTOP', Uppercase(ParamStr(i))) > 0
    then DesktopMode := True;
  end;


  dataInfoVersion.Caption := AppVersion;
  dataInfoRelease.Caption := AppRelease;
  titleCatheedral.Caption := 'Catheedral v'+AppVersion;
  Form1.Caption := titleCatheedral.Caption;
  dataConfigVERSION.Caption := AppVersion;
  dataconfigRELEASE.Caption := AppRelease;


  // INI Filename
  datafile := StringReplace(ParamStr(0),'.exe','',[])+'.ini';
  asm
    datafile = datafile.split('\\').pop().split('/').pop();
  end;
  dataInfoCatheedral.Caption := datafile;

  // Let's start with this.  Will adjust later.
  // Try to use these for all adjustments, so when we move to
  // different form factors, these are all we have to consider.
  PanelWidth := 1280;
  PanelHeight := 400;
  MainNavSize := 40;
  MainButtonSize := 40;
  MainButtonPad := 3;

  if DebugMode then
  begin
    Form1.Width := PanelWidth;
    Form1.Height := PanelHeight + 20;
  end
  else
  begin
    Form1.Width := PanelWidth;
    Form1.Height := PanelHeight;
  end;


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

  // Configure Tabulator list of Sensors
  ConfigureTabSensors;

  // Adjust sizes of Config Listboxes
  listBackgrounds.Top := 205;
  listBackgrounds.Left := 190;
  listBackgrounds.Width := 520;
  listBackgrounds.Height := 178;

  listDatesLong.Top := 245;
  listDatesLong.Left := 190;
  listDatesLong.Width := 260;
  listDatesLong.Height := 138;

  listDatesShort.Top := 285;
  listDatesShort.Left := 190;
  listDatesShort.Width := 260;
  listDatesShort.Height := 98;

  listTimesLong.Top := 245;
  listTimesLong.Left := 560;
  listTimesLong.Width := 150;
  listTimesLong.Height := 138;

  listTimesShort.Top := 285;
  listTimesShort.Left := 560;
  listTimesShort.Width := 150;
  listTimesShort.Height := 98;


  // Initialize various States

  // Home Assistant State - Unknonw at start
  HASystemName := '';
  HAID := 0;
  ShowDisconnected;
  HALoadConfig := False;
  HAStatesLoaded := False;

  //  Sensors
  SunSensor := '';
  MoonSensor := '';

  DaylightSensor := '';
  ClimateSensor := '';
  ClimateMinTempSensor := '';
  ClimateMaxTempSensor := '';
  ClimateMinHumiditySensor := '';
  ClimateMaxHumiditySensor := '';

  WeatherSensor := '';
  WeatherMinTempSensor := '';
  WeatherMaxTempSensor := '';
  WeatherMinPressureSensor := '';
  WeatherMaxPressureSensor := '';
  WeatherMinHumiditySensor := '';
  WeatherMaxHumiditySensor := '';
  WeatherUVSensor := '';
  WeatherAQHISensor := '';

  Person1Sensor := '';
  Person2Sensor := '';

  Battery1Sensor := '';
  Battery2Sensor := '';
  Battery3Sensor := '';
  Battery4Sensor := '';

  // Config Page Defaults
  editConfigURL.Text := 'http://homeassistant.local:8123';
  editConfigTOKEN.Text := '';
  editConfigBACKGROUND.Text := 'black';
  editConfigLONGDATE.Text := 'yyyy-mmm-dd (ddd)';
  editConfigLONGTIME.Text := 'hh:nn:ss';
  editConfigSHORTDATE.Text := 'mmm d' ;
  editConfigSHORTTIME.Text := 'hh:nn:ss';

  // Home Page - Time Panel
  SunRise := Trunc(Now);
  SunSet := Trunc(Now);
  SunDawn := Trunc(Now);
  SunDusk := Trunc(Now);
  MoonIcon := '';

  // Home Page - Climate Panel
  LightsOn := 0;
  LightsOff := 0;
  LightsCount := 0;
  ClimateName := 'Not Configured';
  ClimateMin := 0;
  ClimateMax := 0;
  ClimateHumidity := 0;
  ClimateCurrent := 0;
  ClimateSetPoint := 0;
  ClimateState := 'None';
  ClimateMode := 'None';
  ClimateLight := '';
  ClimateMinTemp := 0;
  ClimateMaxTemp := 100;
  ClimateMinTempRange := 0;
  ClimateMaxTempRange := 100;
  ClimateMinHumidity := 0;
  ClimateMaxHumidity := 0;
  btnHomeTempDown.ElementHandle.style.setProperty('opacity','1');
  btnHomeTempUp.ElementHandle.style.setProperty('opacity','1');

  // Home Page - Weather Panel
  WeatherTemperature := 0;
  WeatherPressure := 0;
  WeatherHumidity := 0;
  WeatherMinTemp := 0;
  WeatherMaxTemp := 0;
  WeatherMinTempRange := 0;
  WeatherMaxTempRange := 100;
  WeatherMinPressureRange := 0;
  WeatherMaxPressureRange := 0;
  WeatherUV := 'N/A';
  WeatherAQHI := 'N/A';

  // Home Page - Energy Panel
  Battery1Name := '';
  Battery2Name := '';
  Battery3Name := '';
  Battery4Name := '';
  Battery1 := '';
  Battery2 := '';
  Battery3 := '';
  Battery4 := '';
  Battery1Status := '';
  Battery2Status := '';
  Battery3Status := '';
  Battery4Status := '';
  Person1Name := '';
  Person1Photo := '';
  Person1Location := '';
  Person2Name := '';
  Person2Photo := '';
  Person2Location := '';
  EnergyUse := 1234;

  // Lights Page
  LightsMode := 3; // No Groups


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
    if (Key = VK_ESCAPE) and (pages.TabIndex <> 1) then
    begin
      btnHomeClick(Sender);
    end
    else if (char(Key) = '1') then
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
    else if (char(Key) = '6') then
    begin
      divHomeLightsCoverClick(Sender);
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
  // Fadeout CurrentPage
  if (StartPage <> EndPage)
  then pages.ActivePage.ElementHandle.style.setProperty('opacity','0');

  // If Leaving "Configure Sensors" Page, Save Changes
  if StartPage = 5
  then editConfigChange(nil);

  // Would really like a sleep function here.
  // Instead, we'll finish up what we're doing in a timer

  tmrSwitchPage.Tag := EndPage;
  tmrSwitchPage.Enabled := True;
end;

procedure TForm1.tmrConnectTimer(Sender: TObject);
begin

  // We're not ready yet
  if  ConfigurationLoaded = False then exit;

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

procedure TForm1.tmrExitTimer(Sender: TObject);
begin
  HAWebSocket.Disconnect;
  Form1.Close;
end;

procedure TForm1.tmrInactivityTimer(Sender: TObject);
begin
  if pages.TabIndex <> 1
  then SwitchPages(pages.TabIndex,1);

  tmrInactivity.Enabled := False;
end;

procedure TForm1.tmrLightsTimer(Sender: TObject);
begin
  tmrLights.Enabled := False;
  LightsMode := tmrLights.Tag;
  LightsAll := '';
  asm
    divAllLights.innerHTML = '';
  end;
  UpdateNow;
  divAllLights.ElementHandle.style.setProperty('opacity','1');
end;

procedure TForm1.tmrSecondsTimer(Sender: TObject);
var
  current_seconds: Integer;
  current_seconds_15: Integer;
  current_seconds_60: Integer;
  current_seconds_3600: Integer;

  segment_start: Integer;
  segment_end: Integer;
  segment: String;
  rotation: String;
  memory: integer;
  lights: String;
  display: String;

  UpdateRing1,
  UpdateRing2,
  UpdateRing3,
  UpdateRing4,
  UpdateRing5: Boolean;

  ElapsedTime: TDateTime;
begin

  // How long does it take to run an update?
  ElapsedTime := Now;

  // If we JUST ran an update, let's not do it again
  if MillisecondsBetween(ElapsedTime, LastRefresh) < 100 then
  begin
    UpdatePending := True;
    exit;
  end;
  // If we're already about to do an update, let's wait until then
  if (1000-MilliSecondOftheSecond(ElapsedTime) < 100) then exit;
  // Otherwise, let's continue
  LastRefresh := ElapsedTime;
  tmrSeconds.Enabled := False;

  // Some easy calculations
  current_seconds := SecondOfTheDay(Now);
  current_seconds_15 := current_seconds mod 15;      // Zero every 15 seconds
  current_seconds_60 := current_seconds mod 60;      // Zero every minute
  current_seconds_3600 := current_seconds mod 3600;  // Zero every hour


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
  // Entries on the Configuration Information Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 6) or (tmrSeconds.Tag = 6) then
  begin

    dataInfoRunning.Caption := IntToStr(Trunc(Now-AppStarted))+'d '+FormatDateTime('h"h "n"m "s"s"', Now-AppStarted);

    if (current_seconds_15 = 0) or (tmrSeconds.Tag = 6) then
    begin
      memory := 0;
      asm
        if ((performance !== undefined) && (performance.memory !== undefined) && (performance.memory.totalJSHeapSize !== undefined)) {
          memory = parseInt(performance.memory.totalJSHeapSize);
        }
      end;
     dataInfoMemory.Caption := FloatToStrF(memory / (1024 * 1024), ffNumber, 6,1)+' MB';
    end;
  end;



  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Entries on the Home Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 1) or (tmrSeconds.Tag = 1) then
  begin


   // Time Panel //////////////////////////////////////////////////////////////////////////////////

    try
      display := FormatDateTime(editConfigSHORTDATE.Text, Now);
      if labelDate.Caption <> display
      then labelDate.Caption := display;
    except on E: Exception do
      labelDate.Caption := 'Invalid Format';
    end;
    try
      display := FormatDateTime(editConfigLONGTIME.Text, Now);
      if labelTime.Caption <> display
      then labelTime.Caption := display;
    except on E: Exception do
      labelTime.Caption := 'Invalid Format';
    end;

    display := FormatDateTime('dddd',Now);
    if labelDay.Caption <> display
    then labelDay.Caption := display;


    // Seconds (Ring 1)
    segment := IntToStr(current_seconds_60);
    Sparkline_Donut(
      55, 5, 290, 290,                           // T, L, W, H
      circleSeconds,                             // TWebHTMLDiv
      segment+'/60',                             // Data
      '["'+Circle1+'","'+CircleB+'"]',           // Fill
      '0deg',                                    // Rotation
      138,                                       // Inner Radius
      ''                                         // Text
    );

    // Seconds Marker (Ring 1)
    rotation := IntToStr((current_seconds_60 * 6) - 2);
    Sparkline_Donut(
      50, 0, 300, 300,                           // T, L, W, H
      circleSecondsMarker,                       // TWebHTMLDiv
      '4/360',                                   // Data
      '["'+Circle1+'","transparent"]',           // Fill
      rotation+'deg',                            // Rotation
      93,                                        // Inner Radius
      ''                                         // Text
    );

    // Every minute we update the Minute and Hour rings
    if (current_seconds_60 = 0) or (tmrSeconds.Tag = 1) then
    begin

      // Minutes (Ring 2)
      segment := IntToStr(current_seconds_3600);
      Sparkline_Donut(
        65, 15, 270, 270,                        // T, L, W, H
        circleMinutes,                           // TWebHTMLDiv
        segment+'/3600',                         // Data
        '["'+Circle2+'","'+CircleB+'"]',         // Fill
        '0deg',                                  // Rotation
        128,                                     // Inner Radius
        ''                                       // Text
      );

      // minutes Marker (Ring 2)
      rotation := IntToStr((current_seconds_3600 div 10) - 2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleMinutesMarker,                     // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle2+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        93,                                      // Inner Radius
        ''                                       // Text
      );

      // Hours (Ring 3)
      segment := IntToStr(current_seconds);
      Sparkline_Donut(
        75,25,250,250,                           // T, L, W, H
        circleHours,                             // TWebHTMLDiv
        segment+'/86400',                        // Data
        '["'+Circle3+'","'+CircleB+'"]',         // Fill
        '0deg',                                  // Rotation
        118,                                     // Inner Radius
        ''                                       // Text
      );

      // Hours Marker (Ring 3)
      // 86400s in day / 360deg = 240s/deg rotat
      rotation := IntToStr((current_seconds div 240) - 2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        circleHoursMarker,                       // TWebHTMLDiv
        '4/360',                                 // Data
        '["'+Circle3+'","transparent"]',         // Fill
        rotation+'deg',                          // Rotation
        93,                                      // Inner Radius
        ''                                       // Text
      );

    end;


    // Every minute we check to see if we need to update the Sunrise/Sunset and Dawn/Dusk information
    if (current_seconds_60 = 0) or (tmrSeconds.Tag = 1) then
    begin

      try
        display := FormatDateTime(editConfigSHORTTIME.Text, SunRise)+
                   FormatDateTime(editConfigSHORTTIME.Text, SunSet)+
                   FormatDateTime(editConfigSHORTTIME.Text, SunDawn)+
                   FormatDateTime(editConfigSHORTTIME.Text, SunDusk);
      except on E: Exception do
        display := 'Invalid Format';
      end;

      segment := dataHomeRise.Caption+
                 dataHomeSet.Caption+
                 dataHomeDawn.Caption+
                 dataHomeDusk.Caption;

      // If any of these four values has changed, then update all of them
      if (segment <> display) or (tmrSeconds.Tag = 1) then
      begin

        try
          display := FormatDateTime(editConfigSHORTTIME.Text, SunRise);
          if dataHomeRise.Caption <> display
          then dataHomeRise.Caption := display;
        except on E: Exception do
          dataHomeRise.Caption := 'Invalid Format';
        end;

        try
          display := FormatDateTime(editConfigSHORTTIME.Text, SunSet);
          if dataHomeSet.Caption <> display
          then dataHomeSet.Caption := display;
        except on E: Exception do
          dataHomeSet.Caption := 'Invalid Format';
        end;

        try
          display := FormatDateTime(editConfigSHORTTIME.Text, SunDawn);
          if dataHomeDawn.Caption <> display
          then dataHomeDawn.Caption := display;
        except on E: Exception do
          dataHomeDawn.Caption := 'Invalid Format';
        end;

        try
          display := FormatDateTime(editConfigSHORTTIME.Text, SunDusk);
          if dataHomeDusk.Caption <> display
          then dataHomeDusk.Caption := display;
        except on E: Exception do
          dataHomeDusk.Caption := 'Invalid Format';
        end;


        // Dawn/Dusk (Ring 4)
        segment_start := Trunc(SunDawn * 360);
        segment_end := Trunc(SunDusk * 360);
        segment := IntToStr(segment_end - segment_start);
        rotation := IntToStr(segment_start);
        Sparkline_Donut(
          85, 35, 230, 230,                        // T, L, W, H
          circleDawnDusk,                          // TWebHTMLDiv
          segment+'/360',                          // Data
          '["'+Circle4+'","transparent"]',         // Fill
          rotation+'deg',                          // Rotation
          108,                                     // Inner Radius
          ''                                       // Text
        );

        // Rise/Set (Ring 5)
        segment_start := Trunc(SunRise * 360);
        segment_end := Trunc(SunSet * 360);
        segment := IntToStr(segment_end - segment_start);
        rotation := IntToStr(segment_start);
        Sparkline_Donut(
          95, 45, 210, 210,                        // T, L, W, H
          circleRiseSet,                           // TWebHTMLDiv
          segment+'/360',                          // Data
          '["'+Circle5+'","transparent"]',         // Fill
          rotation+'deg',                          // Rotation
          98,                                      // Inner Radius
          ''                                       // Text
        );

//        dataHomeTwilight.Caption := FormatDateTime('h"h"n"m"s"s"', SunDusk - SunDawn);
//        dataHomeDaylight.Caption := FormatDateTime('h"h"n"m"s"s"', SunRise - Sunset);
        dataHomeTwilight.Caption := FormatDateTime('h"h "n"m"', SunDusk - SunDawn);
        dataHomeDaylight.Caption := FormatDateTime('h"h "n"m"', SunRise - Sunset);
      end;


      // Moon Icon
      display := '<img width="70" height="70" src="weather-icons-dev/production/fill/svg-static/moon'+StringReplace(StringReplace(StringReplace(MoonIcon,'_','-',[rfReplaceAll]),'mdi:moon','',[]),'-moon','',[])+'.svg">';
      if divHomeMoon.HTML.Text <> display
      then divHomeMoon.HTML.Text := display;

      // Moon Title
      display := Trim(StringReplace(StringReplace(StringReplace(MoonIcon,'_',' ',[rfReplaceAll]),'mdi:moon','',[]),'-',' ',[rfReplaceAll]));
      asm
        display = window.CapWords(display);
      end;
      if divHomeMoon.ElementHandle.getAttribute('title') <> display
      then divHomeMoon.ElementHandle.setAttribute('title',display);

    end;


    // Climate Panel //////////////////////////////////////////////////////////////////////////////////

    // Updates once a minute at 15s mark
    if (current_seconds_60 = 15) or (tmrSeconds.Tag = 1) then
    begin

      UpdateRing1 := False;
      UpdateRing2 := False;
      UpdateRing3 := False;

      // Main Temperature Display
      if labelHomeTempName.Caption <> ClimateName
      then labelHomeTempName.Caption := ClimateName;
      display := Trim(FloatToStrF(ClimateCurrent,ffNumber,5,1)+HATemperatureUnits);
      if dataHomeTemperature.Caption <> display then
      begin
        dataHomeTemperature.Caption := display;
        UpdateRing1 := True;
      end;

      // If lights have changed, then update them
//      Lights := '<div>'+IntToStr(LightsOn)+'<i class="fa-solid fa-lightbulb Yellow fa-2xs px-2"></i>'+
//                 IntToStr(LightsOff)+''+'<i class="fa-solid fa-lightbulb DarkGray fa-2xs px-2"></i>'+
//                 IntToStr(LightsCount)+'</div>';
      Lights := '<div class="d-flex justify-content-center">'+
                  '<div class="TextRG Gray text-end" style="width:50px;">'+IntToStr(LightsOn)+'</div>'+
                  '<div><i class="fa-solid fa-lightbulb Yellow fa-2xs px-2"></i></div>'+
                  '<div class="TextRG Gray text-start" style="width:50px;">'+IntToStr(LightsOff)+'</div>'+
                '</div>';
      if dataHomeLights.HTML <> Lights
      then dataHomeLights.HTML := Lights;

      // Temp rounded to 5, then +/- 5 to get Range
      ClimateMinTempRange := (Round(ClimateMinTemp / 5) * 5) - 5;
      ClimateMaxTempRange := (Round(ClimateMaxTemp / 5) * 5) + 5;

      if not(HAStatesLoaded) then
      begin
        ClimateMinTempRange := 0;
        ClimateMaxTempRange := 100;
      end;

      // Minimum Climate Temperature
//      display := Trim(FloatToStrF(ClimateMinTemp,ffNumber,5,1)+HATemperatureUnits);
      display := Trim(FloatToStrF(ClimateMinTemp,ffNumber,5,1));
      if DataHomeMin.Caption <> display then
      begin
        DataHomeMin.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;
      display := 'Min '+FloatToStr(ClimateMinTempRange)+HATemperatureUnits;
      if LabelHomeMin.Caption <> display then
      begin
        LabelHomeMin.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Maximum Climate Temperature
//      display := Trim(FloatToStrF(ClimateMaxTemp,ffNumber,5,1)+HATemperatureUnits);
      display := Trim(FloatToStrF(ClimateMaxTemp,ffNumber,5,1));
      if DataHomeMax.Caption <> display then
      begin
        DataHomeMax.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;
      display := FloatToStr(ClimateMaxTempRange)+HATemperatureUnits+' Max';
      if LabelHomeMax.Caption <> display then
      begin
        LabelHomeMax.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Humidity
      display := '<div class="d-flex flex-wrap w-100 align-items-center justify-content-center">'+
                   '<div class="w-100 m-auto"><img style="width:80px; height:80px; margin-bottom:-25px;" src="weather-icons-dev/production/fill/svg-static/humidity.svg"></div>'+
                   '<div style="width:60px; text-align: right;" class="TextSM Gray">'+Trim(FloatToStrF(ClimateMinHumidity,ffNumber,5,0))+'</div>'+
                   '<div style="width:60px; text-align: center;">'+Trim(FloatToStrF(ClimateHumidity,ffNumber,5,0))+'</div>'+
                   '<div style="width:60px; text-align: left;" class="TextSM Gray">'+Trim(FloatToStrF(ClimateMaxHumidity,ffNumber,5,0))+'</div>'+
                 '</div>';
      if dataHomeHumidity.HTML <> display then
      begin
        dataHomeHumidity.HTML := display;
        UpdateRing3 := True;
      end;

      // SetPoint UI
      display := Trim(FloatToStrF(ClimateSetPoint,ffNumber,5,0)+HATemperatureUnits);
      if dataHomeSetPoint.Caption <> display then
      begin
        dataHomeSetPoint.Caption := display;
        UpdateRing2 := True;
      end;

      // Decide whether buttons should be enabled
      // Note ClimateMin/Max = Thermostat SetPoint Min/Max
      if (ClimateSetPoint <= Max(ClimateMin, ClimateMinTempRange)) or (labelHomeTempName.Caption = 'Not Configured')
      then btnHOmeTempDown.Enabled := False
      else btnHomeTempDown.Enabled := True;
      if (ClimateSetPoint >= Min(ClimateMax, ClimateMaxTempRange)) or (labelHomeTempName.Caption = 'Not Configured')
      then btnHOmeTempUp.Enabled := False
      else btnHomeTempUp.Enabled := True;

      // Thermostat State / Mode
      if dataHomeState.Caption <> ClimateState
      then dataHomeState.Caption := ClimateState;
      if dataHomeMode.Caption <> ClimateMode
      then dataHomeMode.Caption := ClimateMode;

      // Daylight Sensor
      if dataHomeLightLevel.Caption <> ClimateLight
      then dataHomeLightLevel.Caption := ClimateLight;

      if (UpdateRing1 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleClimateTemperature.Tag := circleClimateTemperature.Tag + 1;

        // Climate Temperature (Ring 1)
        segment_start := Trunc(((ClimateCurrent-ClimateMinTempRange)*280) / (ClimateMaxTempRange-ClimateMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(280-segment_start)+',80';
        Sparkline_Donut(
          55, 5, 290, 290,                                // T, L, W, H
          circleClimateTemperature,                       // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle5+'","'+CircleB+'","transparent"]',  // Fill
          '220deg',                                       // Rotation
          138,                                            // Inner Radius
          ''                                              // Text
        );

        // Climate Temperature Marker (Ring 1)
        rotation := IntToStr(220+Trunc(((ClimateCurrent-ClimateMinTempRange)*280) / (ClimateMaxTempRange-ClimateMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleClimateTemperatureMarker,                 // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle5+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;

      if (UpdateRing2 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleSetPoint.Tag := circleSetPoint.Tag + 1;

        // Setpoint (Ring 2)
        segment_start := Trunc(((ClimateSetPoint-ClimateMinTempRange)*290) / (ClimateMaxTempRange-ClimateMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(290-segment_start)+',70';
        Sparkline_Donut(
          65, 15, 270, 270,                               // T, L, W, H
          circleSetPoint,                                 // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle2+'","'+CircleB+'","transparent"]',  // Fill
          '215deg',                                       // Rotation
          128,                                            // Inner Radius
          ''                                              // Text
        );

        // SetPoint Marker (Ring 2)
        rotation := IntToStr(215+Trunc(((ClimateSetpoint-ClimateMinTempRange)*290) / (ClimateMaxTempRange-ClimateMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleSetPointMarker,                           // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle2+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;

      if (UpdateRing3 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleClimateHumidity.Tag := circleClimateHumidity.Tag + 1;

        // Humidity (Ring 3)
        segment_start := Trunc((ClimateHumidity*300) / 100);
        segment := IntToStr(segment_start)+','+IntToStr(300-segment_start)+',60';
        Sparkline_Donut(
          75, 25, 250, 250,                               // T, L, W, H
          circleClimateHumidity,                          // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle3+'","'+CircleB+'","transparent"]',  // Fill
          '210deg',                                       // Rotation
          118,                                            // Inner Radius
          ''                                              // Text
        );

        // Humidity Marker (Ring 3)
        rotation := IntToStr(210+Trunc((ClimateHumidity*300) / 100)-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleClimateHumidityMarker,                    // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle3+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;

    end;


    // Weather Panel //////////////////////////////////////////////////////////////////////////////////

    // Updates once a minute at 30s mark
    if (current_seconds_60 = 30) or (tmrSeconds.Tag = 1) then
    begin
      UpdateRing1 := False;
      UpdateRing2 := False;
      UpdateRing3 := False;

      // Weather Icon
      display := '<img src="weather-icons-dev/production/fill/svg/'+WeatherIcon+'.svg">';
      if divWeatherIcon.HTML.Text <> display
      then divWeatherIcon.HTML.Text := display;

      // Weather Condition
      if dataWeatherCondition.Caption <> WeatherCondition
      then dataWeatherCondition.Caption := WeatherCondition;

      // Main Temperature Display
      display := Trim(FloatToStrF(WeatherTemperature,ffNumber,5,1)+HATemperatureUnits);
      if dataWeatherTemperature.Caption <> display then
      begin
        dataWeatherTemperature.Caption := display;
        UpdateRing1 := True;
      end;

      // Main Pressure Display
      display := Trim(FloatToStrF(WeatherPressure/10,ffNumber,5,1)+' kPa');
      if labelWeatherPressure.Caption <> display then
      begin
        labelWeatherPressure.Caption := display;
        UpdateRing2 := True;
      end;

      // UV Index Display
      if dataWeatherWind.Caption <> WeatherWind
      then dataWeatherWind.Caption := WeatherWind;

      // UV Index Display
      if WeatherUV = 'unknown' then WeatherUV := 'N/A';
      if dataWeatherUV.Caption <> WeatherUV
      then dataWeatherUV.Caption := WeatherUV;

      // AQHI  Display
      if WeatherUV = 'unknown' then WeatherAQHI := 'N/A';
      if dataWeatherAQHI.Caption <> WeatherAQHI
      then dataWeatherAQHI.Caption := WeatherAQHI;

      // Temp rounded to 5, then +/- 5 to get Range
      WeatherMinTempRange := (Round(WeatherMinTemp / 5) * 5) - 5;
      WeatherMaxTempRange := (Round(WeatherMaxTemp / 5) * 5) + 5;

      // Temp rounded to 20, then +/- 20 to get Range
      WeatherMinPressureRange := (Round(WeatherMinPressure / 20) * 20) - 20;
      WeatherMaxPressureRange := (Round(WeatherMaxPressure / 20) * 20) + 20;

      if not(HAStatesLoaded) then
      begin
        WeatherMinTempRange := 0;
        WeatherMaxTempRange := 100;
        WeatherMinPressureRange := 0;
        WeatherMaxPressureRange := 100;
      end;

      // Minimum Weather Temperature
//      display := Trim(FloatToStrF(WeatherMinTemp,ffNumber,5,1)+HATemperatureUnits);
      display := Trim(FloatToStrF(WeatherMinTemp,ffNumber,5,1));
      if DataWeatherMin.Caption <> display then
      begin
        DataWeatherMin.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;
      display := 'Min '+FloatToStr(WeatherMinTempRange)+HATemperatureUnits;
      if LabelWeatherMin.Caption <> display then
      begin
        LabelWeatherMin.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Maximum Weather Temperature
//      display := Trim(FloatToStrF(WeatherMaxTemp,ffNumber,5,1)+HATemperatureUnits);
      display := Trim(FloatToStrF(WeatherMaxTemp,ffNumber,5,1));
      if DataWeatherMax.Caption <> display then
      begin
        DataWeatherMax.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;
      display := FloatToStr(WeatherMaxTempRange)+HATemperatureUnits+' Max';
      if LabelWeatherMax.Caption <> display then
      begin
        LabelWeatherMax.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;


      // Minimum Weather Pressure
      display := Trim(FloatToStrF(WeatherMinPressure/10,ffNumber,5,1)+' kPa');
//      display := Trim(FloatToStrF(WeatherMinTPressure,ffGeneral,5,0);
      if DataWeatherMinPressure.Caption <> display then
      begin
        DataWeatherMinPressure.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Maximum Weather Pressure
      display := Trim(FloatToStrF(WeatherMaxPressure/10,ffNumber,5,1)+' kPa');
 //     display := Trim(FloatToStrF(WeatherMaxPressure,ffNumber,5,0));
      if DataWeatherMaxPressure.Caption <> display then
      begin
        DataWeatherMaxPressure.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Humidity
      display := '<div class="d-flex flex-wrap w-100 align-items-center justify-content-center">'+
                   '<div class="w-100 m-auto"><img style="width:80px; height:80px; margin-bottom:-25px;" src="weather-icons-dev/production/fill/svg-static/humidity.svg"></div>'+
                   '<div style="width:60px; text-align: right;" class="TextSM Gray">'+Trim(FloatToStrF(WeatherMinHumidity,ffNumber,5,0))+'</div>'+
                   '<div style="width:60px; text-align: center;">'+Trim(FloatToStrF(WeatherHumidity,ffNumber,5,0))+'</div>'+
                   '<div style="width:60px; text-align: left;" class="TextSM Gray">'+Trim(FloatToStrF(WeatherMaxHumidity,ffNumber,5,0))+'</div>'+
                 '</div>';
      if dataWeatherHumidity.HTML <> display then
      begin
        dataWeatherHumidity.HTML := display;
        UpdateRing3 := True;
      end;


      if (UpdateRing1 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleWeatherTemperature.Tag := circleWeatherTemperature.Tag + 1;

        // Weather Temperature (Ring 1)
        segment_start := Trunc(((WeatherTemperature-WeatherMinTempRange)*280) / (WeatherMaxTempRange-WeatherMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(280-segment_start)+',80';
        Sparkline_Donut(
          55, 5, 290, 290,                                // T, L, W, H
          circleWeatherTemperature,                       // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle4+'","'+CircleB+'","transparent"]',  // Fill
          '220deg',                                       // Rotation
          138,                                            // Inner Radius
          ''                                              // Text
        );

        // Weather Temperature Marker (Ring 1)
        rotation := IntToStr(220+Trunc(((WeatherTemperature-WeatherMinTempRange)*280) / (WeatherMaxTempRange-WeatherMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleWeatherTemperatureMarker,                 // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle4+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;

      if (UpdateRing2 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleWeatherPressure.Tag := circleWeatherPressure.Tag + 1;

        // Pressure (Ring 2)
        segment_start := Trunc(((WeatherPressure-WeatherMinPressureRange)*290) / (WeatherMaxPressureRange-WeatherMinPressureRange));
        segment := IntToStr(segment_start)+','+IntToStr(290-segment_start)+',70';
        Sparkline_Donut(
          65, 15, 270, 270,                               // T, L, W, H
          circleWeatherPressure,                          // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle5+'","'+CircleB+'","transparent"]',  // Fill
          '215deg',                                       // Rotation
          128,                                            // Inner Radius
          ''                                              // Text
        );

        // Pressure Marker (Ring 2)
        rotation := IntToStr(215+Trunc(((WeatherPressure-WeatherMinPressureRange)*290) / (WeatherMaxPressureRange-WeatherMinPressureRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleWeatherPressureMarker,                    // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle5+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;

      if (UpdateRing3 = True) or (tmrSeconds.Tag = 1) then
      begin
        circleWeatherHumidity.Tag := circleClimateHumidity.Tag + 1;

        // Humidity (Ring 3)
        segment_start := Trunc((WeatherHumidity*300) / 100);
        segment := IntToStr(segment_start)+','+IntToStr(300-segment_start)+',60';
        Sparkline_Donut(
          75, 25, 250, 250,                               // T, L, W, H
          circleWeatherHumidity,                          // TWebHTMLDiv
          segment,                                        // Data
          '["'+Circle3+'","'+CircleB+'","transparent"]',  // Fill
          '210deg',                                       // Rotation
          118,                                            // Inner Radius
          ''                                              // Text
        );

        // Humidity Marker (Ring 3)
        rotation := IntToStr(210+Trunc((WeatherHumidity*300) / 100)-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                // T, L, W, H
          circleWeatherHumidityMarker,                    // TWebHTMLDiv
          '4/360',                                        // Data
          '["'+Circle3+'","transparent"]',                // Fill
          rotation+'deg',                                 // Rotation
          113,                                            // Inner Radius
          ''                                              // Text
        );
      end;
    end;



    // Energy Panel //////////////////////////////////////////////////////////////////////////////////

    // Updates once a minute at 45s mark
    if (current_seconds_60 = 45) or (tmrSeconds.Tag = 1) then
    begin

      // Display current energy use
      display := FloatToStrF(EnergyUse/1000.0, ffNumber,5,3)+' kW';
      if dataEnergyUse.Caption <> display
      then dataEnergyUse.Caption := display;


      // Label the Batteries
      if   labelBattery1.Caption <> Battery1Name
      then labelBattery1.Caption := Battery1Name;
      if   labelBattery2.Caption <> Battery2Name
      then labelBattery2.Caption := Battery2Name;
      if   labelBattery3.Caption <> Battery3Name
      then labelBattery3.Caption := Battery3Name;
      if   labelBattery4.Caption <> Battery4Name
      then labelBattery4.Caption := Battery4Name;

      // Battery Status Values
      if   dataBattery1Status.Caption <> Battery1Status
      then dataBattery1Status.Caption := Battery1Status;
      if   dataBattery2Status.Caption <> Battery2Status
      then dataBattery2Status.Caption := Battery2Status;
      if   dataBattery3Status.Caption <> Battery3Status
      then dataBattery3Status.Caption := Battery3Status;
      if   dataBattery4Status.Caption <> Battery4Status
      then dataBattery4Status.Caption := Battery4Status;

      // Battery Values
      if   dataBattery1.Caption <> Battery1
      then dataBattery1.Caption := Battery1;
      if   dataBattery2.Caption <> Battery2
      then dataBattery2.Caption := Battery2;
      if   dataBattery3.Caption <> Battery3
      then dataBattery3.Caption := Battery3;
      if   dataBattery4.Caption <> Battery4
      then dataBattery4.Caption := Battery4;

      // Person Locations
      if   dataPerson1Location.Caption <> Person1Location
      then dataPerson1Location.Caption := Person1Location;
      if   dataPerson2Location.Caption <> Person2Location
      then dataPerson2Location.Caption := Person2Location;

      // Person Photos
      if Person1Photo <> '' then
      begin
        display := '<img style="border-radius:50%; width:50px; height:50px;" src='+editConfigURL.Text+Person1Photo+'>';
        if divPerson1.HTML.Text <> display
        then divPerson1.HTML.Text := display;
      end;
      if Person2Photo <> '' then
      begin
        display := '<img style="border-radius:50%; width:50px; height:50px;" src='+editConfigURL.Text+Person2Photo+'>';
        if divPerson2.HTML.Text <> display
        then divPerson2.HTML.Text := display;
      end;


      // Energy Now (Ring 1)
      Sparkline_Donut(
        55, 5, 290, 290,                                // T, L, W, H
        circleEnergyUse,                                // TWebHTMLDiv
        '1200/1800',                                    // Data
        '["'+Circle2+'","'+CircleB+'"]',                // Fill
        '180deg',                                       // Rotation
        138,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Now Marker (Ring 1)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        circleEnergyUseMarker,                          // TWebHTMLDiv
        '4/360',                                        // Data
        '["'+Circle2+'","transparent"]',                // Fill
        '58deg',                                       // Rotation
        113,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Today (Ring 2)
      Sparkline_Donut(
        65, 15, 270, 270,                               // T, L, W, H
        circleEnergyToday,                              // TWebHTMLDiv
        '1500/1800',                                    // Data
        '["'+Circle1+'","'+CircleB+'"]',                // Fill
        '180deg',                                       // Rotation
        128,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Today Marker (Ring 2)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        circleEnergyTodayMarker,                        // TWebHTMLDiv
        '4/360',                                        // Data
        '["'+Circle1+'","transparent"]',                // Fill
        '118deg',                                       // Rotation
        113,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Yesterday (Ring 3)
      Sparkline_Donut(
        75, 25, 250, 250,                               // T, L, W, H
        circleEnergyYesterday,                          // TWebHTMLDiv
        '600/1800',                                     // Data
        '["'+Circle3+'","'+CircleB+'"]',                // Fill
        '180deg',                                       // Rotation
        118,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Yesterday Marker (Ring 3)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        circleEnergyYesterdayMarker,                    // TWebHTMLDiv
        '4/360',                                        // Data
        '["'+Circle3+'","transparent"]',                // Fill
        '300deg',                                       // Rotation
        113,                                            // Inner Radius
        ''                                              // Text
      );

    end;

  end;



  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Lights Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 16) or (tmrSeconds.Tag = 16) then
  begin

    asm
      var lights = JSON.stringify(this.Lights);
      if (lights !== this.LightsAll) {

        // Save this state
        this.LightsAll = lights;
        divAllLights.innerHTML = '';

        // Stay on this page if someone is fiddling with the lights ;)
        pas.Unit1.Form1.ResetInactivityTimer(null);

        // ALL lights
        var all = [];
        if (this.LightsMode == 1) {
          all = this.Lights.sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        }

        // Only Groups
        else if (this.LightsMode == 2) {
          all = this.Lights.filter(
            function(o) {
              return ((o.entity_id.indexOf("light.") == 0) && ((o.attributes.lights !== undefined) || (o.entity_id.indexOf("_group") !== -1)) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
            }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        }

        // Hide Groups
        else if (this.LightsMode == 3) {
          all = this.Lights.filter(
            function(o) {
              return ((o.entity_id.indexOf("light.") == 0) && ((o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1)) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
            }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        }

        for (var i = 0; i < all.length; i++) {

          // Create a new button
          var lightbtn = document.createElement("div");
          lightbtn.id = 'light-'+all[i].entity_id;
          lightbtn.classList.add('LightButton');

          var lighttxt = document.createElement("div");
          lighttxt.innerHTML = all[i].attributes["friendly_name"].replace(' ','<br />');
          lighttxt.classList.add('LightText');

          // Add margin to buttons on first and last rows
          if (i < 7) {
            lightbtn.style.setProperty("margin-top","18px");
          }
          else if (i >= (Math.trunc(all.length / 7) * 7)) {
            lightbtn.style.setProperty("margin-bottom","18px")
          }

          // If button is "on" we might also be able to set its color
          if (all[i].state == "on") {
            lightbtn.classList.add('LightOn');
            if (all[i].attributes["rgb_color"] !== undefined) {
              lightbtn.style.setProperty("background-color","rgb("+all[i].attributes["rgb_color"][0]+","+all[i].attributes["rgb_color"][1]+","+all[i].attributes["rgb_color"][2]+")");
            }
          }
          // If button is off or disabled, color not usually available
          else if (all[i].state == "off") {
            lightbtn.classList.add('LightOff');
          }
          else {
            lightbtn.classList.add('LightOther');
          }


          // Add the Home Assistant icon as a background element of the button
          var icon = "mdi-lightbulb";
          if (all[i].attributes["icon"] !== undefined) {
            icon = all[i].attributes["icon"].replace(":","-");
          }
          var lighticon = document.createElement("div");
          lighticon.classList.add("LightIcon","mdi",icon);

          // Add button to the page
          divAllLights.appendChild(lightbtn);
          lightbtn.appendChild(lighticon);
          lightbtn.appendChild(lighttxt);

          // Call Delphi function when someone clicks on a button
           lightbtn.addEventListener('click',function(e){pas.Unit1.Form1.LightButtonClicked(e.target.id); e.stopPropagation;});
        }
      }
    end;
  end;



  // When do we want to do this again?

//  console.log('Display: '+FormatDateTime('hh:nn:ss.zzz',ElapsedTime)+' '+FormatDateTime('hh:nn:ss.zzz',Now)+' '+IntToStr(MillisecondsBetween(Now,ElapsedTime))+'ms');

  // Right now, thanks
  if UpdatePending then
  begin
    UpdatePending := False;
    tmrSecondsTimer(nil);
  end;

  // Wait until the next second rolls around
  tmrSeconds.Tag := -1;
  tmrSeconds.Interval :=  1000-MilliSecondOftheSecond(Now);
  tmrSeconds.Enabled := True;

end;

procedure TForm1.tmrStartupTimer(Sender: TObject);
var
  HelpFilename: String;
begin

  // This orchestrates a number of events at startup for
  // a bit more dramatic effect, but also to try and ensure
  // things appear in an orderly fashion

  // We don't want to do anything if Tabulator hasn't
  // been initialized yet.  Normally this doesn't take long.
  if ConfigTableReady = false then exit;

  // Stage 0: Load Configuration
  if (tmrStartup.Tag = 0) then
  begin
    LoadConfiguration;
  end

  // Stage 1: Kick off Home Assistant Connection
  else if (tmrStartup.Tag = 1) then
  begin
    tmrConnect.Enabled := True;
  end

  // Stage 1: Display main TWebPageControl
  else if (tmrStartup.Tag = 2) then
  begin
    pages.Visible := True;
    pages.ElementHandle.style.setProperty('opacity','1');
    pageInit.ElementHandle.style.setProperty('opacity','1');
  end

  // Stage 2: Show title
  else if (tmrStartup.Tag = 3) then
  begin
    divCatheedral.ElementHandle.style.setProperty('opacity','1');
  end

  // Stage 3: Show subtitle
  else if (tmrStartup.Tag = 4) then
  begin
    divInit.ElementHandle.style.setProperty('opacity','1');
  end

  // Stage 4: Show corner icons
  else if (tmrStartup.Tag = 5) then
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

  // Stage 5: Show navigation arrows
  else if (tmrStartup.Tag = 6) then
  begin
    navLeft.Left := 0;
    navRight.Left := PanelWidth - MainNavSize;
  end

  // Stage 6: Add Event Listeners
  else if (tmrStartup.Tag = 7) then
  begin
    asm
      pages.addEventListener('mousemove', function() {
//        console.log('mousemoving');
        pas.Unit1.Form1.ResetInactivityTimer(null);
      });
      const scrolls = document.querySelectorAll('.Scroll');
      scrolls.forEach(scroll => {
        scroll.addEventListener('scroll', function() {
//          console.log('scrolling');
          pas.Unit1.Form1.ResetInactivityTimer(null);
        })
      })
    end
  end

  // Stage 8: Load Help Content
  else if (tmrStartup.Tag = 8) then
  begin
    asm
      const helpcontent = document.querySelectorAll('.Help');
      helpcontent.forEach(help => {
        pas.Unit1.Form1.LoadHelp(help.id);
      });
    end;
  end

  // All done with Startup
  else if (tmrStartup.Tag = 9) then
  begin
    tmrSecondsTimer(nil);  // No delay
    tmrSeconds.Enabled := True;
  end

  // Show the Home page if connected,
  // or the Configuration page if not
  else if (tmrStartup.Tag >= 10) then
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
  tmrSeconds.Tag := EndPage;
  tmrSecondsTimer(nil);


  // Cancel Change Mode
  if ChangeMode
  then btnChangeClick(Sender);


  if (StartPage <> EndPage)
  then pages.ActivePage.ElementHandle.style.setProperty('opacity','1');


  // Update alternate icons


  // Help button is either Hand or Back depending on whether on Help page or not
  if pos('Help',pages.ActivePage.ElementID) > 0 then
  begin
    pages.ActivePage.Tag := StartPage;
    asm
      btnHelp.firstElementChild.style.setProperty('opacity','0');
      btnHelp.lastElementChild.style.setProperty('opacity','1');
    end;
  end
  else
  begin
    asm
      btnHelp.firstElementChild.style.setProperty('opacity','1');
      btnHelp.lastElementChild.style.setProperty('opacity','0');
    end;
  end;

  // Update Change Button
  if ((pages.TabIndex >= 5) and (pages.TabIndex <= 10)) or (pages.TabIndex = 0) then
  begin
    asm
      btnChange.firstElementChild.style.setProperty('opacity','0');
      btnChange.lastElementChild.style.setProperty('opacity','1');
    end;
  end
  else
  begin
    asm
      btnChange.firstElementChild.style.setProperty('opacity','1');
      btnChange.lastElementChild.style.setProperty('opacity','0');
    end;
  end;

  // Home button on Home Page is bolt if connnected or
  if dataConfigSTATUS.Caption = 'Connected'
  then ShowConnected
  else ShowDisconnected;

  // Configuration button on Configuration Page is Power On/Off otherwise it is a Gear
  if EndPage = 0 then
  begin
    asm
      btnConfiguration.firstElementChild.style.setProperty('opacity','0');
      btnConfiguration.lastElementChild.style.setProperty('opacity','1');
    end;
  end
  else
  begin
    asm
      btnConfiguration.firstElementChild.style.setProperty('opacity','1');
      btnConfiguration.lastElementChild.style.setProperty('opacity','0');
    end;
  end;


  // Continue Shutdown
  if EndPage = 18 then
  begin

    // Reverse opening animation
    btnHelp.Left := -MainButtonSize;
    btnChange.Top := -MainButtonSize;
    btnHome.Left := PanelWidth + MainButtonSize;
    btnConfiguration.Top := PanelHeight + MainButtonSize;
    Navleft.Left := -MainNavSize;
    NavRight.Left := PanelWidth + MainNavSize;

    labelShutdown.ElementHandle.style.setProperty('opacity','0');
    tmrExit.Enabled := True;
  end;

  // Refresh Custom URL after each hour
  CustomRefresh := FormatDateTime('yyyymmddhh',Now);
  if (pages.TabIndex =  7) and (CustomPage1Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex =  8) and (CustomPage2Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex =  9) and (CustomPage3Refresh <> CustomRefresh) then btnChangeClick(nil);
  if (pages.TabIndex = 10) and (CustomPage4Refresh <> CustomRefresh) then btnChangeClick(nil);


  if (StartPage = 0) and (EndPage <> 0) then
  begin
    if DesktopMode then
    begin
      Form1.BorderStyle := bsNoneBorder;
      if DebugMode then
      begin
        Form1.Width := PanelWidth;
        Form1.Height := PanelHeight + 20;
      end
      else
      begin
        Form1.Width := PanelWidth;
        Form1.Height := PanelHeight;
      end;
    end;
  end;

  if (EndPage = 0) and (DesktopMode = True) then
  begin
    Form1.BorderStyle := bsDialogBorder;
    Form1.Width := 1286;
    Form1.Height := 428;
  end;


  ResetInactivityTimer(Sender);
end;

procedure TForm1.UpdateNow;
begin
  tmrSeconds.Tag := pages.TabIndex;
  tmrSecondsTimer(nil);
end;

procedure TForm1.btnLightsAllOnClick(Sender: TObject);
var
  lights: Array of String;
  i: integer;
begin
  // Turn on all the lights that are off.
  // This processes the individual lights, excluding light groups
  asm
    lights = this.Lights.filter(
      function(o) {
        return ((o.entity_id.indexOf("light.") == 0) && (o.state == "off") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
      }).map( obj => obj.entity_id ).sort();;
//    console.log(lights);
  end;

  for i := 0 to length(lights) do
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+lights[i]+'"}}');
  end;
end;

procedure TForm1.btnLightsAllOffClick(Sender: TObject);
var
  lights: Array of String;
  i: integer;
begin
  // Turn on all the lights that are off.
  // This processes the individual lights, excluding light groups
  asm
    lights = this.Lights.filter(
      function(o) {
        return ((o.entity_id.indexOf("light.") == 0) && (o.state == "on") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
      }).map( obj => obj.entity_id ).sort();;
//    console.log(lights);
  end;

  for i := 0 to length(lights) do
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+lights[i]+'"}}');
  end;
end;

procedure TForm1.btnLightsGroupsClick(Sender: TObject);
begin
  if LightsMode <> 2 then
  begin
    tmrLights.Tag := 2;
    divAllLights.ElementHandle.style.setProperty('opacity','0');
    tmrLights.Enabled := True;
  end;
end;

procedure TForm1.btnLightsNoGroupsClick(Sender: TObject);
begin
  if LightsMode <> 3 then
  begin
    tmrLights.Tag := 3;
    divAllLights.ElementHandle.style.setProperty('opacity','0');
    tmrLights.Enabled := True;
  end;
end;

procedure TForm1.btnLioghtsShowAllClick(Sender: TObject);
begin
  if LightsMode <> 1 then
  begin
    tmrLights.Tag := 1;
    divAllLights.ElementHandle.style.setProperty('opacity','0');
    tmrLights.Enabled := True;
  end;
end;

procedure TForm1.divHomeLightsCoverClick(Sender: TObject);
begin
  // Home Page -> Lights
  SwitchPages(1,16);
end;

procedure TForm1.btnChangeClick(Sender: TObject);
begin

  // If displaying Custom URL then reload <iframe> page
  // 7 = Custom1, 8 = Custom2, 9 = Custom3, 10 = Custom4
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
  end


  // Configuration Information
  // 0 = Configuration, 5 = Configuration Sensors, 6 = Configuration Information
  else if (pages.TabIndex = 0) or (pages.TabIndex = 5) or (pages.TabIndex = 6) then
  begin
    window.location.reload(true);
  end


  // Lights Change Mode
  else if (pages.Tabindex = 16) and (ChangeMode = False) then
  begin
    ChangeMode := True;
    asm
      btnChange.firstElementChild.classList.add('text-warning','fa-beat');
      btnChange.style.setProperty('opacity','1');
    end;
  end

  // Cancel Change Mode regardless of what was being changed
  else if ChangeMode then
  begin
      ChangeMode := False;
      asm
        btnChange.firstElementChild.classList.remove('text-warning','fa-beat');
        btnChange.style.setProperty('opacity','0.25');
      end;
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
    // Continues in SwitchPage event
    SwitchPages(pages.TabIndex, 18);
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
      {"id":  9, "feature":"Min Climate Temp"     , "example":"eg: sensor.climate_minimum_temperature" },
      {"id": 10, "feature":"Max Climate Temp"     , "example":"eg: sensor.climate_maximum_temperature" },
      {"id": 11, "feature":"Min Climate Humidity" , "example":"eg: sensor.climate_minimum_humidity" },
      {"id": 12, "feature":"Max Climate Humidity" , "example":"eg: sensor.climate_maximum_humidity" },
      {"id": 13, "feature":"Weather Sensor"       , "example":"eg: weather.city_forecast" },
      {"id": 14, "feature":"Min Weather Temp"     , "example":"eg: sensor.weather.minimum_temperature" },
      {"id": 15, "feature":"Max Weather Temp"     , "example":"eg: sensor.weather.maximum_temperature" },
      {"id": 16, "feature":"Min Weather Pressure" , "example":"eg: sensor.weather.minimum_pressure" },
      {"id": 17, "feature":"Max Weather Pressure" , "example":"eg: sensor.weather.maximum_pressure" },
      {"id": 18, "feature":"Min Weather Humidity" , "example":"eg: sensor.weather.minimum_humidity" },
      {"id": 19, "feature":"Max Weather Humidity" , "example":"eg: sensor.weather.maximum_humidity" },
      {"id": 20, "feature":"UV Index"             , "example":"eg: sensor.city_uv_index" },
      {"id": 21, "feature":"Air Quality Index"    , "example":"eg: sensor.city_aqhi" },
      {"id": 22, "feature":"Device 1"             , "example":"eg: device_tracker.someone_device" },
      {"id": 23, "feature":"Device 2"             , "example":"eg: device_tracker.someone_device" },
      {"id": 24, "feature":"Device 3"             , "example":"eg: device_tracker.someone_device" },
      {"id": 25, "feature":"Device 4"             , "example":"eg: device_tracker.someone_device" },
      {"id": 26, "feature":"Person 1"             , "example":"eg: person.someone" },
      {"id": 27, "feature":"Person 2"             , "example":"eg: person.someone" }
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
        { title: "Feature", field: "feature", width: 225 },
        { title: "Entity", field: "entity_id",  editor: "list", editorParams:{
            valuesLookup:function(cell, filterTerm) {
              return pas.Unit1.Form1.HAEntities
            },
            emptyValue: "",
            autocomplete: true,
            verticalNavigation: "hybrid",
            freetext: true,
            clearable: true,
            placeholderEmpty: '<span class="text-white">No Matching Home Assistant Entities Found</span>',
            elementAttributes: {
              spellcheck: false
            }
        }},
        { title: "Example", field: "example", width: 400 },
      ]
    });
    this.tabConfigSensors.on("tableBuilt", function(){
      pas.Unit1.Form1.ConfigTableReady = true;
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