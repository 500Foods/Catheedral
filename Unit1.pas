unit Unit1;

interface

uses
  System.SysUtils, System.Classes, System.Types, System.DateUtils, JS, Web, WEBLib.Graphics, WEBLib.Controls, jsdelphisystem, System.Math, System.StrUtils,
  WEBLib.Forms, WEBLib.Miletus, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls,
  WEBLib.StdCtrls, WEBLib.ComCtrls, WEBLib.WebCtrls, WEBLib.Storage,
  WEBLib.ExtCtrls, WEBLib.WebSocketClient, WEBLib.DropDown;

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
    tmrSeconds: TWebTimer;
    tmrConnect: TWebTimer;
    HAWebSocket: TWebSocketClient;
    divClock: TWebHTMLDiv;
    labelDate: TWebLabel;
    labelTime: TWebLabel;
    labelDay: TWebLabel;
    tmrInactivity: TWebTimer;
    ringSeconds: TWebHTMLDiv;
    ringMinutes: TWebHTMLDiv;
    ringHours: TWebHTMLDiv;
    ringDawnDusk: TWebHTMLDiv;
    ringRiseSet: TWebHTMLDiv;
    ringMinutesMarker: TWebHTMLDiv;
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
    ringClimateTemperature: TWebHTMLDiv;
    ringSetPoint: TWebHTMLDiv;
    ringClimateHumidity: TWebHTMLDiv;
    ringClimateTemperatureMarker: TWebHTMLDiv;
    ringSetPointMarker: TWebHTMLDiv;
    ringClimateHumidityMarker: TWebHTMLDiv;
    ringSecondsMarker: TWebHTMLDiv;
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
    divSensors: TWebHTMLDiv;
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
    ringHoursMarker: TWebHTMLDiv;
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
    ringWeatherHumidity: TWebHTMLDiv;
    ringWeatherHumidityMarker: TWebHTMLDiv;
    labelWeatherMin: TWebLabel;
    labelWeatherHumidity: TWebLabel;
    labelWeatherMax: TWebLabel;
    dataWeatherHumidity: TWebLabel;
    dataWeatherTemperature: TWebLabel;
    dataWeatherMin: TWebLabel;
    dataWeatherMax: TWebLabel;
    ringWeatherTemperature: TWebHTMLDiv;
    ringWeatherTemperatureMarker: TWebHTMLDiv;
    dataWeatherMinPressure: TWebLabel;
    dataWeatherMaxPressure: TWebLabel;
    ringWeatherPressure: TWebHTMLDiv;
    ringWeatherPressureMarker: TWebHTMLDiv;
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
    ringEnergyUse: TWebHTMLDiv;
    ringEnergyUseMarker: TWebHTMLDiv;
    divPerson1: TWebHTMLDiv;
    divPerson2: TWebHTMLDiv;
    dataPerson1Location: TWebLabel;
    dataPerson2Location: TWebLabel;
    ringEnergyToday: TWebHTMLDiv;
    ringEnergyTodayMarker: TWebHTMLDiv;
    ringEnergyYesterday: TWebHTMLDiv;
    ringEnergyYesterdayMarker: TWebHTMLDiv;
    tmrExit: TWebTimer;
    pageExit: TWebTabSheet;
    labelShutdown: TWebLabel;
    tmrLights: TWebTimer;
    HelpLights: TWebHTMLDiv;
    divSplashImage: TWebHTMLDiv;
    divExitImage: TWebHTMLDiv;
    divLightSwitch: TWebHTMLDiv;
    divSLLightSwitch: TWebHTMLDiv;
    divLightDimmer: TWebHTMLDiv;
    divLightColor: TWebHTMLDiv;
    WebHTMLDiv4: TWebHTMLDiv;
    tmrHidePopups: TWebTimer;
    labelLightSwitch: TWebHTMLDiv;
    labelLightDimmer: TWebHTMLDiv;
    divSLLightRange: TWebHTMLDiv;
    divDimmerThumb: TWebHTMLDiv;
    labelDimmerValue: TWebHTMLDiv;
    labelLightColor: TWebHTMLDiv;
    btnSwatch0: TWebButton;
    btnSwatch1: TWebButton;
    btnSwatch5: TWebButton;
    btnSwatch2: TWebButton;
    btnSwatch4: TWebButton;
    btnSwatch3: TWebButton;
    btnSwatch6: TWebButton;
    btnSwatch7: TWebButton;
    btnSwatch8: TWebButton;
    btnSwatch9: TWebButton;
    btnSwatch10: TWebButton;
    btnSwatch11: TWebButton;
    btnSwatch12: TWebButton;
    btnSwatch18: TWebButton;
    btnSwatch19: TWebButton;
    btnSwatch13: TWebButton;
    btnSwatch14: TWebButton;
    btnSwatch20: TWebButton;
    btnSwatch21: TWebButton;
    btnSwatch15: TWebButton;
    btnSwatch16: TWebButton;
    btnSwatch22: TWebButton;
    btnSwatch17: TWebButton;
    btnSwatch23: TWebButton;
    pageEnergy: TWebTabSheet;
    pageHelpEnergy: TWebTabSheet;
    HelpEnergy: TWebHTMLDiv;
    WebButton1: TWebButton;
    WebButton2: TWebButton;
    WebButton3: TWebButton;
    WebButton4: TWebButton;
    WebButton5: TWebButton;
    pageWeather: TWebTabSheet;
    pageHelpWeather: TWebTabSheet;
    HelpWeather: TWebHTMLDiv;
    WebLabel2: TWebLabel;
    pageRadar: TWebTabSheet;
    divRadar: TWebHTMLDiv;
    btnRadar: TWebButton;
    btnSatellite: TWebButton;
    pageSatellite: TWebTabSheet;
    divSatellite: TWebHTMLDiv;
    divWx: TWebHTMLDiv;
    divWxHourly: TWebHTMLDiv;
    divWxDaily: TWebHTMLDiv;
    divWxText: TWebHTMLDiv;
    divWxD1: TWebHTMLDiv;
    divWxD2: TWebHTMLDiv;
    divWxD3: TWebHTMLDiv;
    divWxD4: TWebHTMLDiv;
    divWxD5: TWebHTMLDiv;
    divWxD6: TWebHTMLDiv;
    divWxH1: TWebHTMLDiv;
    divWxH2: TWebHTMLDiv;
    divWxH3: TWebHTMLDiv;
    divWxH4: TWebHTMLDiv;
    divWxH5: TWebHTMLDiv;
    divWxH6: TWebHTMLDiv;
    divWeatherCover: TWebHTMLDiv;
    pagePerson: TWebTabSheet;
    pageHelpPerson: TWebTabSheet;
    divPersonPhoto: TWebHTMLDiv;
    divLocations: TWebHTMLDiv;
    divPersonInfo: TWebHTMLDiv;
    divLocationMap: TWebHTMLDiv;
    tmrRefresh: TWebTimer;
    HelpPerson: TWebHTMLDiv;
    tmrCapture: TWebTimer;
    dataConfigVERSION: TWebLabel;
    btnRecord: TWebButton;
    divConfigRecordRate: TWebHTMLDiv;
    editConfigRecordRate: TWebEdit;
    btnListRecord: TWebButton;
    divPlaybackRate: TWebHTMLDiv;
    editConfigPlaybackRate: TWebEdit;
    btnListPlayback: TWebButton;
    btnPlayback: TWebButton;
    listRecord: TWebListBox;
    listPlayback: TWebListBox;
    divScenes: TWebHTMLDiv;
    procedure tmrSecondsTimer(Sender: TObject);
    procedure editConfigChange(Sender: TObject);
    [async] procedure LoadConfiguration;
    procedure navLeftClick(Sender: TObject);
    procedure tmrConnectTimer(Sender: TObject);
    procedure dataConfigSTATUSClick(Sender: TObject);
    [async] procedure SwitchPages(StartPage: Integer; EndPage: Integer);
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
    procedure LightButtonSwitched(light: String);
    procedure LightButtonDimmed(light: String; brightness: Integer);
    procedure LightButtonColor(light: String; hsv: String);
    procedure LightButtonClicked(light: String);
    procedure SceneButtonClicked(SceneID: String);
    procedure btnLioghtsShowAllClick(Sender: TObject);
    procedure btnLightsGroupsClick(Sender: TObject);
    procedure btnLightsNoGroupsClick(Sender: TObject);
    procedure btnLightsAllOnClick(Sender: TObject);
    procedure tmrExitTimer(Sender: TObject);
    procedure tmrLightsTimer(Sender: TObject);
    procedure LoadHelp(HelpDIV: String);
    procedure HidePopups;
    procedure tmrHidePopupsTimer(Sender: TObject);
    procedure divBackgroundClick(Sender: TObject);
    procedure MiletusFormClick(Sender: TObject);
    procedure ColorSwatchSelected(Sender: TObject);
    procedure dataEnergyUseClick(Sender: TObject);
    procedure labelTimeClick(Sender: TObject);
    procedure dataHomeTemperatureClick(Sender: TObject);
    procedure btnRadarClick(Sender: TObject);
    procedure btnSatelliteClick(Sender: TObject);
    procedure divWeatherCoverClick(Sender: TObject);
    function GetWeatherIcon(var Condition: String): String;
    procedure DrawWeather(Element: TWebHTMLDiv; WeatherData: JSValue; ShowTime:Boolean);
    procedure DisplayPerson;
    procedure divPerson1Click(Sender: TObject);
    procedure divPerson2Click(Sender: TObject);
    procedure tmrRefreshTimer(Sender: TObject);
    procedure pageWeatherClick(Sender: TObject);
    procedure tmrCaptureTimer(Sender: TObject);
    procedure btnListRecordClick(Sender: TObject);
    procedure btnListPlaybackClick(Sender: TObject);
    procedure listRecordChange(Sender: TObject);
    procedure listPlaybackChange(Sender: TObject);
    procedure HAWebSocketMessageReceived(Sender: TObject; AMessage: string);
    [async] procedure btnRecordClick(Sender: TObject);
    [async] procedure btnPlaybackClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    // Application State
    ChangeMode: Boolean;
    DebugMode: Boolean;
    DesktopMode: Boolean;
    PopupVisible: Boolean;

    ConfigurationLoaded: Boolean;
    LastRefresh: TDateTime;
    UpdatePending: Boolean;

    Features: Integer;

    // Configuration - Tabulator
    tabSensors: JSValue;
    ConfigTableReady: Boolean;

    // Styles?
    PanelWidth: Integer;
    PanelHeight: Integer;
    MainButtonSize: Integer;
    MainNavSize: Integer;
    MainButtonPad: Integer;

    // Home Assistant Information
    HASystemName :String;
    HATimeZone: String;
    HAID: Integer;
    HAGetConfig: Integer;
    HAGetStates: Integer;
    HAGetEvents: Integer;
    HAGetPeople: Integer;
    HaGetScene: Integer;
    HAStates: JSValue;
    HAEntities: JSValue;
    HALoadConfig: Boolean;
    HAStatesLoaded: Boolean;
    HAPeople: JSValue;
    HAZones: JSValue;
    HAScenes: JSValue;
    HAScenesLoaded: JSValue;

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
    MoonState: String;
    MoonIcon: String;
    MoonTitle: String;

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
    WeatherSensor1: String;
    WeatherSensor2: String;
    WeatherMinTempSensor: String;
    WeatherMaxTempSensor: String;
    WeatherMinPressureSensor: String;
    WeatherMaxPressureSensor: String;
    WeatherMinHumiditySensor: String;
    WeatherMaxHumiditySensor: String;
    WeatherTendencySensor: String;
    WeatherUVSensor: String;
    WeatherAQHISensor: String;
    WeatherRadarLink: String;
    WeatherSatelliteLink: String;
    WeatherSummarySensor: String;
    WeatherAdvisorySensor: String;

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
    WeatherTendency: String;
    WeatherUV: String;
    WeatherAQHI: String;
    WeatherForecast1: JSValue;
    WeatherForecast2: JSValue;
    WeatherSummary: String;
    WeatherAdvisory: String;
    WeatherPrecipUnits: String;
    WeatherAttribution: String;

    // People + Energy Panel
    tabLocations: JSValue;
    LocationMap: JSValue;
    PersonMarker: JSValue;
    PersonCircle: JSValue;
    CurrentPerson: Integer;
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

    EnergySensor: String;
    EnergyUse: Integer;

    // Lights Page
    LightsOn: Integer;
    LightsOff: Integer;
    LightsCount: Integer;
    Lights: JSValue;
    LightGroups: JSValue;
    LightsMode: Integer;
    LightsAll: string;
    CurrentLightID: String;
    LightsWhichSwitch: Integer;
    SwatchColors: Array[0..23] of String;
    SwatchNames: Array[0..23] of String;

    // Scenes Page
    PositionScenes: Array[0..71] of TPoint;
    ZCounter: Integer;
    SceneState: JSValue;


    // Custom Pages
    CustomPage1URL: String;
    CustomPage2URL: String;
    CustomPage3URL: String;
    CustomPage4URL: String;

    CustomPage1Refresh: String;
    CustomPage2Refresh: String;
    CustomPage3Refresh: String;
    CustomPage4Refresh: String;


    // For capturing web page
    CaptureData: JSValue;
    PlayBackRate: Double;

    procedure StopLinkerRemoval(P: Pointer);
    procedure PreventCompilerHint(I: integer); overload;
    procedure PreventCompilerHint(S: string); overload;
    procedure PreventCompilerHint(J: JSValue); overload;
    procedure PreventCompilerHint(H: TJSHTMLElement); overload;
  end;
var
  Form1: TForm1;

  AppStarted: TDateTime;
  AppVersion: String;
  AppRelease: String;
  AppBackground: String;

implementation

{$R *.dfm}

procedure TForm1.SceneButtonClicked(SceneID: String);
begin
  if ChangeMode = False then
  begin
    // Nothing to do really but send the request
    HAID := HAID + 1;
    HAGetScene := HAID;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "scene", "service": "turn_on", "target": {"entity_id":"'+SceneID+'"}}');
  end;
end;

procedure TForm1.SetupJavaScriptFunctions;
var
  i: integer;
begin

  // Initialize capture
  asm
    pas.Unit1.Form1.CaptureData = [];
  end;

  // Initialize Swatches
  i := 0;
  while i < 24 do
  begin
    SwatchColors[i] := 'maroon';
    SwatchNames[i] := 'Maroon';
    i := i + 1;
  end;

  asm
    // Global Sleep function :)
    window.sleep = async function(msecs) {return new Promise((resolve) => setTimeout(resolve, msecs)); }

    // console.image function
    function getBox(width, height) {
      return {
        string: "+",
        style: "font-size: 1px; padding: " + Math.floor(height/4) + "px " + Math.floor(width/2) + "px; line-height: " + height/2 + "px;"
    }}

    console.image = function(url, scale) {
      scale = scale || 1;
      var img = new Image();
      img.onload = function() {
        var dim = getBox(this.width * scale, this.height * scale);
        console.log("%c" + dim.string, dim.style + "background: url(" + url + "); background-size: " + (this.width * scale) + "px " + (this.height * scale) + "px; color: transparent;");
      };
      img.src = url;
    }

    // Load Swatch information from CSS
    var GetSwatch = function(SwatchNum) {
      const here = pas.Unit1.Form1;
      here.SwatchColors[SwatchNum] = window.getComputedStyle(document.documentElement).getPropertyValue('--Swatch-'+SwatchNum);
      here.SwatchNames[SwatchNum]  = window.getComputedStyle(document.documentElement).getPropertyValue('--Swatch-Name-'+SwatchNum).replace(/[''""]+/g, '');
      var swatch = document.getElementById('btnSwatch'+SwatchNum);
      swatch.style.setProperty('background-color', here.SwatchColors[SwatchNum]);
      swatch.setAttribute('title', here.SwatchNames[SwatchNum]);
    }
    for (var i = 0; i <= 23; i++) {
      GetSwatch(i);
    }


//    // Convert an image URL into a dataurl
//    window.ImageToDataURL = function(src, callback){
//      var image = new Image();
//      image.crossOrigin = 'Anonymous';
//      image.onload = function(){
//        var canvas = document.createElement('canvas');
//        var context = canvas.getContext('2d');
//        canvas.height = this.naturalHeight;
//        canvas.width = this.naturalWidth;
//        context.drawImage(this, 0, 0);
//        var dataURL = canvas.toDataURL('image/jpeg');
//        callback(dataURL);
//     };
//     image.src = src;
//    }

    // Don't have any sensors yet
    window.SensorList = [];


    // This is what we're plucking out of the Home Assistant data streams
    window.UpdateSensorList = function() {

      const here = pas.Unit1.Form1;
      const table = here.tabSensors;

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
      here.WeatherSensor1 = table.getRow(13).getCell('entity_id').getValue();
      here.WeatherMinTempSensor = table.getRow(14).getCell('entity_id').getValue();
      here.WeatherMaxTempSensor = table.getRow(15).getCell('entity_id').getValue();
      here.WeatherMinPressureSensor = table.getRow(16).getCell('entity_id').getValue();
      here.WeatherMaxPressureSensor = table.getRow(17).getCell('entity_id').getValue();
      here.WeatherMinHumiditySensor = table.getRow(18).getCell('entity_id').getValue();
      here.WeatherMaxHumiditySensor = table.getRow(19).getCell('entity_id').getValue();
      here.WeatherTendencySensor = table.getRow(29).getCell('entity_id').getValue();
      here.WeatherUVSensor = table.getRow(20).getCell('entity_id').getValue();
      here.WeatherAQHISensor = table.getRow(21).getCell('entity_id').getValue();
      here.WeatherRadarLink = table.getRow(30).getCell('entity_id').getValue();
      here.WeatherSatelliteLink = table.getRow(31).getCell('entity_id').getValue();
      here.WeatherSensor2 = table.getRow(32).getCell('entity_id').getValue();
      here.WeatherSummarySensor = table.getRow(33).getCell('entity_id').getValue();
      here.WeatherAdvisorySensor = table.getRow(34).getCell('entity_id').getValue();

      // Energy Panel
      here.Battery1Sensor = table.getRow(22).getCell('entity_id').getValue();
      here.Battery2Sensor = table.getRow(23).getCell('entity_id').getValue();
      here.Battery3Sensor = table.getRow(24).getCell('entity_id').getValue();
      here.Battery4Sensor = table.getRow(25).getCell('entity_id').getValue();
      here.Person1Sensor = table.getRow(26).getCell('entity_id').getValue();
      here.Person2Sensor = table.getRow(27).getCell('entity_id').getValue();
      here.EnergySensor = table.getRow(28).getCell('entity_id').getValue();

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
        here.WeatherSensor1,
        here.WeatherSensor2,
        here.WeatherMinTempSensor,
        here.WeatherMaxTempSensor,
        here.WeatherMinPressureSensor,
        here.WeatherMaxPressureSensor,
        here.WeatherMinHumiditySensor,
        here.WeatherMaxHumiditySensor,
        here.WeatherTendencySensor,
        here.WeatherUVSensor,
        here.WeatherAQHISensor,
        here.WeatherSummarySensor,
        here.WeatherAdvisorySensor,

        // Energy Panel
        here.Person1Sensor,
        here.Person2Sensor,
        here.Battery1Sensor,
        here.Battery2Sensor,
        here.Battery3Sensor,
        here.Battery4Sensor,
        here.EnergySensor
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

    window.rgbFromHSV = function(h,s,v) {
      /**
       * I: An array of three elements hue (h) ? [0, 360], and saturation (s) and value (v) which are ? [0, 1]
       * O: An array of red (r), green (g), blue (b), all ? [0, 255]
       * Derived from https://en.wikipedia.org/wiki/HSL_and_HSV
       * This stackexchange was the clearest derivation I found to reimplement https://cs.stackexchange.com/questions/64549/convert-hsv-to-rgb-colors
      */

      const hprime = h / 60;
      const c = v * s;
      const x = c * (1 - Math.abs(hprime % 2 - 1));
      const m = v - c;
      let r, g, b;
      if (!hprime) {r = 0; g = 0; b = 0; }
      if (hprime >= 0 && hprime < 1) { r = c; g = x; b = 0}
      if (hprime >= 1 && hprime < 2) { r = x; g = c; b = 0}
      if (hprime >= 2 && hprime < 3) { r = 0; g = c; b = x}
      if (hprime >= 3 && hprime < 4) { r = 0; g = x; b = c}
      if (hprime >= 4 && hprime < 5) { r = x; g = 0; b = c}
      if (hprime >= 5 && hprime < 6) { r = c; g = 0; b = x}

      r = Math.round( (r + m)* 255);
      g = Math.round( (g + m)* 255);
      b = Math.round( (b + m)* 255);

      return [r, g, b]
    }
  end;

  // InteractJS Code for moving elements
  asm

    // Drag Anywhere
    var This = this;
    interact('.dragdrop')
      .draggable({
        inertia: true,
        modifiers: [
          interact.modifiers.restrictRect({
            restriction: 'parent',
            endOnly: true
          })
        ],
        onstart: function(event) {
          This.ZCounter += 1;
          event.target.style.setProperty('z-index',This.ZCounter);
          event.target.style.removeProperty('animation-name');
          This.ResetInactivityTimer(null);
        },
        onend: async function(event) {
          var PosX = (parseFloat(event.target.style.left.replace('px','')) + parseFloat(event.target.getAttribute('data-x')));
          var PosY = (parseFloat(event.target.style.top.replace('px','')) + parseFloat(event.target.getAttribute('data-y')));
          event.target.style.top = PosY+'px';
          event.target.style.left = PosX+'px';
          event.target.style.removeProperty('transform');
          event.target.removeAttribute('data-x');
          event.target.removeAttribute('data-y');

          // Find nearest Position
          var minDistance = 999999;
          var NewX = 0
          var NewY = 0;
          var dist = 0;
          for (var i = 0; i < This.PositionScenes.length; i++) {
            dist = Math.sqrt(Math.pow(This.PositionScenes[i].x - PosX,2) + Math.pow(This.PositionScenes[i].y - PosY,2));
            if (dist < minDistance) {
              minDistance = dist;
              NewX = This.PositionScenes[i].x;
              NewY = This.PositionScenes[i].y;
            }
          }

          await sleep(50);
          event.target.style.setProperty('transition','top 0.2s linear, left 0.2s linear');
          event.target.style.top = NewY + 'px';
          event.target.style.left = NewX + 'px';
          This.SceneState[event.target.getAttribute("sceneid")] = [NewX,NewY];
          setTimeout(function(){
            event.target.style.setProperty('animation-name','jigglysmall');
            event.target.style.removeProperty('transition');
          },200);
        },
        listeners: {
          move: dragMoveListener
        }
      });

      function dragMoveListener (event) {
      var target = event.target
      var x = (parseFloat(target.getAttribute('data-x')) || 0) + event.dx
      var y = (parseFloat(target.getAttribute('data-y')) || 0) + event.dy
      target.style.transform = 'translate(' + x + 'px, ' + y + 'px)'
      target.setAttribute('data-x', x)
      target.setAttribute('data-y', y)
    };
    window.dragMoveListener = dragMoveListener
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
  ChartID: String;
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
  ChartID := Chart.ElementID;
  asm
    document.getElementById(ChartID).replaceChildren();
  end;
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

  PreventCompilerHint(ChartID);
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
      this.ClimateName = window.CapWords(State.attributes.friendly_name || 'N/A').replace('Thermostat','').trim();
      this.ClimateMin = parseInt(State.attributes.min_temp);
      this.ClimateMax = parseInt(State.attributes.max_temp);
      this.ClimateHumidity = parseInt(State.attributes.current_humidity);
      this.ClimateCurrent = parseInt(State.attributes.current_temperature);
      this.ClimateSetPoint = parseInt(State.attributes.temperature);
      this.ClimateState = window.CapWords(State.state || 'N/A').trim();
      this.ClimateMode = window.CapWords(State.attributes.hvac_action || 'N/A').trim();
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


  else if (Entity = WeatherSensor1) then
  begin
    asm
      this.WeatherTemperature = parseFloat(State.attributes.temperature) || 0;
      this.WeatherHumidity = parseFloat(State.attributes.humidity) || 0;
      this.WeatherPressure = parseFloat(State.attributes.pressure) || 0;
      this.WeatherPressureUnit = State.attributes.pressure_unit || 'kPa';
      if (this.WeatherPressureUnit == 'hPa') { this.WeatherPressure = this.WeatherPressure / 10;}
      this.WeatherCondition = State.state || 'N/A';
      this.WeatherAttribution = State.attributes.attribution;

      if ((Entity == this.WeatherSensor1) && (State.attributes.forecast !== undefined)) {
        this.WeatherForecast1 = State.attributes.forecast;
        this.WeatherPrecipUnits = State.attributes.precipitation_unit;
      }

      var wind_bearing = parseInt(State.attributes.wind_bearing) || 0;
      var wind_heading = Math.round(((wind_bearing %= 360) < 0 ? wind_bearing + 360 : wind_bearing) / 22.5) % 16;
      var headings = ['N','NNE','NE','ENE','E','ESE','SE','SSE','S','SWS','SW','WSW','W','WNW','NW','NWW'];
      this.WeatherWind = parseInt(State.attributes.wind_speed)+' '+State.attributes.wind_speed_unit+' '+headings[wind_heading];
    end;

    WeatherIcon := GetWeatherIcon(WeatherCondition);

  end
  else if (Entity = WeatherSensor2) then
  begin
    asm
      if (State.attributes.forecast !== undefined) {
        this.WeatherForecast2 = State.attributes.forecast;
        this.WeatherPrecipUnits = State.attributes.precipitation_unit;
      }
    end;
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
        this.Person1Name = window.CapWords(State.attributes["friendly_name"] || 'N/A');
      }
      if (State.attributes["entity_picture"] !== undefined) {
        this.Person1Photo = State.attributes["entity_picture"];
      }
      if (State.state !== undefined) {
        this.Person1Location = window.CapWords((State.state || 'N/A').replace('_',' '));
      }
    end;
    if Uppercase(Person1Location) = 'STATIONARY' then Person1Location := 'Somewhere';
    if Uppercase(Person1Location) = 'NOT HOME' then Person1Location := 'Elsewhere';
  end
  else if (Entity = Person2Sensor) then
  begin
    asm
      if (State.attributes["friendly_name"] !== undefined) {
        this.Person2Name = window.CapWords(State.attributes["friendly_name"] || 'N/A');
      }
      if (State.attributes["entity_picture"] !== undefined) {
        this.Person2Photo = State.attributes["entity_picture"];
      }
      if (State.state !== undefined) {
        this.Person2Location = window.CapWords((State.state || 'N/A').replace('_',' '));
      }
    end;
    if Uppercase(Person2Location) = 'STATIONARY' then Person2Location := 'Somewhere';
    if Uppercase(Person2Location) = 'NOT HOME' then Person2Location := 'Elsewhere';
  end

  else if (Entity = MoonSensor) then
  begin
    asm
      this.MoonState = State.attributes.icon;
    end;
    MoonIcon := '<img width="70" height="70" src="weather-icons-dev/production/fill/svg-static/moon'+StringReplace(StringReplace(StringReplace(MoonState,'_','-',[rfReplaceAll]),'mdi:moon','',[]),'-moon','',[])+'.svg">';
    MoonTitle := Trim(StringReplace(StringReplace(StringReplace(MoonState,'_',' ',[rfReplaceAll]),'mdi:moon','',[]),'-',' ',[rfReplaceAll]));
    asm
      this.MoonTitle = window.CapWords(this.MoonTitle || 'N/A');
    end;
  end

  // Entities where we're just looking for a single value
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
  else if (Entity = WeatherTendencySensor) then asm this.WeatherTendency = State.state end
  else if (Entity = WeatherUVSensor) then asm this.WeatherUV = State.state end
  else if (Entity = WeatherAQHISensor) then asm this.WeatherAQHI = State.state end
  else if (Entity = WeatherSummarySensor) then asm this.WeatherSummary = State.state end
  else if (Entity = WeatherAdvisorySensor) then asm this.WeatherAdvisory = State.state end

  else if (Entity = EnergySensor) then asm if (!isNaN(State.state)) { this.EnergyUse = parseInt(State.state) } end

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
console.log('click');
  // Change icon to indicate an update is happening.
  // Though in this case it might be too quick to be visible
  btnHALoadConfiguration.Caption := '<div class="cursor-pointer d-flex align-items-center justify-content-stretch flex-row">'+
                                      '<iconify-icon icon="mdi:home-assistant" style="color:#3399CC; font-size:32px;"></iconify-icon>'+
                                      '<i class="fa-solid fa-rotate fa-spin fa-fw" style="color:black; font-size:24px;"></i>'+
                                      '<div class="ps-2 lh-1" style="color:black;text-align:left;">Load Configuration<br />from Home Assistant</div>'+
                                    '</div>';

  // Set flag to indicate that when states arrive, we want to retrieve the configuration
  HALoadConfig := True;

  // Request full set of states again (no option to limit what is returned
  HAID := HAID + 10;
  HAGetStates := HAID;
  HAWebSocket.Send('{"id":'+IntToStr(HAGetStates)+',"type":"get_states"}');

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnHASaveConfigurationClick(Sender: TObject);
var
  Command: String;
  Data: String;
  i: Integer;
  SceneStateString: String;
begin

  // Change icon to indicate an update is happening.
  // Though in this case it might be too quick to be visible
  btnHASaveConfiguration.Caption := '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
                                      '<i class="fa-solid fa-rotate fa-fw fa-spin" style="color:black; font-size:24px;"></i>'+
                                      '<iconify-icon icon="mdi:home-assistant" class="pe-2" style="color:#3399CC; font-size:32px;"></iconify-icon>'+
                                      '<div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div>'+
                                    '</div>';

  // Update version information
  HAID := HAID + 1;
  Data := 'Catheedral: Version '+dataConfigVersion.Caption+', Released '+dataConfigRelease.Caption;
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_version","value":"'+Data+'"}}';
  HAWebSocket.Send(Command);

  SceneStateString := '[]';
  asm
    var SSS = [];
    for (var el in this.SceneState) {
      SSS.push({sceneid: el, x: this.SceneState[el][0], y: this.SceneState[el][1]});
    }
    SceneStateString = JSON.stringify(SSS);
  end;

  // Update Configuration var as JSON
  HAID := HAID + 1;
  Data := '{"LD":"'+editConfigLongDate.Text     +'",'+
           '"SD":"'+editConfigShortDate.Text    +'",'+
           '"LT":"'+editConfigLongTime.Text     +'",'+
           '"ST":"'+editConfigShortTime.Text    +'",'+
           '"RR":"'+editConfigRecordRate.Text   +'",'+
           '"PR":"'+editConfigPlaybackRate.Text +'",'+
           '"BG":"'+editConfigBackground.Text   +'",'+
           '"SS":'+SceneStateString                  +
           '}';
  asm Data = JSON.stringify(Data); end;
  Command := '{"id":'+IntToStr(HAID)+', "type":"call_service", "domain":"var", "service":"set", "service_data":{"entity_id":"var.catheedral_configuration","value":"'+FormatDateTime('yyyy-mm-dd hh:nn:ss',Now)+'","attributes":{"feature_000":'+Data+',';

  // Update var 001+ values from table, where the number of entries in the table
  // should match the number of var entries in Home Assistant, ideally
  i := 1;
  while (i <= Features) do
  begin
    asm Data = this.tabSensors.getRow(i).getCell('entity_id').getValue(); end;
    Command := Command+'"feature_'+Format('%.*d',[3,i])+'":"'+Data+'"';
    if (i < Features)  then Command := Command+','
    else Command := Command+'}}}';
    i := i + 1
  end;
//  console.log(command);
  HAWebSocket.Send(Command);

  // Revert to normal icon
  asm
    setTimeout(function() {
      pas.Unit1.Form1.btnHASaveConfiguration.SetCaption(
        '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
          '<i class="fa-solid fa-right-long fa-fw" style="color:black; font-size:24px;"></i>'+
          '<iconify-icon icon="mdi:home-assistant" class="pe-2" style="color:#3399CC; font-size:32px;"></iconify-icon>'+
          '<div class="lh-1" style="color:black;text-align:left;">Save Configuration<br />to Home Assistant</div>'+
        '</div>');
      },750);
  end;

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

procedure TForm1.dataEnergyUseClick(Sender: TObject);
begin
  SwitchPages(1,19);
end;

procedure TForm1.dataHomeTemperatureClick(Sender: TObject);
begin
//
end;

procedure TForm1.HelpConfigMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  ResetInactivityTimer(Sender);
end;

procedure TForm1.HidePopups;
begin
  CurrentLightID := '';
  asm
    pages.style.setProperty('opacity','1');
    pages.classList.remove('pe-none');

    if (this.LightsWhichSwitch == 1) {
      divLightSwitch.style.setProperty('opacity','0');
      divLightSwitch.style.setProperty('top','410px');
    }
    else if (this.LightsWhichSwitch == 2) {
      divLightDimmer.style.setProperty('opacity','0');
      divLightDimmer.style.setProperty('top','410px');
    }
    else if (this.LightsWhichSwitch == 3) {
      divLightColor.style.setProperty('opacity','0');
      divLightColor.style.setProperty('top','410px');
    }
  end;

  tmrHidePopups.Enabled := True;
end;

procedure TForm1.editConfigBACKGROUNDChange(Sender: TObject);
begin
  editConfigChange(nil);
  if (Trim(editConfigBACKGROUND.Text) <> '') and (LowerCase(Trim(editConfigBACKGROUND.Text)) <> 'none') then
  begin
    AppBackground := editConfigBACKGROUND.Text;
    if Pos(';', AppBackground) > 0
    then divBackground.ElementHandle.style.cssText := AppBackground
    else if ((Pos('.png', AppBackground) > 0) or
             (Pos('.gif', AppBackground) > 0) or
             (Pos('.webp', AppBackground) > 0) or
             (Pos('.svg', AppBackground) > 0) or
             (Pos('.jpg', AppBackground) > 0) or
             (Pos('.jpeg', AppBackground) > 0)) and
             (Pos('url', AppBackground) = 0) then
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
  SceneStateString: String;
begin
//  console.log('Saving Configuration');
  AppINIFile := TMiletusINIFile.Create(StringReplace(ParamStr(0),'.exe','',[])+'.ini');

  SceneStateString := '[]';
  asm
    var SSS = [];
    for (var el in this.SceneState) {
      SSS.push({sceneid: el, x: this.SceneState[el][0], y: this.SceneState[el][1]});
    }
    SceneStateString = JSON.stringify(SSS);
  end;

  // Save each of the Configuration Page paramerts to the INI File
  AppIniFile.WriteString('Configuration', 'URL', editConfigURL.Text);
  AppIniFile.WriteString('Configuration', 'TOKEN', editConfigTOKEN.Text);
  AppIniFile.WriteString('Configuration', 'BACKGROUND', editConfigBACKGROUND.Text);
  AppIniFile.WriteString('Configuration', 'LONGDATE', editConfigLONGDATE.Text);
  AppIniFile.WriteString('Configuration', 'LONGTIME', editConfigLONGTIME.Text);
  AppIniFile.WriteString('Configuration', 'SHORTDATE', editConfigSHORTDATE.Text);
  AppIniFile.WriteString('Configuration', 'SHORTTIME', editConfigSHORTTIME.Text);
  AppIniFile.WriteString('Configuration', 'RECORDRATE', editConfigRecordRate.Text);
  AppIniFile.WriteString('Configuration', 'PLAYBACKRATE', editConfigPlaybackRate.Text);
  AppIniFile.WriteString('Configuration', 'SCENESTATE', SceneStateString);


  // Save each of the links to Home Assistant to the INI file as well
  // Kind of a pain to get it out of Tabulator, but it is an odd thing we're doing...
  FeatureKey := '';
  FeatureValue := '';
  for i := 1 to Features do
  begin

    asm
      var table = this.tabSensors;
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
  if   divCustom1.HTML.Text <> '<iframe src="'+CustomPage1URL+'" class="CustomPage">'
  then divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" class="CustomPage">';

  if   divCustom2.HTML.Text <> '<iframe src="'+CustomPage2URL+'" class="CustomPage">'
  then divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" class="CustomPage">';

  if   divCustom3.HTML.Text <> '<iframe src="'+CustomPage3URL+'" class="CustomPage">'
  then divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" class="CustomPage">';

  if   divCustom4.HTML.Text <> '<iframe src="'+CustomPage4URL+'" class="CustomPage">'
  then divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" class="CustomPage">';

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

function TForm1.GetWeatherIcon(var Condition: String): String;
var
  WeatherCondition: String;
begin
  Result := 'not-available';
  WeatherCondition := Condition;

  // Make this a little more presentable
  asm WeatherCondition = window.CapWords(WeatherCondition); end;

  // Environment Canada Contitions - other data sources may be very different!!
  // https://github.com/home-assistant/core/blob/dev/homeassistant/components/environment_canada/weather.py

  if WeatherCondition = 'Partlycloudy' then WeatherCondition := 'Partly Cloudy';
  if WeatherCondition = 'Clear-night' then WeatherCondition := 'Clear Night';
  if WeatherCondition = 'Snowy-rainy' then WeatherCondition := 'Snowy Rainy';

  // These are the ones we know about!
  if      WeatherCondition = 'Sunny' then Result := 'clear-day'
  else if WeatherCondition = 'Clear Night' then Result := 'clear-night'
  else if WeatherCondition = 'Partly Cloudy' then Result := 'partly-cloudy-day'
  else if WeatherCondition = 'Cloudy' then Result := 'cloudy'
  else if WeatherCondition = 'Rainy' then Result := 'rain'
  else if WeatherCondition = 'Lightning Rainy' then Result := 'thunderstorms-rain'
  else if WeatherCondition = 'Pouring' then Result := 'extreme-rain'
  else if WeatherCondition = 'Snowy Rainy' then Result := 'extreme-snow'
  else if WeatherCondition = 'Snowy' then Result := 'snow'
  else if WeatherCondition = 'Windy' then Result := 'wind'
  else if WeatherCondition = 'Fog' then Result := 'fog'
  else if WeatherCondition = 'Hail' then Result := 'hail';

  // Send back the new value in case it has changed
  Condition := WeatherCondition;
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
  ResponseType := '';
  ResponseID := 0;

  if (dataConfigSTATUS.Caption <> 'Connected')
  then dataConfigSTATUS.Caption := 'Processing';

  asm
    if (SocketData.jsobject !== null) {
      var hadata = JSON.parse(SocketData.jsobject);
      ResponseType = hadata.type;
      ResponseID = hadata.id;
    }
  end;

  // Maybe we don't have anything to work with?
  if ResponseType = ''  then exit;

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

        // We don't really care quite as much about these, but record them anyway
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
        console.log('State Information: '+SocketData.jsobject.length+' bytes');
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


        // There are FOUR lights ;)
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
        this.LightGroups = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("light.") == 0) && ((o.attributes.lights !== undefined) || (o.entity_id.indexOf("_group") !== -1)) && (o.entity_id.indexOf("_hide") == -1) && ((o.state == "off") || (o.state == "on")));
          }).sort((a,b) => (a.entity_id > b.entity_id) ? 1: -1);
        this.Lights = [...this.Lights, ...this.LightGroups];
        this.LightsCount = this.LightsOn + this.LightsOff;
        // Let's have a look at it, shall we??
//        console.log('Lighting Information: '+JSON.stringify(this.Lights).length+' bytes');
//        console.log(this.Lights);
//        console.log(this.LightsOn);


        // Lookup Zones
        this.HAZones = hadata.result.filter(
          function(o) {
           return ((o.entity_id.indexOf("zone.") == 0) && (o.entity_id.indexOf("stationary") == -1) && (o.attributes.latitude !== undefined) && (o.attributes.longitude !== undefined) && (o.attributes.radius !== undefined)  && (o.attributes.passive == false));
          });


        // Lookup Scenes
        this.HAScenes = hadata.result.filter(
          function(o) {
           return (o.entity_id.indexOf("scene.") == 0);
          });


        // Load Configuration from Home Assistant Data (triggered by button click - not automatic)
        if (this.HALoadConfig == true) {

          // Don't run this again unless asked
          this.HALoadConfig = false;

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
                  editConfigRecordRate.value = param.RR;
                  editConfigPlaybackRate.value = param.PR;

                  this.HAScenesLoaded = [];
                  this.SceneState = [];
                  param.SS.forEach((el) => {
                    this.SceneState[el.sceneid] = [el.x,el.y];
                  });
                }
                // List of sensors stored in 001..Features
                else {
                  this.tabSensors.getRow(i).getCell('entity_id').setValue(param);
                }
              }
            }
          }

          // Reconnect to reload everything
          this.editConfigChange(null);
          this.editConfigBACKGROUNDChange(null);
//          this.dataConfigSTATUSClick(null);

            // Put back the normal icon
            setTimeout(function() {
              pas.Unit1.Form1.btnHALoadConfiguration.SetCaption(
                '<div class="d-flex align-items-center justify-content-stretch flex-row">'+
                  '<iconify-icon icon="mdi:home-assistant" style="color:#3399CC; font-size:32px;"></iconify-icon>'+
                  '<i class="fa-solid fa-right-long fa-fw" style="color:black; font-size:24px;"></i>'+
                  '<div class="lh-1 ps-2" style="color:black;text-align:left;">Load Configuration<br />from Home Assistant</div>'+
                '</div>');
              }, 750);
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
    labelConfigSTATUS.HTML := '<div class="text-end">'+Trim(HASystemName)+'<i class="fa-regular fa-circle-question px-3"></i>Status</div>';
  end

  // Response to our get_states request
  else if (ResponseType = 'result') and (ResponseID = HAGetStates) then
  begin
//    labelConfigSTATUS.Caption := HASystemName+ ' Status';
  end

  // Response to our events request
  else if (ResponseType = 'result') and (ResponseID = HAGetEvents) then
  begin
    // thank you - this is an empty result typically?
    // console.log('HAGetEvents results have arrived');
  end
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
              break;
            }
          }
        }
      }
      else {
//        console.log(hadata.event);
      }
    end;
  end

  // The result from a history/stream request for People entities
  else if (ResponseType = 'result') and (ResponseID = HAGetPeople) then
  begin
    // thank you - this is an empty result typically?
    // console.log('HAGetPeople results have arrived');
  end
  else if (ResponseType = 'result') and (ResponseID = HAGetScene) then
  begin
    // thank you - nothing to do here
    // console.log('HAGetScene results have arrived');
  end
  else if (ResponseType = 'event') and (ResponseID = HAGetPeople) then
  begin
    asm
      var PeopleData = JSON.parse(SocketData.jsobject);
//      console.log(PeopleData.event.states[this.Person1Sensor]);
//      console.log(PeopleData.event.states[this.Person2Sensor]);

      if (this.CurrentPerson == 1)  {
        if (PeopleData.event.states[this.Person1Sensor] !== undefined) {
          var PeopleFilter = PeopleData.event.states[this.Person1Sensor].filter(
            function(o) {
              return (o.s.toUpperCase().indexOf("NOTSET") !== 0);
            });
        } else {
          var PeopleFilter = [];
        }
      } else {
        if (PeopleData.event.states[this.Person2Sensor] !== undefined) {
          var PeopleFilter = PeopleData.event.states[this.Person2Sensor].filter(
            function(o) {
              return (o.s.toUpperCase().indexOf("NOTSET") !== 0);
            });
        } else {
          var PeopleFilter = [];
        }
      }
      this.tabLocations.setData(PeopleFilter).then(() => {
        if (this.tabLocations.getDataCount() > 0) {
          this.tabLocations.deselectRow();
          this.tabLocations.selectRow(this.tabLocations.getRowFromPosition(1));
        }
      })


    end;

  end


  // Some other message was received unexpectedly
  else
  begin
    console.log('HAGetConfig: '+InttoSTr(HAGetConfig));
    console.log('HAGetStates: '+InttoSTr(HAGetStates));
    console.log('HAGetEvents: '+InttoSTr(HAGetEvents));
    console.log('HAGetPeople: '+InttoSTr(HAGetPeople));
    asm
      console.log('Unexpected HA Data');
      console.log(SocketData);
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
    tmrConnect.Tag := 11;
    tmrConnect.Enabled := True;

    ShowDisconnected;
  end;
end;

procedure TForm1.HAWebSocketMessageReceived(Sender: TObject; AMessage: string);
begin
//  console.log(AMessage);
end;

procedure TForm1.labelConfigSTATUSClick(Sender: TObject);
begin
  SwitchPages(0, 6);
end;

procedure TForm1.labelTimeClick(Sender: TObject);
begin
//
end;

procedure TForm1.LightButtonSwitched(light: String);
var
  LightID: String;
begin
  LightID := Copy(light,7,length(light));
  // Switching light on/off or Changing Color?
  if pos('light-',light) = 1 then
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+LightID+'"}}');
  end;
end;

procedure TForm1.LightButtonDimmed(light: String; brightness: Integer);
var
  LightID: String;
begin
  LightID := Copy(light,7,length(light));
  // Switching light on/off or Changing Color?
  if pos('light-',light) = 1 then
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "turn_on", "target": {"entity_id":"'+LightID+'"}, "service_data":{"brightness":'+IntToStr(brightness)+'}}');
  end;
end;

procedure TForm1.LightButtonColor(light: String; hsv: String);
var
  LightID: String;
  Hue: Integer;
  Sat: Integer;
  Bri: Integer;
begin
  LightID := Copy(light,7,length(light));
  hsv := StringReplace(StringReplace(StringReplace(StringReplace(hsv,'HSV(','',[]),')','',[]),'%','',[rfReplaceAll]),' ','',[rfReplaceAll]);

  asm
    Hue = parseInt(hsv.split(',')[0] || 0);
    Sat = parseInt(hsv.split(',')[1] || 0);
    Bri = parseInt(parseInt(hsv.split(',')[2] || 0) * 2.56);
  end;

  // Switching light on/off or Changing Color?
  if pos('light-',light) = 1 then
  begin
    HAID := HAID + 1;
    HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "turn_on", "target": {"entity_id":"'+LightID+'"}, "service_data":{"transition":0.4,"brightness":'+IntToStr(Bri)+',"hs_color":['+IntToStr(Hue)+','+IntToStr(Sat)+']}}');
  end;
end;

procedure TForm1.LightButtonClicked(light: String);
var
  LightID: String;
begin
  LightID := Copy(light,7,length(light));
  // Switching light on/off or Changing Color?
  if (ChangeMode = False) or (PopupVisible = True) then
  begin
    if pos('light-',light) = 1 then
    begin
      HAID := HAID + 1;
      HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+LightID+'"}}');
    end;
  end
  else
  begin
    asm
      var lightobj = this.Lights.find(o => o.entity_id === LightID);
      if (lightobj !== undefined) {

        // De-prioritize maing TWebPageControl
        pages.style.setProperty('transition', 'opacity 0.4s ease');
        pages.style.setProperty('opacity','0.25');
        pages.classList.add('pe-none');

        // We'll need this later
        this.PopupVisible = true;
        this.CurrentLightID = LightID;

        // Clone the light button from the main display
        var cloneobj = document.getElementById(light).cloneNode(true);
        cloneobj.id = 'lightswitch-'+LightID;
        cloneobj.classList.replace('LightButton','LightButtonLabel');
        cloneobj.style.setProperty("margin-top","0px");
        cloneobj.addEventListener('click',function(e){pas.Unit1.Form1.LightButtonClicked(light); e.stopPropagation;});

        // Figure out which kind of light control to display
        var lightattr = lightobj.attributes["supported_color_modes"];

        if ((lightattr == undefined) || (lightattr.length == 0) ||  (lightattr.includes("onoff"))) {
          // Add Light
          labelLightSwitch.replaceChildren(cloneobj);

          // Setup Event
          switchlight.replaceWith(switchlight.cloneNode(true)); // get rid of any existing event listeners (?!)
          switchlight.addEventListener('click',function(e){pas.Unit1.Form1.LightButtonSwitched(light); e.stopPropagation;});

          // Set Current State
          if (lightobj.state == "on") {
            switchlight.setAttribute('checked','');
          }
          else {
            switchlight.removeAttribute('checked');
          }

          // Show UI
          this.LightsWhichSwitch = 1;
          divLightSwitch.style.setProperty('opacity','1');
          divLightSwitch.style.setProperty('top','10px');
        }
        else if (lightattr.includes("brightness")) {
          // Add Light
          labelLightDimmer.replaceChildren(cloneobj);

          // Setup Event
          dimmerlight.replaceWith(dimmerlight.cloneNode(true)); // get rid of any existing event listeners (?!)
          dimmerlight.addEventListener('sl-input',function(e){
            labelDimmerValue.textContent = e.target.value+' %';
            divDimmerThumb.style.setProperty("left",50 + (e.target.value * 4.25) +'px');
            e.stopPropagation;
          });
          dimmerlight.addEventListener('sl-change',function(e){
            pas.Unit1.Form1.LightButtonDimmed(light, parseInt(e.target.value * 2.56));
            e.stopPropagation;
          });

          // Set Current State
          dimmerlight.value = 100 * ((parseFloat(lightobj.attributes["brightness"]) || 0) / 255);
          divDimmerThumb.style.setProperty("left",50 + (dimmerlight.value * 4.25) + 'px');
          labelDimmerValue.textContent = (parseInt(dimmerlight.value) || 0)+' %';

          // Show UI
          this.LightsWhichSwitch = 2;
          divLightDimmer.style.setProperty('opacity','1');
          divLightDimmer.style.setProperty('top','10px');
        }
        else {
          // Add Light
          labelLightColor.replaceChildren(cloneobj);
          colorlight.replaceWith(colorlight.cloneNode(true)); // get rid of any existing event listeners (?!)

          // Setup Event
          colorlight.addEventListener('sl-change',function(e){
            pas.Unit1.Form1.LightButtonColor(
              light,
              e.target.getFormattedValue('hsv')
            );
            e.stopPropagation;
          });

          // Set Current State
          if (lightobj.attributes["rgb_color"] !== undefined) {
            colorlight.value = "hsv("+lightobj.attributes["hs_color"][0]+","+
                                      lightobj.attributes["hs_color"][1]+"%,"+
                                      parseInt(lightobj.attributes["brightness"]/2.56)+'%'+
                                  ")";
          }
          else {
            colorlight.value = "rgb(0,0,0)";
          }

          // Show UI

          // Changing the input element's font (there's got to be a better way!)
          customElements.whenDefined('sl-color-picker').then(() => {
            setTimeout(function() {
              var a = colorlight.shadowRoot;
              var b = a.querySelectorAll('[part~="input"]');
              var c = b[0].shadowRoot;
              var d = c.querySelectorAll('[part~="input"]');
              var e = d[0];
              e.style.setProperty('font-family','Cairo');
              e.style.setProperty('font-size','18px');
              e.style.setProperty('padding-left','5px');
              e.style.setProperty('padding-right','0px');
            },50);
          });

          this.LightsWhichSwitch = 3;
          divLightColor.style.setProperty('opacity','1');
          divLightColor.style.setProperty('top','10px');

        }
      }
    end;
  end;
end;

procedure TForm1.listBackgroundsChange(Sender: TObject);
begin
  editconfigBackground.Text := listBackgrounds.Items[listBackgrounds.ItemIndex];
  btnListBackgroundsClick(Sender);
  editConfigBackgroundChange(Sender);
end;

procedure TForm1.listDatesLongChange(Sender: TObject);
begin
  editConfigLONGDATE.Text := listDatesLong.Items[listDatesLong.ItemIndex];
  btnListDatesLongClick(Sender);
  editConfigChange(Sender);
end;

procedure TForm1.listDatesShortChange(Sender: TObject);
begin
  editConfigSHORTDATE.Text := listDatesShort.Items[listDatesShort.ItemIndex];
  btnListDatesShortClick(Sender);
  editConfigChange(Sender);
end;

procedure TForm1.listPlaybackChange(Sender: TObject);
begin
  editConfigPlaybackRate.Text := listPlayback.Items[listPlayback.ItemIndex];
  btnListPlaybackClick(Sender);
  editConfigChange(Sender);
end;

procedure TForm1.listRecordChange(Sender: TObject);
begin
  editConfigRecordRate.Text := listRecord.Items[listRecord.ItemIndex];
  btnListRecordClick(Sender);
  editConfigChange(Sender);
end;

procedure TForm1.listTimesLongChange(Sender: TObject);
begin
  editConfigLONGTIME.Text := listTimesLong.Items[listTimesLong.ItemIndex];
  btnListTimesLongClick(Sender);
  editConfigChange(Sender);
end;

procedure TForm1.listTimesShortChange(Sender: TObject);
begin
  editConfigShortTIME.Text := listTimesShort.Items[listTimesShort.ItemIndex];
  btnListTimesShortClick(Sender);
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

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'RECORDRATE', ''));
  if StoredValue <> '' then editConfigRecordRate.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'PLAYBACKRATE', ''));
  if StoredValue <> '' then editConfigPlaybackRate.Text := StoredValue;

  StoredValue := await(String, AppINIFile.ReadString('Configuration', 'SCENESTATE', ''));
  if StoredValue <> '' then
  begin
    asm
      var SSS = JSON.parse(StoredValue);
      this.SceneState = [];
      SSS.forEach((el) => {
        this.SceneState[el.sceneid] = [el.x,el.y];
      });
    end;
  end;

  // Add each of the links for Home Assistant from the INI file as well
  // Kind of a pain to get it back into Tabulator, but it is an odd thing we're doing...
  FeatureKey := '';
  FeatureValue := '';
  for i := 1 to Features do
  begin
    asm
      var table = this.tabSensors;
      FeatureKey = table.getRow(i).getCell('feature').getValue();
      if (FeatureKey === undefined) {FeatureKey = ''};
    end;
    FeatureValue := await(String, AppINIFile.ReadString('Home Assistant', FeatureKey, ''));
    asm
      var table = this.tabSensors;
      table.getRow(i).getCell('entity_id').setValue(FeatureValue);
    end;
  end;

  asm
    window.UpdateSensorList();
  end;

  // Might as well load these up right away
  if   divCustom1.HTML.Text <> '<iframe src="'+CustomPage1URL+'" class="CustomPage">'
  then divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" class="CustomPage">';

  if   divCustom2.HTML.Text <> '<iframe src="'+CustomPage2URL+'" class="CustomPage">'
  then divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" class="CustomPage">';

  if   divCustom3.HTML.Text <> '<iframe src="'+CustomPage3URL+'" class="CustomPage">'
  then divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" class="CustomPage">';

  if   divCustom4.HTML.Text <> '<iframe src="'+CustomPage4URL+'" class="CustomPage">'
  then divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" class="CustomPage">';

  CustomPage1Refresh := FormatDateTime('yyyymmddhh',Now);
  CustomPage2Refresh := CustomPage1Refresh;
  CustomPage3Refresh := CustomPage1Refresh;
  CustomPage4Refresh := CustomPage1Refresh;

  // Cleanup
  AppINIFile.Free;
  ConfigurationLoaded := True;
  PreventCompilerHint(FeatureValue);
end;

procedure TForm1.LoadHelp(HelpDIV: String);
var
  HelpFile: String;
  HelpFileAlt: String;
begin
  HelpFile := 'help/'+HALanguage+'-'+HACountry+'/'+HelpDIV+'.html';
  HelpFileAlt := 'help/en-CA/'+HelpDIV+'.html';
  asm
    var Help = document.getElementById(HelpDIV);
    Help.innerHTML = '<div class="HelpBody">Help File Missing: '+HelpFile+'</div>';
    fetch(HelpFile)
      .then(
        function(response) {
          if (response.status !== 200) {
            fetch(HelpFileAlt)
              .then(
                function(altresponse) {
                  if (altresponse.status !== 200) {
                  }
                  else {
                    altresponse.text().then(function(AltHelpData) {
                      Help.innerHTML = AltHelpData;
                    })
                  }
                }
              )
              .catch(function(err) {
                console.log('Error ['+err+'] Loading Help: '+HelpDIV);
              })
          }
          else {
            response.text().then(function(HelpData) {
              Help.innerHTML = HelpData
            })
          }
        }
      )
      .catch(function(err) {
         console.log('Error ['+err+'] Loading Help: '+HelpDIV);
      })
  end;
  PreventCompilerHint(HelpFile);
  PreventCompilerHint(HelpFileAlt);
end;

procedure TForm1.MiletusFormClick(Sender: TObject);
begin
  ResetInactivityTimer(Sender);
end;

procedure TForm1.MiletusFormCreate(Sender: TObject);
var
  datafile: String;
  i: Integer;
begin

  // Let's just do this versioning stuff by hand
  AppVersion := '1.1.0';
  AppRelease := '2023-Mar-23';
  AppStarted := Now;

  // Application State
  DebugMode := False;
  DesktopMode := False;
  ChangeMode := False;
  ConfigTableReady := False;
  ConfigurationLoaded := False;
  UpdatePending := False;
  LastRefresh := Now;
  PopupVisible := False;

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
  btnHome.Top := PanelHeight - MainButtonSize - MainButtonPad;
  btnHome.Left := PanelWidth + MainButtonSize;
  btnHome.Width := MainButtonSize;
  btnHome.Height := MainButtonSize;
  // slide in from bottom
  btnConfiguration.top := PanelHeight + MainButtonSize;
  btnConfiguration.Left := MainButtonPad;
  btnConfiguration.Width := MainButtonSize;
  btnConfiguration.Height := MainButtonSize;

  // Adjust <div> elements for satellite/radar
  divRadar.Top := 0;
  divRadar.Left := 45;
  divRadar.Width := 1190;
  divRadar.Height := 400;
  // The iframe can be expanded beyond the borders of the page, still centered
  divSatellite.Top := -50;
  divSatellite.Left := -100;
  divSatellite.Width := 1480;
  divSatellite.Height := 500;
  // If we didn't want any kind of interaction with the <iframe>
  // divRadar.ElementHandle.classlist.add('pe-none');
  // divSatellite.ElementHandle.classlist.add('pe-none');

  // Configure Tabulator list of Sensors
  ConfigureTabSensors;

  // Add borders to editconfig elements - this is for modern-screenshot
  // which doesn't seem to pickup the border from the CSS for some reason
  editConfigURL.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigTOKEN.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigBACKGROUND.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigLONGDATE.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigSHORTDATE.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigLONGTIME.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigSHORTTIME.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigRecordRate.ElementHandle.style.setProperty('border','2px solid white','important');
  editConfigPlaybackRate.ElementHandle.style.setProperty('border','2px solid white','important');

  // Adjust sizes of Config Listboxes
  listBackgrounds.Top := 205;
  listBackgrounds.Left := 190;
  listBackgrounds.Width := 520;
  listBackgrounds.Height := 0;
  listBackgrounds.Tag := 178;

  listDatesLong.Top := 245;
  listDatesLong.Left := 190;
  listDatesLong.Width := 260;
  listDatesLong.Height := 0;
  listDatesLong.Tag := 138;

  listDatesShort.Top := 285;
  listDatesShort.Left := 190;
  listDatesShort.Width := 260;
  listDatesShort.Height := 0;
  listDatesShort.Tag := 98;

  listTimesLong.Top := 245;
  listTimesLong.Left := 560;
  listTimesLong.Width := 150;
  listTimesLong.Height := 0;
  listTimesLong.Tag := 138;

  listTimesShort.Top := 285;
  listTimesShort.Left := 560;
  listTimesShort.Width := 150;
  listTimesShort.Height := 0;
  listTimesShort.Tag := 98;

  asm
    listRecord.style.removeProperty('top');
    listRecord.style.setProperty('bottom','96px');
  end;
  listRecord.Left := 770;
  listRecord.Width := 205;
  listRecord.Height := 0;
  listRecord.Tag := 213;

  asm
    listPlayback.style.removeProperty('top');
    listPlayback.style.setProperty('bottom','57px');
  end;
  listPlayback.Left := 770;
  listPlayback.Width := 205;
  listPlayback.Height := 0;
  listPlayback.Tag := 252;

  // Initialize various States

  // Home Assistant State - Unknonw at start
  HASystemName := '';
  HAID := 0;
  ShowDisconnected;
  HALoadConfig := False;
  HAStatesLoaded := False;
  HALanguage := 'Unknown';
  HACountry := 'Unknown';

  //  Sensors
  SunSensor := '';
  MoonSensor := '';

  // Climate
  DaylightSensor := '';
  ClimateSensor := '';
  ClimateMinTempSensor := '';
  ClimateMaxTempSensor := '';
  ClimateMinHumiditySensor := '';
  ClimateMaxHumiditySensor := '';

  // Weather
  WeatherSensor1 := '';
  WeatherSensor2 := '';
  WeatherMinTempSensor := '';
  WeatherMaxTempSensor := '';
  WeatherMinPressureSensor := '';
  WeatherMaxPressureSensor := '';
  WeatherMinHumiditySensor := '';
  WeatherMaxHumiditySensor := '';
  WeatherUVSensor := '';
  WeatherAQHISensor := '';
  WeatherTendency := '';
  WeatherSummary := '';
  WeatherAdvisory := '';
  WeatherRadarLink := '';
  WeatherSatelliteLink := '';
  WeatherPrecipUnits := '';
  asm
    this.WeatherForecast1 = [];
    this.WeatherForecast2 = [];
  end;

  // People
  Person1Sensor := '';
  Person2Sensor := '';

  Battery1Sensor := '';
  Battery2Sensor := '';
  Battery3Sensor := '';
  Battery4Sensor := '';

  // Energy
  EnergySensor := '';

  // Config Page Defaults
  editConfigURL.Text := 'http://homeassistant.local:8123';
  editConfigTOKEN.Text := '';
  editConfigBACKGROUND.Text := 'black';
  editConfigLONGDATE.Text := 'yyyy-mmm-dd (ddd)';
  editConfigLONGTIME.Text := 'hh:nn:ss';
  editConfigSHORTDATE.Text := 'mmm d' ;
  editConfigSHORTTIME.Text := 'hh:nn';

  // Home Page - Time Panel
  SunRise := Trunc(Now);
  SunSet := Trunc(Now);
  SunDawn := Trunc(Now);
  SunDusk := Trunc(Now);
  MoonState := '';
  MoonIcon :=  '<img width="70" height="70" src="weather-icons-dev/production/fill/svg-static/not-available.svg">';
  MoonTitle := 'Not Available';

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
  WeatherIcon := 'not-available';

  // Home Page - People
  Person1Name := '';
  Person1Photo := '';
  Person1Location := '';
  Person2Name := '';
  Person2Photo := '';
  Person2Location := '';
  asm
    this.HAPeople = [];
    this.HAZones = [];
  end;
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

  // Home Page - Energy
  EnergyUse := 0;

  // Lights Page
  LightsMode := 3; // No Groups
  LightsWhichSwitch := 0;
  CurrentLightID := '';
  asm
    this.Lights = [];
  end;

  // Scenes Page
  ZCounter := 1;
  asm
    this.HAScenes = [];
    this.HAScenesLoaded = '';
    this.SceneState = [];
  end;
  for i := 0 to 71 do
  begin
    PositionScenes[i].X := 7 + (i mod 8)*147;
    PositionScenes[i].Y := 20 + (i div 8)*36;
  end;



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
  ResetInactivityTimer(Sender);
end;

procedure TForm1.navLeftClick(Sender: TObject);
var
  Custom1,
  Custom2,
  Custom3,
  Custom4: Integer;
  Weather1,
  Weather2,
  Weather3: Integer;
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
  // 16 - Lights Page
  // 17 - HELP: Lights Page
  // 18 - Out - Shutting Down Page
  // 19 - Energy Page
  // 20 - HELP: Energy Page
  // 21 - Weather Page
  // 22 - HELP: Weather Page
  // 23 - Weather Radar
  // 24 - Weather Satellite

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

  // Sort out weather pages
  Weather1 := 21;
  Weather2 := 23;
  Weather3 := 24;
  if (WeatherRadarLink = '') then Weather2 := 21;
  if (WeatherSatelliteLink = '') then Weather3 := 21;

  // Configuration cycle: 3
  // 06 - 00 - 05
  // Sensors - Config - Info

  // Main Cycle: 7
  // 09 - 10 - 03 - 01 - 02 - 07 - 08
  // Custom3 - Custom4 - Scenes - Home - Rooms - Custom1 - Custom2

  // Help Cycle: 5
  // 13 - 04 - 12 - 14 - 15 - 17 - 20 - 22
  // Cs - Cf - Ci - C1 - Hm - Lt - En - Wx

  // Weather Cycle
  // W1 - W2 - W3

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
  else if (pages.TabIndex = 13) then SwitchPages( 13, 22)
  else if (pages.TabIndex =  4) then SwitchPages(  4, 13)
  else if (pages.TabIndex = 12) then SwitchPages( 12,  4)
  else if (pages.TabIndex = 14) then SwitchPages( 14, 12)
  else if (pages.TabIndex = 15) then SwitchPages( 15, 14)
  else if (pages.TabIndex = 17) then SwitchPages( 17, 15)
  else if (pages.TabIndex = 20) then SwitchPages( 20, 17)
  else if (pages.TabIndex = 22) then SwitchPages( 22, 20)

  // Lights - Go back to Home
  else if (pages.TabIndex = 16) then SwitchPages( 16, 1)

  // Energy - Go back to home
  else if (pages.TabIndex = 19) then SwitchPages( 19, 1)

  // Weather - Go back to home
  else if (pages.TabIndex = Weather1) then SwitchPages( Weather1, Weather3 )
  else if (pages.TabIndex = Weather2) then SwitchPages( Weather2, Weather1 )
  else if (pages.TabIndex = Weather3) then SwitchPages( Weather3, Weather2 )

  // Person - Don't go anywhere
  else if (pages.TabIndex = 25) then
  begin
    if CurrentPerson = 1
    then CurrentPerson := 2
    else CurrentPerson := 1;
    divLocations.ElementHandle.style.setProperty('opacity','0');
    divPersonPhoto.ElementHandle.style.setProperty('opacity','0');
    divPersonInfo.ElementHandle.style.setProperty('opacity','0');
    SwitchPages( 25, 25 );
  end

  // Otherwise - Go back to home
  else SwitchPages(pages.TabIndex, 1);

  ResetInactivityTimer(Sender);
end;

procedure TForm1.navRightClick(Sender: TObject);
var
  Custom1,
  Custom2,
  Custom3,
  Custom4: Integer;
  Weather1,
  Weather2,
  Weather3: Integer;
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
  // 16 - Lights Page
  // 17 - HELP: Lights Page
  // 18 - Out - Shutting Down Page
  // 19 - Energy Page
  // 20 - HELP: Energy Page
  // 21 - Weather Page
  // 22 - HELP: Weather Page
  // 23 - Weather Radar
  // 24 - Weather Satellite

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

  // Sort out weather pages
  Weather1 := 21;
  Weather2 := 23;
  Weather3 := 24;
  if (WeatherRadarLink = '') then Weather2 := 21;
  if (WeatherSatelliteLink = '') then Weather3 := 21;

  // Configuration cycle
  //  06 - 00 - 05
  // Sensors - Config - Info

  // Main Cycle
  // 09 - 10 - 03 - 01 - 02 - 07 - 08
  // Custom3 - Custom4 - Scenes - Home - Rooms - Custom1 - Custom2

  // Help Cycle
  // 13 - 04 - 12 - 14 - 15 - 17 - 20 - 22
  // Cs - Cf - Ci - C1 - Hm - Lt - En - Wx

  // Weather Cycle
  // W1 - W2 - W3

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
  else if (pages.TabIndex = 15) then SwitchPages( 15, 17)
  else if (pages.TabIndex = 17) then SwitchPages( 17, 20)
  else if (pages.TabIndex = 20) then SwitchPages( 20, 22)
  else if (pages.TabIndex = 22) then SwitchPages( 22, 13)

  // Lights - Go back to Home
  else if (pages.TabIndex = 16) then SwitchPages( 16, 1)

  // Energy - Go back to home
  else if (pages.TabIndex = 19) then SwitchPages( 19, 1)

  // Weather - Go back to home
  else if (pages.TabIndex = Weather1) then SwitchPages( Weather1, Weather2 )
  else if (pages.TabIndex = Weather2) then SwitchPages( Weather2, Weather3 )
  else if (pages.TabIndex = Weather3) then SwitchPages( Weather3, Weather1 )

  // Person - Don't go anywhere
  else if (pages.TabIndex = 25) then
  begin
    if CurrentPerson = 1
    then CurrentPerson := 2
    else CurrentPerson := 1;
    divLocations.ElementHandle.style.setProperty('opacity','0');
    divPersonPhoto.ElementHandle.style.setProperty('opacity','0');
    divPersonInfo.ElementHandle.style.setProperty('opacity','0');
    SwitchPages( 25, 25 );
  end

  // Otherwise - Go back to home
  else SwitchPages(pages.TabIndex, 1);

  ResetInactivityTimer(Sender);
end;


procedure TForm1.pageWeatherClick(Sender: TObject);
begin
  SwitchPages(21,1);
end;

procedure TForm1.ResetInactivityTimer(Sender: TObject);
begin
  // Reset Inactivity Timer
  tmrInactivity.Enabled := False;
  if pages.TabIndex <> 1
  then tmrInactivity.Enabled := True;
end;

procedure TForm1.SwitchPages(StartPage, EndPage: Integer);
begin
  // Fadeout CurrentPage
  if (StartPage <> EndPage)
  then pages.ActivePage.ElementHandle.style.setProperty('opacity','0');

  // If Leaving "Configure Sensors" Page, Save Changes
  if StartPage = 5
  then editConfigChange(nil);

  // Hide Popup if visible
  HidePopups;

  // Update Weather Information
  if EndPage = 21 then
  begin
    // Set middle text - Advisory and Summary values
    if WeatherAdvisory ='0' then WeatherAdvisory := '';
    if (WeatherAdvisory = '') and (WeatherSummary = '')
    then divWxText.HTML.Text := '<div style="width:1180px;"> <span class="Gray text-nowrap TextSM">'+WeatherAttribution+'</span></div>'
    else divWxText.HTML.Text := '<div style="width:1180px !important; white-space:normal;"><span class="Yellow">'+WeatherAdvisory+'</span><span>'+WeatherSummary+'</span> <span class="Gray text-nowrap TextSM">'+WeatherAttribution+'</span></div>';

    asm
      // eg: Environment Canada Regular Forecast
      if (this.WeatherForecast1.length == 6) {
        this.DrawWeather(divWxD1, this.WeatherForecast1[0],false);
        this.DrawWeather(divWxD2, this.WeatherForecast1[1],false);
        this.DrawWeather(divWxD3, this.WeatherForecast1[2],false);
        this.DrawWeather(divWxD4, this.WeatherForecast1[3],false);
        this.DrawWeather(divWxD5, this.WeatherForecast1[4],false);
        this.DrawWeather(divWxD6, this.WeatherForecast1[5],false);
      }

      // eg: Environment Canada Hourly Forecast
      if (this.WeatherForecast2.length == 24) {
        this.DrawWeather(divWxH1, this.WeatherForecast2[ 3],true);
        this.DrawWeather(divWxH2, this.WeatherForecast2[ 7],true);
         this.DrawWeather(divWxH3, this.WeatherForecast2[11],true);
        this.DrawWeather(divWxH4, this.WeatherForecast2[15],true);
        this.DrawWeather(divWxH5, this.WeatherForecast2[19],true);
        this.DrawWeather(divWxH6, this.WeatherForecast2[23],true);
      }

      // eg: OpenWeatherMap Free API
      if (this.WeatherForecast1.length == 40) {
        this.DrawWeather(divWxH1, this.WeatherForecast1[ 0],true);
        this.DrawWeather(divWxH2, this.WeatherForecast1[ 1],true);
        this.DrawWeather(divWxH3, this.WeatherForecast1[ 2],true);
        this.DrawWeather(divWxH4, this.WeatherForecast1[ 3],true);
        this.DrawWeather(divWxH5, this.WeatherForecast1[ 4],true);
        this.DrawWeather(divWxH6, this.WeatherForecast1[ 5],true);
        this.DrawWeather(divWxD1, this.WeatherForecast1[ 6],true);
        this.DrawWeather(divWxD2, this.WeatherForecast1[ 7],true);
        this.DrawWeather(divWxD3, this.WeatherForecast1[15],true);
        this.DrawWeather(divWxD4, this.WeatherForecast1[23],true);
        this.DrawWeather(divWxD5, this.WeatherForecast1[31],true);
        this.DrawWeather(divWxD6, this.WeatherForecast1[39],true);
      }
    end;
  end;

  // Get started on Person data referesh
  if EndPage = 25 then
  begin
    asm await sleep(400); end;
    DisplayPerson;
  end;

  tmrSwitchPage.Tag := EndPage;
  tmrSwitchPage.Enabled := True;
end;

procedure TForm1.tmrCaptureTimer(Sender: TObject);
begin
  asm
    // Maximum capture - 1800 frames (1m @ 30fps, > 1d at 1fpm)
    if (pas.Unit1.Form1.CaptureData.length < 1800) {
      modernScreenshot.domToPng(document.querySelector('body')).then(dataURI => {
//        console.image(dataURI,0.5);
        pas.Unit1.Form1.CaptureData.push(dataURI);
        btnRecord.innerHTML = '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-dot fa-fw ps-1 me-2 fa-xl"></i>Recording frame #'+pas.Unit1.Form1.CaptureData.length+'</div>'
      });
    }
  end;
end;

procedure TForm1.tmrConnectTimer(Sender: TObject);
begin

  // We're not ready yet
  if  ConfigurationLoaded = False then exit;

  if (HAWebSocket.Active = False) then
  begin

    if tmrConnect.Tag <= 1 then
    begin
      tmrConnect.Enabled := False;
      dataConfigSTATUS.Caption := 'Connecting';
      tmrConnect.Tag := 11;

      if (editConfigURL.Text = '') or (editConfigTOKEN.Text = '') then
      begin
        dataConfigSTATUS.Caption := 'Config Missing';
      end
      else
      begin
//        HAWebSocket.HostName := 'homeassistant.local';
        HAWebSocket.HostName := Copy(editConfigURL.Text, pos('://', editConfigURL.Text)+3,length(editConfigURL.Text));
        if Pos(':',HAWEBSocket.Hostname) > 0
        then HAWebSocket.Hostname := Copy(HAWebSocket.Hostname,1,Pos(':', HAWebSocket.Hostname)-1);

        HAWebSocket.PathName := '/api/websocket';

        HAWebSocket.Port := 8123;
        if Pos(':', RightStr(Trim(editConfigURL.Text),6)) > 0
        then HAWebSocket.Port := StrToIntDef(Trim(Copy(editConfigURL.Text, LastDelimiter(':', editConfigURL.Text)+1, 5)),80);

        HAWebSocket.UseSSL := False;
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

  if labelShutdown.tag = 0
  then Form1.Close
  else window.location.reload(true);
end;

procedure TForm1.tmrHidePopupsTimer(Sender: TObject);
begin
  tmrHidePopups.Enabled := False;
  PopupVisible := false;
//  divLightSwitch.ElementHandle.style.setProperty('z-index','-1');
//  divLightDimmer.ElementHandle.style.setProperty('z-index','-1');
//  divLightColor.ElementHandle.style.setProperty('z-index','-1');
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
  UpdateNow;
  divAllLights.ElementHandle.style.setProperty('opacity','1');
end;


procedure TForm1.tmrRefreshTimer(Sender: TObject);
begin
  // Request full set of states again
  HAID := HAID + 1;
  HAGetStates := HAID;
  HAWebSocket.Send('{"id":'+IntToStr(HAID)+',"type": "get_states"}');
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
  UpdateRing3: Boolean;

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
          memory = parseInt(performance.memory.totalJSHeapSize) || 0;
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
      ringSeconds,                               // TWebHTMLDiv
      segment+'/60',                             // Data
      '["var(--TxRing1)","var(--TxRingB)"]',     // Fill
      '0deg',                                    // Rotation
      138,                                       // Inner Radius
      ''                                         // Text
    );

    // Seconds Marker (Ring 1)
    rotation := IntToStr((current_seconds_60 * 6) - 2);
    Sparkline_Donut(
      50, 0, 300, 300,                           // T, L, W, H
      ringSecondsMarker,                         // TWebHTMLDiv
      '4/360',                                   // Data
      '["var(--TxRing1)","transparent"]',        // Fill
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
        ringMinutes,                             // TWebHTMLDiv
        segment+'/3600',                         // Data
        '["var(--TxRing2)","var(--TxRingB)"]',   // Fill
        '0deg',                                  // Rotation
        128,                                     // Inner Radius
        ''                                       // Text
      );

      // minutes Marker (Ring 2)
      rotation := IntToStr((current_seconds_3600 div 10) - 2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        ringMinutesMarker,                       // TWebHTMLDiv
        '4/360',                                 // Data
        '["var(--TxRing2)","transparent"]',      // Fill
        rotation+'deg',                          // Rotation
        93,                                      // Inner Radius
        ''                                       // Text
      );

      // Hours (Ring 3)
      segment := IntToStr(current_seconds);
      Sparkline_Donut(
        75,25,250,250,                           // T, L, W, H
        ringHours,                               // TWebHTMLDiv
        segment+'/86400',                        // Data
        '["var(--TxRing3)","var(--TxRingB)"]',   // Fill
        '0deg',                                  // Rotation
        118,                                     // Inner Radius
        ''                                       // Text
      );

      // Hours Marker (Ring 3)
      // 86400s in day / 360deg = 240s/deg rotat
      rotation := IntToStr((current_seconds div 240) - 2);
      Sparkline_Donut(
        50, 0, 300, 300,                         // T, L, W, H
        ringHoursMarker,                         // TWebHTMLDiv
        '4/360',                                 // Data
        '["var(--TxRing3)","transparent"]',      // Fill
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
          ringDawnDusk,                            // TWebHTMLDiv
          segment+'/360',                          // Data
          '["var(--TxRing4)","transparent"]',      // Fill
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
          ringRiseSet,                             // TWebHTMLDiv
          segment+'/360',                          // Data
          '["var(--TxRing5)","transparent"]',      // Fill
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
      if divHomeMoon.HTML.Text <> MoonIcon
      then divHomeMoon.HTML.Text := MoonIcon;
      // Moon Title
      if divHomeMoon.ElementHandle.getAttribute('title') <> MoonTitle
      then divHomeMoon.ElementHandle.setAttribute('title', MoonTitle);

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
        // Climate Temperature (Ring 1)
        segment_start := Trunc(((ClimateCurrent-ClimateMinTempRange)*280) / (ClimateMaxTempRange-ClimateMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(280-segment_start)+',80';
        Sparkline_Donut(
          55, 5, 290, 290,                                      // T, L, W, H
          ringClimateTemperature,                               // TWebHTMLDiv
          segment,                                              // Data
          '["var(--CxRing1)","var(--CxRingB)","transparent"]',  // Fill
          '220deg',                                             // Rotation
          138,                                                  // Inner Radius
          ''                                                    // Text
        );

        // Climate Temperature Marker (Ring 1)
        rotation := IntToStr(220+Trunc(((ClimateCurrent-ClimateMinTempRange)*280) / (ClimateMaxTempRange-ClimateMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringClimateTemperatureMarker,                         // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--CxRing1)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
        );
      end;

      if (UpdateRing2 = True) or (tmrSeconds.Tag = 1) then
      begin
        // Setpoint (Ring 2)
        segment_start := Trunc(((Max(ClimateSetPoint-ClimateMinTempRange,0))*290) / (ClimateMaxTempRange-ClimateMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(290-segment_start)+',70';
        Sparkline_Donut(
          65, 15, 270, 270,                                     // T, L, W, H
          ringSetPoint,                                         // TWebHTMLDiv
          segment,                                              // Data
          '["var(--CxRing2)","var(--CxRingB)","transparent"]',  // Fill
          '215deg',                                             // Rotation
          128,                                                  // Inner Radius
          ''                                                    // Text
        );

        // SetPoint Marker (Ring 2)
        rotation := IntToStr(215+Trunc(((Max(ClimateSetpoint-ClimateMinTempRange,0))*290) / (ClimateMaxTempRange-ClimateMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringSetPointMarker,                                   // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--CxRing2)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
        );
      end;

      if (UpdateRing3 = True) or (tmrSeconds.Tag = 1) then
      begin
        // Humidity (Ring 3)
        segment_start := Trunc((ClimateHumidity*300) / 100);
        segment := IntToStr(segment_start)+','+IntToStr(300-segment_start)+',60';
        Sparkline_Donut(
          75, 25, 250, 250,                                     // T, L, W, H
          ringClimateHumidity,                                  // TWebHTMLDiv
          segment,                                              // Data
          '["var(--CxRing3)","var(--CxRingB)","transparent"]',  // Fill
          '210deg',                                             // Rotation
          118,                                                  // Inner Radius
          ''                                                    // Text
        );

        // Humidity Marker (Ring 3)
        rotation := IntToStr(210+Trunc((ClimateHumidity*300) / 100)-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringClimateHumidityMarker,                            // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--CxRing3)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
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
      display := '<span>'+Trim(FloatToStrF(WeatherPressure,ffNumber,5,1)+' kPa')+'</span>';
      if WeatherTendency = 'Rising'
      then display := display+'<i class="fa-solid fa-arrow-up ms-2"></i>';
      if WeatherTendency = 'Falling'
      then display := display+'<i class="fa-solid fa-arrow-down ms-2"></i>';
      if labelWeatherPressure.HTML <> display then
      begin
        labelWeatherPressure.HTML := display;
        UpdateRing2 := True;
      end;

      // Display Radar + Satellite links?
      if Trim(WeatherRadarLink) <> '' then
      begin
        btnRadar.Visible := True;
        btnRadar.ElementHandle.style.setProperty('opacity','0.25');
      end
      else btnRadar.Visible := False;
      if Trim(WeatherSatelliteLink) <> '' then
      begin
        btnSatellite.Visible := True;
        btnSatellite.ElementHandle.style.setProperty('opacity','0.25');
      end
      else btnSatellite.Visible := False;

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

      // Pressure rounded to 2, then +/- 2 to get Range
      WeatherMinPressureRange := (Round(WeatherMinPressure / 2) * 2) - 2;
      WeatherMaxPressureRange := (Round(WeatherMaxPressure / 2) * 2) + 2;


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
      display := Trim(FloatToStrF(WeatherMinPressure,ffNumber,5,1)+' kPa');
//      display := Trim(FloatToStrF(WeatherMinTPressure,ffGeneral,5,0);
      if DataWeatherMinPressure.Caption <> display then
      begin
        DataWeatherMinPressure.Caption := display;
        UpdateRing1 := True;
        UpdateRing2 := True;
      end;

      // Maximum Weather Pressure
      display := Trim(FloatToStrF(WeatherMaxPressure,ffNumber,5,1)+' kPa');
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
        // Weather Temperature (Ring 1)
        segment_start := Trunc(((WeatherTemperature-WeatherMinTempRange)*280) / (WeatherMaxTempRange-WeatherMinTempRange));
        segment := IntToStr(segment_start)+','+IntToStr(280-segment_start)+',80';
        Sparkline_Donut(
          55, 5, 290, 290,                                      // T, L, W, H
          ringWeatherTemperature,                               // TWebHTMLDiv
          segment,                                              // Data
          '["var(--WxRing1)","var(--WxRingB)","transparent"]',  // Fill
          '220deg',                                             // Rotation
          138,                                                  // Inner Radius
          ''                                                    // Text
        );

        // Weather Temperature Marker (Ring 1)
        rotation := IntToStr(220+Trunc(((WeatherTemperature-WeatherMinTempRange)*280) / (WeatherMaxTempRange-WeatherMinTempRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringWeatherTemperatureMarker,                         // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--WxRing1)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
        );
      end;

      if (UpdateRing2 = True) or (tmrSeconds.Tag = 1) then
      begin

        // Pressure (Ring 2)
        segment_start := Trunc(((WeatherPressure-WeatherMinPressureRange)*290) / (WeatherMaxPressureRange-WeatherMinPressureRange));
        segment := IntToStr(segment_start)+','+IntToStr(290-segment_start)+',70';
        Sparkline_Donut(
          65, 15, 270, 270,                                     // T, L, W, H
          ringWeatherPressure,                                  // TWebHTMLDiv
          segment,                                              // Data
          '["var(--WxRing2)","var(--WxRingB)","transparent"]',  // Fill
          '215deg',                                             // Rotation
          128,                                                  // Inner Radius
          ''                                                    // Text
        );

        // Pressure Marker (Ring 2)
        rotation := IntToStr(215+Trunc(((WeatherPressure-WeatherMinPressureRange)*290) / (WeatherMaxPressureRange-WeatherMinPressureRange))-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringWeatherPressureMarker,                            // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--WxRing2)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
        );
      end;

      if (UpdateRing3 = True) or (tmrSeconds.Tag = 1) then
      begin
        // Humidity (Ring 3)
        segment_start := Trunc((WeatherHumidity*300) / 100);
        segment := IntToStr(segment_start)+','+IntToStr(300-segment_start)+',60';
        Sparkline_Donut(
          75, 25, 250, 250,                                     // T, L, W, H
          ringWeatherHumidity,                                  // TWebHTMLDiv
          segment,                                              // Data
          '["var(--WxRing3)","var(--WxRingB)","transparent"]',  // Fill
          '210deg',                                             // Rotation
          118,                                                  // Inner Radius
          ''                                                    // Text
        );

        // Humidity Marker (Ring 3)
        rotation := IntToStr(210+Trunc((WeatherHumidity*300) / 100)-2);
        Sparkline_Donut(
          50, 0, 300, 300,                                      // T, L, W, H
          ringWeatherHumidityMarker,                            // TWebHTMLDiv
          '4/360',                                              // Data
          '["var(--WxRing3)","transparent"]',                   // Fill
          rotation+'deg',                                       // Rotation
          113,                                                  // Inner Radius
          ''                                                    // Text
        );
      end;
    end;



    // Energy Panel //////////////////////////////////////////////////////////////////////////////////

    // Updates once a minute at 45s mark
    if (current_seconds_60 = 45) or (tmrSeconds.Tag = 1) then
    begin

      // Display current energy use
      display := FloatToStrF(EnergyUse, ffNumber,5,0)+' W';
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
        display := '<img style="width:50px; height:50px;" src='+editConfigURL.Text+Person1Photo+'>';
        if divPerson1.HTML.Text <> display then
        begin
          divPerson1.HTML.Text := display;
          divPerson1.ElementHandle.style.setProperty('opacity','1');
          divPerson1.ElementHandle.firstElementChild.setAttribute('crossorigin','anonymous');
        end;
      end;
      if Person2Photo <> '' then
      begin
        display := '<img style="width:50px; height:50px;" src='+editConfigURL.Text+Person2Photo+'>';
        if divPerson2.HTML.Text <> display then
        begin
          divPerson2.HTML.Text := display;
          divPerson2.ElementHandle.style.setProperty('opacity','1');
          divPerson2.ElementHandle.firstElementChild.setAttribute('crossorigin','anonymous');
        end;
      end;

      // Energy Now (Ring 1)
      Sparkline_Donut(
        55, 5, 290, 290,                                // T, L, W, H
        ringEnergyUse,                                  // TWebHTMLDiv
        '1200/1800',                                    // Data
        '["var(--ExRing1)","var(--ExRingB)"]',          // Fill
        '180deg',                                       // Rotation
        138,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Now Marker (Ring 1)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        ringEnergyUseMarker,                            // TWebHTMLDiv
        '4/360',                                        // Data
        '["var(--ExRing1)","transparent"]',             // Fill
        '58deg',                                        // Rotation
        113,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Today (Ring 2)
      Sparkline_Donut(
        65, 15, 270, 270,                               // T, L, W, H
        ringEnergyToday,                                // TWebHTMLDiv
        '1500/1800',                                    // Data
        '["var(--ExRing2)","var(--ExRingB)"]',          // Fill
        '180deg',                                       // Rotation
        128,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Today Marker (Ring 2)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        ringEnergyTodayMarker,                          // TWebHTMLDiv
        '4/360',                                        // Data
        '["var(--ExRing2)","transparent"]',             // Fill
        '118deg',                                       // Rotation
        113,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Yesterday (Ring 3)
      Sparkline_Donut(
        75, 25, 250, 250,                               // T, L, W, H
        ringEnergyYesterday,                            // TWebHTMLDiv
        '600/1800',                                     // Data
        '["var(--ExRing3)","var(--ExRingB)"]',          // Fill
        '180deg',                                       // Rotation
        118,                                            // Inner Radius
        ''                                              // Text
      );

      // Energy Yesterday Marker (Ring 3)
      Sparkline_Donut(
        50, 0, 300, 300,                                // T, L, W, H
        ringEnergyYesterdayMarker,                      // TWebHTMLDiv
        '4/360',                                        // Data
        '["var(--ExRing3)","transparent"]',             // Fill
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

        divAllLights.replaceChildren();

        if (all.length > 0) {
          for (var i = 0; i < all.length; i++) {

            // Create a new button
            var lightbtn = document.createElement("div");
            lightbtn.id = 'light-'+all[i].entity_id;
            lightbtn.classList.add('LightButton');

            var lighttxt = document.createElement("div");
            lighttxt.textContent = all[i].attributes["friendly_name"].replace(' ','\n');
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
              if (all[i].attributes["hs_color"] !== undefined) {
                var rgb = window.rgbFromHSV(
                  parseInt(all[i].attributes["hs_color"][0] || 0),
                  parseInt(all[i].attributes["hs_color"][1] || 0) / 100,
                  parseInt(all[i].attributes["brightness"]/2.56 || 0) / 100
                )
                lightbtn.style.setProperty("background-color","rgb("+rgb[0]+","+rgb[1]+","+rgb[2]+")")
              }
              else if (all[i].attributes["brightness"] !== undefined) {
                var rgb = parseInt(all[i].attributes["brightness"] || 0);
                lightbtn.style.setProperty("background-color","rgb("+rgb+","+rgb+","+rgb+")")
              }
            }
            // If button is off or disabled, color not usually available
            else if (all[i].state == "off") {
              lightbtn.classList.add('LightOff');
            }
            else {
              lightbtn.classList.add('LightOther');
            }

            // Find the Home Assistant Icon to use
            var lighticon = document.createElement("iconify-icon");
            var icon = "mdi:lightbulb";
            if (all[i].attributes["icon"] !== undefined) {
              icon = all[i].attributes["icon"];
            }

            // Add button to the page
            divAllLights.appendChild(lightbtn);

            // Add Icon to the button
            lightbtn.appendChild(lighticon);
            lighticon.setAttribute("icon",icon);
            lighticon.classList.add("LightIcon");

            // Add Text to the button
            lightbtn.appendChild(lighttxt);

            // Call Delphi function when someone clicks on a button
            lightbtn.addEventListener('click',function(e){pas.Unit1.Form1.LightButtonClicked(e.target.id); e.stopPropagation;});

          }

          if (this.PopupVisible == true) {
            if (this.CurrentLightID !== '') {
              var currid = "light-"+this.CurrentLightID;
              var cloneobj = document.getElementById(currid).cloneNode(true);
              cloneobj.id = 'lightswitch-'+this.CurrentLightID;
              cloneobj.classList.replace('LightButton','LightButtonLabel');
              cloneobj.addEventListener('click',function(e){pas.Unit1.Form1.LightButtonClicked(currid); e.stopPropagation;});

              if (this.LightsWhichSwitch == 1) {
                labelLightSwitch.replaceChildren(cloneobj);
                if (this.Lights.find(o => o.entity_id === this.CurrentLightID).state == "on") {
                  switchlight.setAttribute('checked','');
                }
                else {
                  switchlight.removeAttribute('checked');
                }
              }
              else if (this.LightsWhichSwitch == 2) {
                labelLightDimmer.replaceChildren(cloneobj);
                if (this.Lights.find(o => o.entity_id === this.CurrentLightID).state == "on") {
                  var light = this.Lights.find(o => o.entity_id === this.CurrentLightID).attributes;
                  var lightvalue = 100 * ((parseFloat(light["brightness"]) || 0) / 255);
                  dimmerlight.value = lightvalue;
                  divDimmerThumb.style.setProperty("left",50 + (lightvalue * 4.25) + 'px');
                  labelDimmerValue.textContent = (parseInt(lightvalue) || 0)+' %';
                }
                else {
                  dimmerlight.value = 0;
                  divDimmerThumb.style.setProperty("left","50px");
                  labelDimmerValue.textContent = "0 %";
                }
              }
              else if (this.LightsWhichSwitch == 3) {
                labelLightColor.replaceChildren(cloneobj);
                if (this.Lights.find(o => o.entity_id === this.CurrentLightID).state == "on") {
                  var light = this.Lights.find(o => o.entity_id === this.CurrentLightID).attributes;
                  colorlight.value = "hsv("+light["hs_color"][0]+","+
                                            light["hs_color"][1]+"%,"+
                                            parseInt(light["brightness"] / 2.56)
                                        ")";
                }
                else {
                  colorlight.value = "rgb(0,0,0)";
                }
              }
            }
          }
        }
      }
    end;
  end;

  /////////////////////////////////////////////////////////////////////////////////////////////////
  // Scenes Page
  /////////////////////////////////////////////////////////////////////////////////////////////////

  if (pages.TabIndex = 3) or (tmrSeconds.Tag = 3) then
  begin

    asm
      if (this.HAScenesLoaded !== JSON.stringify(this.HAScenes)) {

        this.HAScenesLoaded = JSON.stringify(this.HAScenes);
        divScenes.replaceChildren();

        if (this.HAScenes.length > 0) {
          for (var i = 0; i < this.HAScenes.length; i++) {

            // Create a new button
            var scenebtn = document.createElement("div");
            scenebtn.id = 'scene-'+this.HAScenes[i].entity_id;
            scenebtn.setAttribute('sceneid',this.HAScenes[i].entity_id);

            // Not draggable by default
            scenebtn.classList.add('SceneButton','not-draggable');

            // Want to layout the buttons in a sensible way
            scenebtn.style.setProperty('position','absolute');
            if (this.SceneState[this.HAScenes[i].entity_id] !== undefined)  {
              scenebtn.style.setProperty('top',this.SceneState[this.HAScenes[i].entity_id][1]+'px');
              scenebtn.style.setProperty('left',this.SceneState[this.HAScenes[i].entity_id][0]+'px');
            } else {
              scenebtn.style.setProperty('top',this.PositionScenes[i*2+8*parseInt(i/4)].y+'px');
              scenebtn.style.setProperty('left',this.PositionScenes[i*2+8*parseInt(i/4)].x+'px');
            }

            // Set Jiggle Animation Properties
            scenebtn.style.setProperty('transform-origin',parseInt(10+Math.random()*80)+'% '+parseInt(10+Math.random()*80)+'%');
            scenebtn.style.setProperty('animation-duration',(0.40+Math.random()*0.40)+'s');
            scenebtn.style.setProperty('animation-iteration-count','infinite');
            scenebtn.style.setProperty('animation-timing-function','ease-in-out');

            var scenetxt = document.createElement("div");
            scenetxt.textContent = this.HAScenes[i].attributes["friendly_name"];
            scenetxt.classList.add('SceneText');

            // Find the Home Assistant Icon to use
            var sceneicon = document.createElement("iconify-icon");
            var icon = "mdi:scenebulb";
            if (this.HAScenes[i].attributes["icon"] !== undefined) {
              icon = this.HAScenes[i].attributes["icon"];
            }

            // Add button to the page
            divScenes.appendChild(scenebtn);

            // Add Icon to the button
            scenebtn.appendChild(sceneicon);
            scenebtn.appendChild(sceneicon);
            scenebtn.appendChild(sceneicon);
            sceneicon.setAttribute("icon",icon);
            sceneicon.classList.add("SceneIcon");

            // Add Text to the button
            scenebtn.appendChild(scenetxt);

            // Call Delphi function when someone clicks on a button

            scenebtn.addEventListener('click',function(e){
              pas.Unit1.Form1.SceneButtonClicked(e.target.getAttribute('sceneid'));
              e.stopPropagation;
            });
          }
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
    asm
      var a = colorlight.shadowRoot;
      var b = a.querySelectorAll('[part~="input"]');
      var c = b[0].shadowRoot;
      var d = c.querySelectorAll('[part~="input"]');
      var e = d[0];
      e.style.setProperty('font-family','Cairo');
      e.style.setProperty('font-size','18px');
    end;
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

  if PopupVisible then
  begin
    HidePopups;
  end;

  // Switch the page
  pages.TabIndex := EndPage;
  tmrSeconds.Tag := EndPage;
  tmrSecondsTimer(nil);


  // Cancel Change Mode
  if ChangeMode then
  begin
    ChangeMode := False;
    asm
      btnChange.firstElementChild.classList.remove('text-warning','fa-beat');
      btnChange.style.setProperty('opacity','0.25');
    end;

    // Turn off jiggle mode and drag mode
    if (StartPage = 3) then
    begin
      asm
        var btns = document.querySelectorAll('.SceneButton');
        for (var i = 0; i < btns.length; i++) {
          btns[i].style.removeProperty('animation-name','jigglysmall');
          btns[i].classList.replace('dragdrop','not-draggable');
       }
      end;
    end;

    if PopupVisible
    then HidePopups;
  end;

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

  // Update Change bUtton with Reload Button
  if (EndPage in [0,5,6,7,8,9,10,18,23,24]) then
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

  // Update Radar or  Satellite Image
  if (EndPage in [23,24])
  then btnChangeClick(Sender);

  if (EndPage = 25) then
  begin
    divLocations.ElementHandle.style.setProperty('opacity','1');
    divPersonPhoto.ElementHandle.style.setProperty('opacity','1');
    divPersonInfo.ElementHandle.style.setProperty('opacity','1');
    asm
      this.LocationMap.invalidateSize(true);
      if (this.tabLocations.getDataCount() > 0) {
        this.LocationMap.flyTo([this.tabLocations.getRowFromPosition(1).getCell('a.latitude').getValue(),this.tabLocations.getRowFromPosition(1).getCell('a.longitude').getValue()]);
      }
    end;
  end;

  // Home button on Home Page is bolt if connnected or
  if dataConfigSTATUS.Caption = 'Connected'
  then ShowConnected
  else ShowDisconnected;

  // Configuration button on Configuration Page is Power On/Off otherwise it is a Gear
  if (EndPage = 0) or (EndPage = 18) then
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

    pages.ElementHandle.style.setProperty('transition', 'opacity 1.5s ease');
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
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);

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
  if HAWebSocket.Active then
  begin
    asm
      lights = this.Lights.filter(
        function(o) {
          return ((o.entity_id.indexOf("light.") == 0) && (o.state == "off") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
        }).map( obj => obj.entity_id ).sort();;
//      console.log(lights);
    end;

    for i := 0 to length(lights) do
    begin
      HAID := HAID + 1;
      HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+lights[i]+'"}}');
    end;
  end;
end;

procedure TForm1.btnLightsAllOffClick(Sender: TObject);
var
  lights: Array of String;
  i: integer;
begin
  // Turn on all the lights that are off.
  // This processes the individual lights, excluding light groups
  if HAWebSocket.Active then
  begin
    asm
      lights = this.Lights.filter(
        function(o) {
          return ((o.entity_id.indexOf("light.") == 0) && (o.state == "on") && (o.attributes.lights == undefined) && (o.entity_id.indexOf("_group") == -1) && (o.entity_id.indexOf("_hide") == -1));
        }).map( obj => obj.entity_id ).sort();;
//      console.log(lights);
    end;

    for i := 0 to length(lights) do
    begin
      HAID := HAID + 1;
      HAWebSocket.Send('{"id":'+IntToStr(HAID)+', "type":"call_service", "domain": "light", "service": "toggle", "target": {"entity_id":"'+lights[i]+'"}}');
    end;
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

procedure TForm1.divBackgroundClick(Sender: TObject);
begin
  if PopupVisible
  then HidePopUps;
end;

procedure TForm1.divHomeLightsCoverClick(Sender: TObject);
begin
  // Home Page -> Lights
  SwitchPages(1,16);
end;

procedure TForm1.DisplayPerson;
var
  PersonalInfo: String;
begin
  // Try and get the very latest data
  HAID := HAID + 1;
  HAGetPeople := HAID;
  HAWebSocket.Send('{"id":'+IntToStr(HAGetPeople)+',"type": "history/stream", "start_time":"'+FormatDateTime('yyyy-MM-dd HH:nn:ss',Now-15)+'", "entity_ids":["'+Person1Sensor+'","'+Person2Sensor+'"]}');

  // Update the photo
  if CurrentPerson = 1 then divPersonPhoto.HTML.Text := '<img style="width:150px; height:150px;" src='+editConfigURL.Text+Person1Photo+'>';
  if CurrentPerson = 2 then divPersonPhoto.HTML.Text := '<img style="width:150px; height:150px;" src='+editConfigURL.Text+Person2Photo+'>';


  PersonalInfo := '<div class="d-flex flex-column h-100 justify-content-center align-items-start">';
  // Search for content
  asm
    var search = '';
    var interesting = [];
    var current_lat = 0.0;
    var current_lon = 0.0;

    // Searching for the name of a person
    if (this.CurrentPerson == 1) { search = this.Person1Sensor.split('.')[1]; }
    if (this.CurrentPerson == 2) { search = this.Person2Sensor.split('.')[1]; }

    // Searching all the Home Assistant objects
    for (var i = 0; i < this.HAStates.length; i++) {
      if (this.HAStates[i].entity_id == 'person.'+search) {
        current_lat = this.HAStates[i].attributes.latitude;
        current_lon = this.HAStates[i].attributes.longitude;
      }
      // Matches search
      if (this.HAStates[i].entity_id.indexOf(search) > -1) {
        var item = this.HAStates[i];
        // If it has all of our attributes, add it to our 'interesting' array
        if ((item.attributes.icon !== undefined) && (item.attributes.unit_of_measurement !== undefined) && (item.attributes.friendly_name !== undefined) && !isNaN(item.state)) {
          interesting.push({name:item.attributes.friendly_name, value:item.state, icon: item.attributes.icon, units: item.attributes.unit_of_measurement});
        }
      }
    }

    // Sort our interesting array by units and then by name
    interesting.sort((a,b) => ((a.units+a.name) > (b.units+b.name)) - ((a.units+a.name) < (b.units+b.name)));

    // Add our interesting array to the display
    for (var i = 0; i < interesting.length; i++) {
      PersonalInfo += '<div class="Text TextBG Blue p-0 m-0 d-flex justify-content-center align-items-center"><iconify-icon icon='+interesting[i].icon+'></iconify-icon>';
      PersonalInfo += '<div class="Text TextBG White p-0 m-0 ms-2">'+parseInt(interesting[i].value)+'</div></div>';
      PersonalInfo += '<div style="margin:-8px 0px 4px 0px;" class="Text TextXS Gray p-0">'+interesting[i].name+' - '+interesting[i].units+'</div>';
    }



    // Draw the map for the first time?
    if (pas.Unit1.Form1.LocationMap == undefined) {
      pas.Unit1.Form1.LocationMap = L.map('divLocationMap').setView([current_lat-0.1, current_lon], 12);
      L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
      }).addTo(pas.Unit1.Form1.LocationMap);

      // Add locations we know about
      for (var i = 0; i < this.HAZones.length; i++) {
        var coords = [this.HAZones[i].attributes.latitude, this.HAZones[i].attributes.longitude];
        var radius = this.HAZones[i].attributes.radius;
        var ZoneMarker = L.ExtraMarkers.icon({
          innerHTML: '<iconify-icon title="'+this.HAZones[i].attributes.friendly_name+'" icon='+this.HAZones[i].attributes.icon+' style="color: white; font-size:20px; margin-top:7px;"></iconify-icon>',
          markerColor: 'green-dark',
          shape: 'square'
        });
        L.marker(coords, {icon: ZoneMarker}).addTo(pas.Unit1.Form1.LocationMap);
        L.circle(coords, radius, {color: "darkgren", fillOpacity: 0.75, fillColor: "darkgreen"}).addTo(pas.Unit1.Form1.LocationMap);
      }

    }
  end;

  PersonalInfo := PersonalInfo+'</div>';
  divPersonInfo.HTML.Text := PersonalInfo;

end;

procedure TForm1.divPerson1Click(Sender: TObject);
begin
  CurrentPerson := 1;
  SwitchPages(1,25);
end;

procedure TForm1.divPerson2Click(Sender: TObject);
begin
  CurrentPerson := 2;
  SwitchPages(1,25);
end;

procedure TForm1.divWeatherCoverClick(Sender: TObject);
begin
  SwitchPages(1,21);
end;

procedure TForm1.DrawWeather(Element: TWebHTMLDiv; WeatherData: JSValue; ShowTime:Boolean);
var
  weathercondition: String;
  weathericon: String;
begin
  // Get updated weather condition value (prettied up) and the icon
  asm weathercondition = WeatherData.condition; end;
  weathericon := GetWeatherIcon(weathercondition);

  asm
    // A fixed width implies a fixed height for the icon.
    weathericon = '<img title="'+weathercondition+'" width="75" src="weather-icons-dev/production/fill/svg/'+weathericon+'.svg">'

    // Use Luxon to get our UTC timestamp into today's date. Luxon('ccc') = FormatDateTime('ddd') if anyone is wondering
    var wday = '<div class="Text TextRG White m-0 p-0 pb-1">'+luxon.DateTime.fromISO(WeatherData.datetime,{zone:"utc"}).setZone("system").toFormat('ccc')+'</div>';

    // Same goes for the time. We're assuming :00 here just in case it isn't!
    var wtime = '';
    if (ShowTime == true) {
      wtime = '<div class="Text TextSM Gray m-0 p-0">'+luxon.DateTime.fromISO(WeatherData.datetime,{zone:"utc"}).setZone("system").toFormat('HH:00')+'</div>';
    } else {
      wtime = '<div class="Text TextSM Gray m-0 p-0">'+luxon.DateTime.fromISO(WeatherData.datetime,{zone:"utc"}).setZone("system").toFormat('MMM dd')+'</div>';
    }


    // These should all be numbers.  But sometimes they are missing or are returned as null values
    var maxtemp = WeatherData.temperature;
    var mintemp = WeatherData.templow;
    var pop = WeatherData.precipitation_probability;
    var precip = WeatherData.precipitation;

    // The first vertical section has the icon on the left and the date/time on the right
    var weather = '<div class="d-flex m-0 p-0 flex-row align-items-between" style="margin-bottom:-10px !important;">'+
                    weathericon+
                    '<div class="d-flex flex-column m-0 mb-1 p-0 h-100 w-100 align-items-center justify-content-center">'+
                      wday+
                      wtime+
                    '</div>'+
                  '</div>';

    // The second vertical section has the Hi and Lo values, either of which may be missing
    weather += '<div class="d-flex m-0 p-0 gap-3 flex-row justify-content-center align-items-baseline">';
    if (!isNaN(maxtemp) && (maxtemp !== null)) {
      weather += '<div><span class="Text TextSM Gray m-0 pe-2">Hi</span>'+
                 '<span class="Text TextLG White m-0 p-0">'+maxtemp+'</span></div>';
    }
    if (!isNaN(mintemp) && (mintemp !== null)) {
      weather += '<div><span class="Text TextSM Gray m-0 pe-2">Lo</span>'+
                 '<span class="Text TextLG White m-0 p-0">'+mintemp+'</span></div>';
    }
    weather += '</div>';

    // The third vertical section has the Pop and Precip values, either of which may be missing
    weather += '<div class="d-flex m-0 p-0 gap-3 flex-row justify-content-center align-items-baseline">';
    if (!isNaN(pop) && (pop !== null)) {
      weather += '<div><span class="Text TextSM Gray m-0 pe-2">Pop</span>'+
                 '<span class="Text TextRG White m-0 p-0">'+pop+'%</span></div>';
    }
    if (!isNaN(precip) && (precip !== null) && (precip !== 0)) {
      weather += '<div><span class="Text TextSM Gray m-0 pe-2">'+this.WeatherPrecipUnits+'</span>'+
                 '<span class="Text TextRG White m-0 p-0">'+precip+'</span></div>';
    }
    weather += '</div>';

    // Assign all that to the box we're updating
    Element.innerHTML = weather;

    // And if we've got a Probability of Precipitation, lets change the background
    // color of the block to indicate its value (0%..100% -> blue = 0..255 )
    Element.style.setProperty('background','rgba(0,0,'+pop*2.55+',0.5)');
  end;

  PreventCompilerHint(weathericon);
end;

procedure TForm1.btnChangeClick(Sender: TObject);
begin

  // If displaying Custom URL then reload <iframe> page
  // 7 = Custom1, 8 = Custom2, 9 = Custom3, 10 = Custom4
  if pages.TabIndex = 7 then
  begin
    divCustom1.HTML.Text := '';
    divCustom1.HTML.Text := '<iframe src="'+CustomPage1URL+'" class="CustomPage">';
  end
  else if pages.TabIndex = 8 then
  begin
    divCustom2.HTML.Text := '';
    divCustom2.HTML.Text := '<iframe src="'+CustomPage2URL+'" class="CustomPage">';
  end
  else if pages.TabIndex = 9 then
  begin
    divCustom3.HTML.Text := '';
    divCustom3.HTML.Text := '<iframe src="'+CustomPage3URL+'" class="CustomPage">';
  end
  else if pages.TabIndex = 10 then
  begin
    divCustom4.HTML.Text := '';
    divCustom4.HTML.Text := '<iframe src="'+CustomPage4URL+'" class="CustomPage">';
  end

  // Weather Radar
  else if (pages.TabIndex = 23) then
  begin
    asm divRadar.replaceChildren(); end;
    divRadar.HTML.Text := '<iframe src="'+WeatherRadarLink+'" width="100%" frameborder="0" style="border:0;height:100%;" allowfullscreen></iframe>';
  end
  // Weather Satellite
  else if (pages.TabIndex = 24) then
  begin
    asm divSatellite.replaceChildren(); end;
    divSatellite.HTML.Text := '<iframe src="'+WeatherSatelliteLink+'" width="100%" frameborder="0" style="border:0;height:100%;" allowfullscreen></iframe>';
  end

  // Person page - Toggle stuff
  else if (pages.Tabindex = 25) then
  begin
    if ChangeMode then
    begin
      ChangeMode := False;
      btnChange.ElementHandle.firstElementChild.classList.remove('text-warning','fa-beat');
      btnChange.ElementHandle.style.setProperty('opacity','0.25');
      divLocations.ElementHandle.style.setProperty('opacity','1');
      divLocations.ElementHandle.style.setProperty('pointer-events','unset');
      divPersonPhoto.ElementHandle.style.setProperty('opacity','1');
      divPersonInfo.ElementHandle.style.setProperty('opacity','1');
      asm
        var els = document.querySelectorAll('.leaflet-control-container,.leaflet-control-attribution');
        for (var i = 0; i < els.length; i++) { els[i].classList.remove('d-none'); }
      end;
    end
    else
    begin
      ChangeMode := True;
      btnChange.ElementHandle.firstElementChild.classList.add('text-warning','fa-beat');
      btnChange.ElementHandle.style.setProperty('opacity','1');
      divLocations.ElementHandle.style.setProperty('opacity','0');
      divLocations.ElementHandle.style.setProperty('pointer-events','none');
      divPersonPhoto.ElementHandle.style.setProperty('opacity','0');
      divPersonInfo.ElementHandle.style.setProperty('opacity','0');
      asm
        var els = document.querySelectorAll('.leaflet-control-container,.leaflet-control-attribution');
        for (var i = 0; i < els.length; i++) { els[i].classList.add('d-none'); }
      end;
    end;
  end

  // Configuration Information
  // 0 = Configuration, 5 = Configuration Sensors, 6 = Configuration Information
  else if (pages.TabIndex = 0) or (pages.TabIndex = 5) or (pages.TabIndex = 6) then
  begin
    labelShutdown.Caption := 'Restarting - Please Wait';
    labelShutdown.Tag := 1; // Restart
    SwitchPages(pages.TabIndex, 18);
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

  // Scenes Change Mode
  else if (pages.Tabindex = 3) and (ChangeMode = False) then
  begin
    ChangeMode := True;
    asm
      btnChange.firstElementChild.classList.add('text-warning','fa-beat');
      btnChange.style.setProperty('opacity','1');

      var btns = document.querySelectorAll('.SceneButton');
      for (var i = 0; i < btns.length; i++) {
        btns[i].style.setProperty('animation-name','jigglysmall');
        btns[i].classList.replace('not-draggable','dragdrop');
      }
    end;
  end
  else if (pages.Tabindex = 3) and (ChangeMode = True) then
  begin
    ChangeMode := False;
    asm
      btnChange.firstElementChild.classList.remove('text-warning','fa-beat');
      btnChange.style.setProperty('opacity','0.25');

      var btns = document.querySelectorAll('.SceneButton');
      for (var i = 0; i < btns.length; i++) {
        btns[i].style.removeProperty('animation-name','jigglysmall');
        btns[i].classList.replace('dragdrop','not-draggable');
      }
    end;
    editConfigChange(sender);
  end

  // Cancel Change Mode regardless of what was being changed
  else if ChangeMode then
  begin
      ChangeMode := False;
      asm
        btnChange.firstElementChild.classList.remove('text-warning','fa-beat');
        btnChange.style.setProperty('opacity','0.25');
      end;

    if PopupVisible
    then HidePopups;

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
    labelShutdown.Caption := 'Shutting Down - Please Wait';
    labelShutdown.Tag := 0; // Shutdown;
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
  then btnlistBackgrounds.Tag := (btnlistBackgrounds.Tag + 1) mod 2
  else btnListBackgrounds.Tag := 0;

  if btnListBackgrounds.Tag = 1 then
  begin
    asm
      btnListBackgrounds.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listBackgrounds.ElementHandle.style.setProperty('height',IntToStr(listBackgrounds.Tag)+'px');
    listBackgrounds.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListBackgrounds.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listBackgrounds.ElementHandle.style.setProperty('height','0px');
    listBackgrounds.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistBackgrounds) then
  begin
//    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListDatesLongClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListDatesLong)
  then btnlistDatesLong.Tag := (btnlistDatesLong.Tag + 1) mod 2
  else btnListDatesLong.Tag := 0;

  if btnListDatesLong.Tag = 1 then
  begin
    asm
      btnListDatesLong.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listDatesLong.ElementHandle.style.setProperty('height',IntToStr(listDatesLong.Tag)+'px');
    listDatesLong.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListDatesLong.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listDatesLong.ElementHandle.style.setProperty('height','0px');
    listDatesLong.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistDatesLong) then
  begin
    btnListBackgroundsClick(Sender);
//    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListDatesShortClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListDatesShort)
  then btnlistDatesShort.Tag := (btnlistDatesShort.Tag + 1) mod 2
  else btnListDatesShort.Tag := 0;

  if btnListDatesShort.Tag = 1 then
  begin
    asm
      btnListDatesShort.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listDatesShort.ElementHandle.style.setProperty('height',IntToStr(listDatesShort.Tag)+'px');
    listDatesShort.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListDatesShort.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listDatesShort.ElementHandle.style.setProperty('height','0px');
    listDatesShort.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistDatesShort) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
//    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListPlaybackClick(Sender: TObject);
begin
  asm
    listPlayback.style.removeProperty('top');
  end;

  if (Sender is TWebButton) and (Sender = btnListPlayback)
  then btnlistPlayback.Tag := (btnlistPlayback.Tag + 1) mod 2
  else btnListPlayback.Tag := 0;

  if btnListPlayback.Tag = 1 then
  begin
    asm
      btnListPlayback.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listPlayback.ElementHandle.style.setProperty('height',IntToStr(listPlayback.Tag)+'px');
    listPlayback.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListPlayback.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listPlayback.ElementHandle.style.setProperty('height','0px');
    listPlayback.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistPlayback) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
//    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListRecordClick(Sender: TObject);
begin
  asm
    listRecord.style.removeProperty('top');
  end;

  if (Sender is TWebButton) and (Sender = btnListRecord)
  then btnlistRecord.Tag := (btnlistRecord.Tag + 1) mod 2
  else btnListRecord.Tag := 0;

  if btnListRecord.Tag = 1 then
  begin
    asm
      btnListRecord.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listRecord.ElementHandle.style.setProperty('height',IntToStr(listRecord.Tag)+'px');
    listRecord.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListRecord.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listRecord.ElementHandle.style.setProperty('height','0px');
    listRecord.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistRecord) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
//    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListTimesLongClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnlistTimeSLong)
  then btnlistTimesLong.Tag := (btnlistTimesLong.Tag + 1) mod 2
  else btnListTimesLong.Tag := 0;

  if btnListTimesLong.Tag = 1 then
  begin
    asm
      btnListTimesLong.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listTimesLong.ElementHandle.style.setProperty('height',IntToStr(listTimesLong.Tag)+'px');
    listTimesLong.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListTimesLong.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listTimesLong.ElementHandle.style.setProperty('height','0px');
    listTimesLong.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistTimesLong) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
//    btnListTimesLongClick(Sender);
    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
    exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnListTimesShortClick(Sender: TObject);
begin
  if (Sender is TWebButton) and (Sender = btnListTimesShort)
  then btnlistTimesShort.Tag := (btnlistTimesShort.Tag + 1) mod 2
  else btnListTimesShort.Tag := 0;

  if btnListTimesShort.Tag = 1 then
  begin
    asm
      btnListTimesShort.firstElementChild.style.setProperty('transform','rotate(180deg)');
    end;
    listTimesShort.ElementHandle.style.setProperty('height',IntToStr(listTimesShort.Tag)+'px');
    listTimesShort.ElementHandle.style.setProperty('opacity','1');
  end
  else
  begin
    asm
      btnListTimesShort.firstElementChild.style.setProperty('transform','rotate(0deg)');
    end;
    listTimesShort.ElementHandle.style.setProperty('height','0px');
    listTimesShort.ElementHandle.style.setProperty('opacity','0');
  end;

  if (Sender is TWebButton) and (Sender = btnlistTimesShort) then
  begin
    btnListBackgroundsClick(Sender);
    btnListDatesLongClick(Sender);
    btnListDatesShortClick(Sender);
    btnListTimesLongClick(Sender);
//    btnListTimesShortClick(Sender);
    btnListRecordClick(Sender);
    btnListPlaybackClick(Sender);
   exit;
  end;

  ResetInactivityTimer(Sender);
end;

procedure TForm1.btnPlaybackClick(Sender: TObject);
var
  FrameCount: Integer;
begin
  // If recording, stop
  if btnRecord.Tag = 1 then
  begin
    await(btnRecordClick(Sender));
  end;

  asm FrameCount = pas.Unit1.Form1.CaptureData.length; end;

  if FrameCount = 0 then
  begin
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-light','btn-warning',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-danger','btn-warning',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-primary','btn-warning',[]);
    btnPlayback.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-play fa-fw fa-xl ps-1 me-2"></i>No Data Recorded</div>';
  end
  else
  begin
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-light','btn-danger',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-warning','btn-danger',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-primary','btn-danger',[]);

    PlaybackRate := 1.0; //fps

    if pos('fps', editConfigPlaybackRate.Text) > 0
    then PlaybackRate := StrToFloat(Trim(Copy(editConfigPlaybackRate.Text,9,2)));

    if pos('fpm', editConfigPlaybackRate.Text) > 0
    then PlaybackRate := StrToFloat(Trim(Copy(editConfigPlaybackRate.Text,9,2))) / 60.0;

    if PlayBackRate >= 1.0
    then btnPlayback.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-play fa-fw fa-xl ps-1 me-2"></i>Play '+IntToStr(FrameCount)+'f  @ '+FloatToStrF(PlaybackRate,ffNumber,5,0)+' fps<i id="ffprogress" class="fa-solid fa-xl" style="margin: 0px 8px 0px auto;"></i></div>'
    else btnPlayback.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-play fa-fw fa-xl ps-1 me-2"></i>Play '+IntToStr(FrameCount)+'f @ '+FloatToStrF(PlaybackRate,ffNumber,5,4)+' fps<i id="ffprogress" class="fa-solid fa-xl" style="margin: 0px 8px 0px auto;"></i></div>';


    asm
      // Load and initialize ffmpeg
      const { createFFmpeg, fetchFile } = FFmpeg;
      const ffmpeg = createFFmpeg({
//        log: true,
        mainName: 'main',
        corePath: 'https://cdn.jsdelivr.net/npm/@ffmpeg/core-st@0.11.1/dist/ffmpeg-core.js'
      });
      await ffmpeg.load();


      function dataURLtoFile(dataurl, filename) {
        var arr = dataurl.split(","),
        mime = arr[0].match(/:(.*?);/)[1],
        bstr = atob(arr[1]),
        n = bstr.length,
        u8arr = new Uint8Array(n);
        while (n--) {
          u8arr[n] = bstr.charCodeAt(n);
        }
        return new File([u8arr], filename, { type: mime });
      }

      ffmpeg.setProgress(async function({ ratio })  {
        console.log('FFmpeg Progress: '+ratio);
      });


      const image2video = async () => {

        // This is the icon at the end of the Playback button
        ffprogress.classList.add('fa-file-circle-plus');

        // Add image files to ffmpeg internal filesystem
        FrameCount = pas.Unit1.Form1.CaptureData.length;
        for (let i = 0; i < FrameCount; i += 1) {
          const num = `000${i}`.slice(-4);
          ffmpeg.FS('writeFile', 'tmp.'+num+'.png', await fetchFile(dataURLtoFile(pas.Unit1.Form1.CaptureData[i],'frame-'+i+'.png')));
        }

        // Done with files, lets start with the notch
        ffprogress.classList.remove('fa-file-circle-plus');
        ffprogress.classList.add('fa-circle-notch', 'fa-spin');
        await sleep(50);


        // Perform the conversion the conversion
        await ffmpeg.run('-framerate', String(pas.Unit1.Form1.PlayBackRate), '-pattern_type', 'glob', '-i', '*.png','-c:v', 'libx264', '-pix_fmt', 'yuv420p', 'out.mp4');

        // Done with the notch, back to the files
        ffprogress.classList.remove('fa-circle-notch','fa-spin');
        ffprogress.classList.add('fa-file-circle-minus');

        // Get the resulting video file
        const data = ffmpeg.FS('readFile', 'out.mp4');

        // Delete image files from ffmpeg internal filesystem
        for (let i = 0; i < FrameCount; i += 1) {
          const num = `000${i}`.slice(-4);
          ffmpeg.FS('unlink', 'tmp.'+num+'.png');
        }
        ffmpeg.exit;

        // Create a place to show the video
        const video = document.createElement('video');

        // Load the video file into the page element
        video.src = URL.createObjectURL(new Blob([data.buffer], { type: 'video/mp4' }));

        // Set some attributes
        video.id = "video";
        video.controls = true;
        video.loop = true;

        // Set some styles
        video.style.setProperty('position','fixed');
        video.style.setProperty('left','0px');
        video.style.setProperty('top','0px');
        video.style.setProperty('width','1280px');
        video.style.setProperty('height','400px');
        video.style.setProperty('z-index','1000');

        // Add to the page
        document.body.appendChild(video);

        // Load and start playing the video
        video.load();
        video.play();

        // Wait for a double-click to unload the video
        video.addEventListener('dblclick',function() {
          video.pause();
          video.removeAttribute('src');
          video.load();
          video.src = '';
          video.srcObject = null;
          video.remove()
        });

        // Set our buttons to indicate the final state
        btnPlayback.classList.replace('btn-light','btn-primary');
        btnPlayback.classList.replace('btn-warning','btn-primary');
        btnPlayback.classList.replace('btn-danger','btn-primary');
        ffprogress.classList.remove('fa-file-circle-minus');
      }

      image2video();

    end;
  end;
end;

procedure TForm1.btnRadarClick(Sender: TObject);
begin
  if WeatherRadarLink <> '' then
  begin
    SwitchPages(1,23);
  end;
end;

procedure TForm1.btnRecordClick(Sender: TObject);
var
  RecordRate: Integer;
  FrameCount: Integer;
begin
  if btnRecord.tag = 0 then
  begin
    btnRecord.Tag := 1;


    // Default 1 fps
    RecordRate := 1000;

    if pos('fps', editConfigRecordRate.Text) > 0
    then RecordRate := 1000 div StrToInt(Trim(Copy(editConfigRecordRate.Text,11,2)));

    if pos('fpm', editConfigRecordRate.Text) > 0
    then RecordRate := 60000 div StrToInt(Trim(Copy(editConfigRecordRate.Text,11,2)));

    tmrCapture.Interval := RecordRate;
    tmrCapture.Enabled := True;

    // Start with fresh capture
    asm this.CaptureData = []; end;

    // Set <input>.value so it gets rendered
    editConfigURL.ElementHandle.setAttribute('value',editConfigURL.Text);
    editConfigToken.ElementHandle.setAttribute('value',editConfigTOKEN.Text);
    editConfigBackground.ElementHandle.setAttribute('value',editConfigBACKGROUND.Text);
    editConfigSHORTDATE.ElementHandle.setAttribute('value',editConfigSHORTDATE.Text);
    editConfigLONGDATE.ElementHandle.setAttribute('value',editConfigLONGDATE.Text);
    editConfigSHORTTIME.ElementHandle.setAttribute('value',editConfigSHORTTIME.Text);
    editConfigLONGTIME.ElementHandle.setAttribute('value',editConfigLONGTIME.Text);
    editConfigRecordRate.ElementHandle.setAttribute('value',editConfigRecordRate.Text);
    editConfigPlaybackRate.ElementHandle.setAttribute('value',editConfigPlaybackRate.Text);

    // Configure Record button as recording
    btnRecord.ElementClassName := StringReplace(btnRecord.ElementClassName,'btn-light','btn-danger',[]);
    btnRecord.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-dot fa-fw ps-1 me-2 fa-xl"></i>Recording...</div>';

    // Reset Playback button
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-danger','btn-light',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-warning','btn-light',[]);
    btnPlayback.ElementClassName := StringReplace(btnPlayback.ElementClassName,'btn-primary','btn-light',[]);
    btnPlayback.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-play fa-fw ps-1 me-2 fa-xl"></i>Start Playback</div>';
  end
  else
  begin
    btnRecord.Tag := 0;
    tmrCapture.Enabled := False;
    asm
      await sleep(1000);
      FrameCount = pas.Unit1.Form1.CaptureData.length;
    end;

    // Reset Record Button
    btnRecord.ElementClassName := StringReplace(btnRecord.ElementClassName,'btn-danger','btn-light',[]);
    btnRecord.Caption := '<div class="d-flex align-items-center justify-content-start"><i class="fa-solid fa-circle-dot fa-fw ps-1 me-2 fa-xl"></i>Recorded '+IntToStr(FrameCount)+' frames</div>';
  end;

end;

procedure TForm1.btnSatelliteClick(Sender: TObject);
begin
  if WeatherSatelliteLink <> '' then
  begin
    SwitchPages(1,24);
  end;
end;

procedure TForm1.ColorSwatchSelected(Sender: TObject);
var
  NewColor: String;
begin
  if ((Sender is TWebButton) and ((Sender as TWebButton).Tag >= 0)) then
  begin
    NewColor := SwatchColors[(Sender as TWebButton).Tag];
    asm
      colorlight.value = NewColor;
      colorlight.updateComplete.then(() => {
        colorlight.dispatchEvent(new Event('sl-change'));
      });
    end;
  end;
  PreventCompilerHint(NewColor);
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
      {"id": 13, "feature":"Weather Sensor 1"     , "example":"eg: weather.city_forecast" },
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
      {"id": 27, "feature":"Person 2"             , "example":"eg: person.someone" },
      {"id": 28, "feature":"Energy Use"           , "example":"eg: sensor.consumption" },
      {"id": 29, "feature":"Weather Tendency"     , "example":"eg: sensor.city_tendency" },
      {"id": 30, "feature":"Weather Radar"        , "example":"eg: RainViewer Link" },
      {"id": 31, "feature":"Weather Satellite"    , "example":"eg: RainViewer Link" },
      {"id": 32, "feature":"Weather Hourly"       , "example":"eg: weather.city_hourly_forecast" },
      {"id": 33, "feature":"Weather Summary"      , "example":"eg: sensor.city_summary" },
      {"id": 34, "feature":"Weather Advisory"     , "example":"eg: sensor.city_advisory" }
    ];
    this.Features = FeatureData.length;

    this.tabSensors = new Tabulator('#divSensors',{
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
    this.tabSensors.on("tableBuilt", function(){
      pas.Unit1.Form1.ConfigTableReady = true;
    });
    this.tabSensors.on("cellEditing", function(cell){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
    this.tabSensors.on("cellEdited", function(cell){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
    this.tabSensors.on("rowMouseOver", function(e, row){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
  end;


  asm
    this.tabLocations = new Tabulator('#divLocations',{
      layout: "fitColumns",
      selectable: 1,
      headerVisible: false,
      initialSort: [
        {column: "lu", dir: "desc"}
      ],
      columnDefaults: {
        resizable: false,
        visible: true
      },
      columns: [
        { title: "Day", field: "lu", width: 50, hozAlign: "center",
          formatter: function(cell, formatterParams, onRendered) {
            return luxon.DateTime.fromMillis(cell.getValue()*1000).toFormat(formatterParams.outputFormat);
          },
          formatterParams: {
            outputFormat: "ccc"
          }
        },
        { title: "Time", field: "lu", width: 60, hozAlign: "center",
          formatter: function(cell, formatterParams, onRendered) {
            return luxon.DateTime.fromMillis(cell.getValue()*1000).toFormat(formatterParams.outputFormat);
          },
          formatterParams: {
            outputFormat: "HH:mm"
          }
        },
        { title: "Icon", field: "s", width: 40, hozAlign: "center",
          formatter: function(cell, formatterParams, onRendered) {
            var Zones = pas.Unit1.Form1.HAZones;
            var ZoneIcon = '<i class="fa-solid fa-person-walking"></i>';
            var Location = cell.getValue();

            if (Location.toUpperCase() == 'STATIONARY') {
              Location = 'Somewhere';
              var ZoneIcon = '<i class="fa-solid fa-store"></i>';
            }
            else if (Location.toUpperCase() == 'NOT_HOME') {
              Location = 'Elsewhere';
              var ZoneIcon = '<i class="fa-solid fa-car-side"></i>';
            }
            else if (Location.toUpperCase() == 'HOME') {
              Location = 'Home';
              var ZoneIcon = '<i class="fa-solid fa-house-chimney"></i>';
            }

            for (var i = 0; i < Zones.length; i ++) {
              if (Zones[i].attributes.friendly_name == cell.getValue()) {
                ZoneIcon = '<iconify-icon icon='+Zones[i].attributes.icon+'></iconify-icon>';
              }
            }
            return ZoneIcon;
          },
          formatterParams: {}
        },
        { title: "Location", field: "s", width: 170,
          formatter: function(cell, formatterParams, onRendered) {
            var Location = cell.getValue();
            if (Location.toUpperCase() == 'STATIONARY') {
              Location = 'Somewhere';
            }
            else if (Location.toUpperCase() == 'NOT_HOME') {
              Location = 'Elsewhere';
            }
            else if (Location.toUpperCase() == 'HOME') {
              Location = 'Home';
            }
            return Location;
          },
          formatterParams: {}
        },
        { title: "Duration", field: "lu", width: 110,
          formatter: function(cell, formatterParams, onRendered) {

            var Table = pas.Unit1.Form1.tabLocations;
            var StartTime = luxon.DateTime.fromMillis(cell.getValue()*1000);
            var EndTime = luxon.DateTime.fromMillis(cell.getValue()*1000);
            var Position  = Table.getRowPosition(cell.getRow());

            if (Position == 1) {
              EndTime = new luxon.DateTime.now();
            } else {
              EndTime = luxon.DateTime.fromMillis(Table.getRowFromPosition(Position - 1).getCell("lu").getValue()*1000);
            }

            var coded = EndTime.diff(StartTime).shiftTo('days','hours','minutes','seconds').toObject();
            var label ='';

            if (coded['days'] > 0) {
              if (coded['minutes'] !== 0) {
                label = coded['days']+'d '+coded['hours']+'h '+coded['minutes']+'m';
              } else {
                if (coded['hours'] !== 0) {
                  label = coded['days']+'d '+coded['hours']+'h';
                } else {
                  label = coded['days']+'d';
                }
              }
            } else if (coded['hours'] > 0) {
              if (coded['minutes'] !== 0) {
                label = coded['hours']+'h '+coded['minutes']+'m';
              } else {
               label = coded['hours']+'h';
              }
            } else {
              label = coded['minutes']+'m';
            }

            return '<div style="height: 100%; width:100%;">'+
                     '<div style="position: absolute; border-radius: 4px; height: 30px; left:0px; background: rgba(128,128,128,0.5); width: '+parseInt(105*(Math.max(15,Math.min(720,EndTime.diff(StartTime).shiftTo('minutes').toObject()['minutes'])) / 720))+'px"></div>'+
                     '<div style="position:absolute; color: white; text-align: center; left:0px; width:105px;">'+label+'</div>'+
                   '</div>';

          },
          formatterParams: {}
        },
        { title: "Latitude", field: "a.latitude", visible: false },
        { title: "Longitude", field: "a.longitude", visible: false },
        { title: "Radius", field: "a.gps_accuracy", visible: false },
      ]
    });
    this.tabLocations.on("rowMouseOver", function(e, row){
      pas.Unit1.Form1.ResetInactivityTimer;
    });
    this.tabLocations.on("rowSelected", function(row){
      var coords = [row.getCell('a.latitude').getValue(),row.getCell('a.longitude').getValue()];
      var radius = row.getCell('a.gps_accuracy').getValue();
      pas.Unit1.Form1.LocationMap.flyTo(coords);
      if (pas.Unit1.Form1.PersonMarker == undefined) {
        var PersonMarker = L.ExtraMarkers.icon({
          icon: 'fa-map-pin',
          extraClasses: 'fa-solid fa-3x',
          markerColor: 'blue',
          shape: 'circle'
        });
        pas.Unit1.Form1.PersonMarker = L.marker(coords, {icon:PersonMarker, zIndexOffset:100}).addTo(pas.Unit1.Form1.LocationMap);
        pas.Unit1.Form1.PersonCircle = L.circle(coords,radius, {color: "royalblue", fillOpacity: 0.75, fillColor: "royalblue"}).addTo(pas.Unit1.Form1.LocationMap);
      }
      else {
        pas.Unit1.Form1.PersonMarker.setLatLng(coords);
        pas.Unit1.Form1.PersonCircle.setLatLng(coords);
        pas.Unit1.Form1.PersonCircle.setRadius(radius);
      }
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

procedure TForm1.StopLinkerRemoval(P: Pointer);                          begin end;
procedure TForm1.PreventCompilerHint(I: integer);              overload; begin end;
procedure TForm1.PreventCompilerHint(J: JSValue);              overload; begin end;
procedure TForm1.PreventCompilerHint(S: string);               overload; begin end;
procedure TForm1.PreventCompilerHint(H: TJSHTMLElement);       overload; begin end;

initialization
  RegisterClass(TForm1);

end.