object Form1: TForm1
  Width = 1280
  Height = 400
  Color = clBlack
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  FormStyle = fsStayOnTop
  Shadow = False
  ShowClose = False
  OnCreate = MiletusFormCreate
  ClientHeight = 400
  ClientWidth = 1280
  BorderStyle = bsNoneBorder
  Position = poScreenCenter
  BorderIcons = []
  object pages: TWebPageControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 400
    HelpType = htKeyword
    ElementClassName = 'Page'
    ElementID = 'pages'
    Align = alClient
    ElementFont = efCSS
    TabIndex = 11
    ShowTabs = False
    TabOrder = 0
    Visible = False
    object pageConfiguration: TWebTabSheet
      Tag = 4
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageConfiguration'
      Caption = 'Cf'
      ChildOrder = 3
      ElementFont = efCSS
      ShowCaption = False
      TabVisible = False
      object titleCatheedral: TWebLabel
        Left = 40
        Top = 10
        Width = 390
        Height = 50
        AutoSize = False
        Caption = 'Catheedral'
        ElementLabelClassName = 'Title'
        ElementID = 'titleCatheedral'
        ElementFont = efCSS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -43
        Font.Name = 'Tahoma'
        Font.Style = []
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        ParentFont = False
        WidthStyle = ssAuto
        WidthPercent = 100.000000000000000000
      end
      object divConfigURL: TWebHTMLDiv
        Left = 40
        Top = 85
        Width = 700
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigURL'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object lablelConfigURL: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigURL'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<span class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; ' +
            'font-size:24px;"></span>HA URL'
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object editConfigURL: TWebEdit
          Left = 150
          Top = 0
          Width = 550
          Height = 40
          Align = alClient
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigURL'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 100
          TextHint = 'Enter Home Assistant URL'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigURLChange
        end
      end
      object divConfigTOKEN: TWebHTMLDiv
        Left = 40
        Top = 125
        Width = 700
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigTOKEN'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigTOKEN: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigTOKEN'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<span class="pe-2 mdi mdi-home-assistant" style="color:#3399CC; ' +
            'font-size:24px;"></span>HA Token'
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object editConfigTOKEN: TWebEdit
          Left = 150
          Top = 0
          Width = 550
          Height = 40
          Align = alClient
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigTOKEN'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          PasswordChar = '*'
          SpellCheck = False
          TabOrder = 101
          TextHint = 'Enter Home Assistant Long-Lived Token'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigTOKENChange
        end
      end
      object divConfigBACKGROUND: TWebHTMLDiv
        Left = 40
        Top = 165
        Width = 700
        Height = 40
        ElementClassName = 'Holder'
        ElementID = 'divConfigBACKGROUND'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigBACKGROUND: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Background'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigBACKGROUND'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object editConfigBACKGROUND: TWebEdit
          Left = 150
          Top = 0
          Width = 520
          Height = 40
          Align = alClient
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigBACKGROUND'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 100
          TextHint = 'Enter Background CSS Style'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigBACKGROUNDChange
        end
        object btnListBackgrounds: TWebButton
          Left = 670
          Top = 0
          Width = 30
          Height = 40
          Align = alRight
          Caption = '<i class="fa-solid fa-caret-down"></i>'
          ChildOrder = 2
          ElementClassName = 'ConfigListButton btn btn-light opacity-75'
          ElementID = 'btnListBackgrounds'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnListBackgroundsClick
        end
      end
      object divConfigLONGDATE: TWebHTMLDiv
        Left = 40
        Top = 205
        Width = 700
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigLONGDATE'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigLONGTIME: TWebLabel
          Left = 440
          Top = 0
          Width = 80
          Height = 40
          Align = alRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'Time'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigLONGTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 537
        end
        object labelConfigLONGDATE: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date (Long)'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigLONGDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitTop = -6
        end
        object editConfigLONGDATE: TWebEdit
          Left = 150
          Top = 0
          Width = 260
          Height = 40
          Align = alClient
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigLONGDATE'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 103
          TextHint = 'Enter Long Date Format'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigChange
        end
        object editConfigLONGTIME: TWebEdit
          Left = 520
          Top = 0
          Width = 150
          Height = 40
          Align = alRight
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigSHORTTIME'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 104
          TextHint = 'Long'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigChange
        end
        object btnListTimesLong: TWebButton
          Left = 670
          Top = 0
          Width = 30
          Height = 40
          Align = alRight
          Caption = '<i class="fa-solid fa-caret-down"></i>'
          ChildOrder = 2
          ElementClassName = 'ConfigListButton btn btn-light opacity-75'
          ElementID = 'btnListTimesLong'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnListTimesLongClick
        end
        object btnListDatesLong: TWebButton
          Left = 410
          Top = 0
          Width = 30
          Height = 40
          Align = alRight
          Caption = '<i class="fa-solid fa-caret-down"></i>'
          ChildOrder = 2
          ElementClassName = 'ConfigListButton btn btn-light opacity-75'
          ElementID = 'btnListDatesLong'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnListDatesLongClick
        end
      end
      object divConfigSHORTDATE: TWebHTMLDiv
        Left = 40
        Top = 245
        Width = 700
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSHORTDATE'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSHORTTIME: TWebLabel
          Left = 440
          Top = 0
          Width = 80
          Height = 40
          Align = alRight
          Alignment = taCenter
          AutoSize = False
          Caption = 'Time'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigSHORTTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 537
        end
        object labelConfigSHJORTDATE: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Date (Short)'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigLONGDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object editConfigSHORTDATE: TWebEdit
          Left = 150
          Top = 0
          Width = 260
          Height = 40
          Align = alClient
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigSHORTDATE'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 105
          TextHint = 'Enter Short Date Format'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigChange
        end
        object editConfigSHORTTIME: TWebEdit
          Left = 520
          Top = 0
          Width = 150
          Height = 40
          Align = alRight
          ChildOrder = 1
          ElementClassName = 'ConfigEdit'
          ElementID = 'editConfigLONGTIME'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          SpellCheck = False
          TabOrder = 106
          TextHint = 'Short'
          WidthPercent = 100.000000000000000000
          OnChange = editConfigChange
        end
        object btnListTimesShort: TWebButton
          Left = 670
          Top = 0
          Width = 30
          Height = 40
          Align = alRight
          Caption = '<i class="fa-solid fa-caret-down"></i>'
          ChildOrder = 2
          ElementClassName = 'ConfigListButton btn btn-light opacity-75'
          ElementID = 'btnListTimesShort'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnListTimesShortClick
        end
        object btnListDatesShort: TWebButton
          Left = 410
          Top = 0
          Width = 30
          Height = 40
          Align = alRight
          Caption = '<i class="fa-solid fa-caret-down"></i>'
          ChildOrder = 2
          ElementClassName = 'ConfigListButton btn btn-light opacity-75'
          ElementID = 'btnListDatesShort'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnListDatesShortClick
        end
      end
      object divConfigVERSION: TWebHTMLDiv
        Left = 770
        Top = 85
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigVERSION'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigVERSION: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Version'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigVERSION'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataConfigVERSION: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigVERSION'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object divConfigRELEASE: TWebHTMLDiv
        Left = 770
        Top = 125
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigRELEASE'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigRELEASE: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Release'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigRELEASE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataConfigRELEASE: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigRELEASE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object divConfigSYSTEMDATE: TWebHTMLDiv
        Left = 770
        Top = 165
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSYSTEMDATE'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSYSTEMDATE: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'System Date'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigSYSTEMDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object dataConfigSYSTEMDATE: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigSYSTEMDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object divConfigSYSTEMTIME: TWebHTMLDiv
        Left = 770
        Top = 205
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSYSTEMTIME'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSYSTEMTIME: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'System Time'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigSYSTEMTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataConfigSYSTEMTIME: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigSYSTEMTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object divConfigSTATUS: TWebHTMLDiv
        Left = 270
        Top = 10
        Width = 970
        Height = 50
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSTATUS'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSTATUS: TWebLabel
          Left = 0
          Top = 0
          Width = 650
          Height = 50
          Cursor = crHandPoint
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Status'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Status'
          ElementID = 'lableConfigSTATUS'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          OnClick = labelConfigSTATUSClick
        end
        object dataConfigSTATUS: TWebLabel
          Left = 660
          Top = 0
          Width = 310
          Height = 50
          Cursor = crHandPoint
          Align = alRight
          AutoSize = False
          Caption = 'Offline'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'StatusBad'
          ElementID = 'dataConfigSTATUS'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          OnClick = dataConfigSTATUSClick
        end
      end
      object divConfigSTARTDATE: TWebHTMLDiv
        Left = 770
        Top = 245
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSTARTDATE'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSTARTDATE: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Start Date'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigSTARTDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object dataConfigSTARTDATE: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigSTARTDATE'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 163
          ExplicitTop = -6
        end
      end
      object divConfigSTARTTIME: TWebHTMLDiv
        Left = 770
        Top = 285
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigSTARTTIME'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigSTARTTIME: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Start Time'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigSTARTTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object dataConfigSTARTTIME: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigSTARTTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object divConfigRUNNINGTIME: TWebHTMLDiv
        Left = 770
        Top = 325
        Width = 470
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigRUNNINGTIME'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelConfigRUNNINGTIME: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Running Time'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigRUNNINGTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = -6
          ExplicitTop = 6
        end
        object dataConfigRUNNINGTIME: TWebLabel
          Left = 160
          Top = 0
          Width = 310
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigRUNNINGTIME'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 439
        end
      end
      object btnHALinks: TWebButton
        Left = 53
        Top = 320
        Width = 200
        Height = 60
        Caption = 
          '<div class="d-flex align-items-center justify-content-stretch fl' +
          'ex-row"><i class="fa-solid fa-right-left fa-fw" style="color:bla' +
          'ck; font-size:24px;"></i><div class="pe-2 mdi mdi-home-assistant' +
          '" style="color:#3399CC; font-size:32px;"></div><div class="lh-1"' +
          ' style="color:black;text-align:left;">Update Links to<br />Home ' +
          'Assistant</div></div>'
        ChildOrder = 14
        ElementClassName = 'btn btn-light opacity-25 ConfigButton'
        ElementID = 'btnHALinks'
        ElementFont = efCSS
        Enabled = False
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnHALinksClick
      end
      object btnHASaveConfiguration: TWebButton
        Left = 270
        Top = 320
        Width = 220
        Height = 60
        Caption = 
          '<div class="d-flex align-items-center justify-content-stretch fl' +
          'ex-row"><i class="fa-solid fa-right-long fa-fw" style="color:bla' +
          'ck; font-size:24px;"></i><div class="pe-2 mdi mdi-home-assistant' +
          '" style="color:#3399CC; font-size:32px;"></div><div class="lh-1"' +
          ' style="color:black;text-align:left;">Save Configuration<br />to' +
          ' Home Assistant</div></div>'
        ChildOrder = 14
        ElementClassName = 'btn btn-light opacity-25 ConfigButton'
        ElementID = 'btnHASaveConfiguration'
        ElementFont = efCSS
        Enabled = False
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnHASaveConfigurationClick
      end
      object btnHALoadConfiguration: TWebButton
        Left = 507
        Top = 320
        Width = 235
        Height = 60
        Caption = 
          '<div class="d-flex align-items-center justify-content-stretch fl' +
          'ex-row"><div class="mdi mdi-home-assistant" style="color:#3399CC' +
          '; font-size:32px;"></div><i class="fa-solid fa-right-long fa-fw"' +
          ' style="color:black; font-size:24px;"></i><div class="lh-1 ps-2"' +
          ' style="color:black;text-align:left;">Load Configuration<br />fr' +
          'om Home Assistant</div></div>'
        ChildOrder = 14
        ElementClassName = 'btn btn-light opacity-25 ConfigButton'
        ElementID = 'btnHALoadConfiguration'
        ElementFont = efCSS
        Enabled = False
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnHALoadConfigurationClick
      end
      object listBackgrounds: TWebListBox
        Left = 214
        Top = 184
        Width = 411
        Height = 15
        ElementClassName = 'ConfigList'
        ElementID = 'listBackgrounds'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        ItemHeight = 13
        Visible = False
        WidthPercent = 100.000000000000000000
        OnChange = listBackgroundsChange
        Items.Strings = (
          'url(images/background_orion_nebula.jpg)'
          'url(images/background_cosmic_cliffs.jpg)'
          
            'linear-gradient(30deg, rgba(255,0,0,1) 0%, rgba(0,0,0,1) 20%, rg' +
            'ba(255,0,0,1) 40%,rgba(0,0,0,1) 60%, rgba(255,0,0,1) 80%, rgba(0' +
            ',0,0,1) 100%)'
          'aqua'
          'black'
          'blue'
          'fuchsia'
          'gray'
          'green'
          'lime'
          'maroon'
          'navy'
          'olive'
          'purple'
          'red'
          'silver'
          'teal'
          'white'
          'yellow'
          ' #012345'
          ' #400000'
          ' #004000'
          ' #000040')
        ItemIndex = -1
      end
      object listDatesLong: TWebListBox
        Left = 214
        Top = 225
        Width = 219
        Height = 14
        ElementClassName = 'ConfigList'
        ElementID = 'listDatesLong'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        ItemHeight = 13
        Visible = False
        WidthPercent = 100.000000000000000000
        OnChange = listDatesLongChange
        Items.Strings = (
          'yyyy-mmm-dd (ddd)'
          'yyyy-mm-dd'
          'mmmm d, yyyy'
          'd'
          'dd'
          'ddd'
          'dddd'
          'ddddd'
          'dddddd')
        ItemIndex = -1
      end
      object listDatesShort: TWebListBox
        Left = 214
        Top = 265
        Width = 219
        Height = 14
        ElementClassName = 'ConfigList'
        ElementID = 'listDatesShort'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        ItemHeight = 13
        Visible = False
        WidthPercent = 100.000000000000000000
        OnChange = listDatesShortChange
        Items.Strings = (
          'mmm d'
          'd'
          'dd'
          'ddd'
          'dddd'
          'ddddd'
          'dddddd'
          'mm/dd'
          'dd/mm')
        ItemIndex = -1
      end
      object listTimesLong: TWebListBox
        Left = 566
        Top = 225
        Width = 131
        Height = 14
        ElementClassName = 'ConfigList'
        ElementID = 'listTimesLong'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        ItemHeight = 13
        Visible = False
        WidthPercent = 100.000000000000000000
        OnChange = listTimesLongChange
        Items.Strings = (
          'hh:nn:ss'
          'hh:nn'
          'hh:nn:ss.zzz'
          'h:nn am/pm'
          'h:nn AM/PM'
          'h:nn a/p'
          'h:nn A/P'
          't'
          'tt')
        ItemIndex = -1
      end
      object listTimesShort: TWebListBox
        Left = 566
        Top = 265
        Width = 131
        Height = 14
        ElementClassName = 'ConfigList'
        ElementID = 'listTimesShort'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        ItemHeight = 13
        Visible = False
        WidthPercent = 100.000000000000000000
        OnChange = listTimesShortChange
        Items.Strings = (
          'hh:nn:ss'
          'hh:nn'
          'hh:nn:ss.zzz'
          'h:nn am/pm'
          't'
          'tt')
        ItemIndex = -1
      end
    end
    object pageHome: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHome'
      Caption = 'Hm'
      Color = clBlack
      ElementFont = efCSS
      object divClock: TWebHTMLDiv
        Left = 40
        Top = 0
        Width = 300
        Height = 400
        ElementClassName = 'overflow-visible'
        ElementID = 'divClock'
        ElementFont = efCSS
        Role = ''
        object labelDate: TWebLabel
          Left = 0
          Top = 225
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortDate'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Date'
          ElementID = 'labelDate'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelTime: TWebLabel
          Left = 0
          Top = 165
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortTime'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Time'
          ElementID = 'labelTime'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -53
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelDay: TWebLabel
          Left = 0
          Top = 130
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'LongDay'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Date'
          ElementID = 'labelDay'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelHomeSet: TWebLabel
          Left = 95
          Top = 20
          Width = 40
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Set'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeSet'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = '<span class="mdi mdi-weather-sunset-down"></span>'
          WidthPercent = 100.000000000000000000
        end
        object dataHomeSet: TWebLabel
          Left = 135
          Top = 20
          Width = 40
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Yellow'
          ElementID = 'dataHomeSet'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDusk: TWebLabel
          Left = 10
          Top = 350
          Width = 75
          Height = 20
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeDusk'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeRise: TWebLabel
          Left = 95
          Top = 350
          Width = 40
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Rise'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeRise'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = '<span class="mdi mdi-weather-sunset-up"></span>'
          WidthPercent = 100.000000000000000000
        end
        object dataHomeRise: TWebLabel
          Left = 138
          Top = 350
          Width = 40
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Yellow'
          ElementID = 'dataHomeRise'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDawn: TWebLabel
          Left = 215
          Top = 350
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeDawn'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDusk: TWebLabel
          Left = 10
          Top = 325
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'Dusk'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeDusk'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDawn: TWebLabel
          Left = 215
          Top = 325
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dawn'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeDawn'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDaylight: TWebLabel
          Left = 10
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Daylight'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeDaylight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDaylight: TWebLabel
          Left = 10
          Top = 45
          Width = 100
          Height = 20
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Yellow'
          ElementID = 'dataHomeDaylight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeTwilight: TWebLabel
          Left = 190
          Top = 45
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeTwilight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeTwilight: TWebLabel
          Left = 190
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Twilight'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeTwilight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object circleMinute: TWebHTMLDiv
          Left = 190
          Top = 49
          Width = 56
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleMinute'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleHour: TWebHTMLDiv
          Left = 126
          Top = 49
          Width = 58
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleHour'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleDay: TWebHTMLDiv
          Left = 55
          Top = 49
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleDay'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleDawnDusk: TWebHTMLDiv
          Left = 191
          Top = 272
          Width = 58
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleDawnDusk'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleRiseSet: TWebHTMLDiv
          Left = 127
          Top = 272
          Width = 58
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleRiseSet'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleMarker: TWebHTMLDiv
          Left = 54
          Top = 272
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object divHomeMoon: TWebHTMLDiv
          Left = 125
          Top = 95
          Width = 50
          Height = 35
          ElementClassName = 
            'overflow-visible Moon d-flex align-items-center justify-content-' +
            'center'
          ElementID = 'divHomeMoon'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleMinuteMarker: TWebHTMLDiv
          Left = 31
          Top = 90
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleMinuteMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
      end
      object divClimate: TWebHTMLDiv
        Left = 346
        Top = 0
        Width = 300
        Height = 400
        ElementClassName = 'overflow-visible'
        ElementID = 'divClimate'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object dataHomeTemperature: TWebLabel
          Left = 0
          Top = 165
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'Temp'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Time'
          ElementID = 'dataHomeTemperature'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -53
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelHomeMin: TWebLabel
          Left = 30
          Top = 325
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'Min'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeMax: TWebLabel
          Left = 195
          Top = 324
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Max'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMax: TWebLabel
          Left = 195
          Top = 350
          Width = 75
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMin: TWebLabel
          Left = 30
          Top = 350
          Width = 75
          Height = 20
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeHumidity: TWebLabel
          Left = 100
          Top = 325
          Width = 100
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Humidity'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object dataHomeHumidity: TWebLabel
          Left = 100
          Top = 350
          Width = 100
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Yellow'
          ElementID = 'dataHomeHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object dataHomeSetPoint: TWebLabel
          Left = 0
          Top = 225
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = '20C'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Date'
          ElementID = 'dataHomeSetPoint'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelHomeTempName: TWebLabel
          Left = 0
          Top = 130
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Location'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Date'
          ElementID = 'labelHomeTempName'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelSetPoint: TWebLabel
          Left = 100
          Top = 265
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Set Point'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeSetPoint'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeMode: TWebLabel
          Left = 10
          Top = 45
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Mode'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeMode'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMode: TWebLabel
          Left = 10
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeMode'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeAction: TWebLabel
          Left = 190
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Orange'
          ElementID = 'dataHomeAction'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeAction: TWebLabel
          Left = 190
          Top = 45
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'State'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'White'
          ElementID = 'labelHomeAction'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeLightLevel: TWebLabel
          Left = 0
          Top = 97
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Light'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'BlueSky'
          ElementID = 'dataHomeLightLevel'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -43
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object circleCurrent: TWebHTMLDiv
          Left = 3
          Top = 143
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleCurrent'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleSetPoint: TWebHTMLDiv
          Left = 230
          Top = 143
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleSetPoint'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleHumidity: TWebHTMLDiv
          Left = 61
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleHumidity'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleCurrMark: TWebHTMLDiv
          Left = 3
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleCurrMark'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleSetMarker: TWebHTMLDiv
          Left = 227
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleSetMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleHumMarker: TWebHTMLDiv
          Left = 134
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleHumMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object btnHomeTempDown: TWebButton
          Left = 60
          Top = 225
          Width = 50
          Height = 50
          HelpType = htKeyword
          Caption = '<i class="fa-solid fa-caret-left fa-xl"></i>'
          ChildOrder = 21
          ElementClassName = 'btn btn-link White text-decoration-none'
          ElementID = 'btnHomeTempDown'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnHomeTempDownClick
        end
        object btnHomeTempUp: TWebButton
          Left = 190
          Top = 225
          Width = 50
          Height = 50
          HelpType = htKeyword
          Caption = '<i class="fa-solid fa-caret-right fa-xl"></i>'
          ChildOrder = 21
          ElementClassName = 'btn btn-link White text-decoration-none'
          ElementID = 'btnHomeTempUp'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnHomeTempUpClick
        end
      end
    end
    object pageRooms: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageRooms'
      Caption = 'Rm'
      ChildOrder = 2
      ElementFont = efCSS
      object WebLabel5: TWebLabel
        Left = 288
        Top = 216
        Width = 32
        Height = 13
        Caption = 'Rooms'
        ElementClassName = 'Label'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
    end
    object pageScenes: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageActions'
      Caption = 'Sc'
      ChildOrder = 1
      ElementFont = efCSS
      object WebLabel6: TWebLabel
        Left = 296
        Top = 224
        Width = 34
        Height = 13
        Caption = 'Scenes'
        ElementClassName = 'Label'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
      end
    end
    object pageHelpConfig: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page Help'
      Caption = 'Help-Cf'
      ChildOrder = 4
      ElementFont = efCSS
      object divHelpConfig: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementID = 'divHelpConfig'
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="overflow-y: auto; overflow-x: hidden; height: 360px;' +
            '">'
          '<div class="HelpTitle">'
          'Home Assistant URL'
          '</div>'
          '<div class="HelpBody">'
          
            'This refers to the location of the Home Assistant server.  If Ca' +
            'thedral is running on a device that is on the same network as th' +
            'e Home Assistant Server, then a "local '
          'network" http:// URL is most likely needed.  For '
          
            'example, http://homeassistant.local:8123.  If the Home Assistant' +
            ' Server is on a different network than Cathedral, then an "inter' +
            'net" https:// URL is most likely needed. '
          ' Both of these URLs  can be found in Home '
          'Assistant under Settings | Server | Network.'
          '</div>'
          '<div class="HelpTitle">'
          'Home Assistant Token'
          '</div>'
          '<div class="HelpBody">'
          
            'In order for Cathedral to communicate, it must first be authoriz' +
            'ed.  A Long-Lived Access Token can be generated from within Home' +
            ' Assistant under Account | Long-'
          'Lived Access Tokens.'
          '</div>'
          '<div class="HelpTitle">'
          'Background'
          '</div>'
          '<div class="HelpBody">'
          
            'Any valid CSS "background" property can be used here. Any standa' +
            'rd CSS colors can be used directly, like <strong>red</strong> or' +
            ' <strong>purple</strong>.  Hex '
          'colors can be specified using either '
          
            '<strong>#FFF</strong> or <strong>#FFFFFF</strong>.  RGB colors c' +
            'an be specified using <strong>rgb(40,0,0)</strong>.  Images can ' +
            'be specified using '
          '<strong>url(local filename)</strong> or '
          
            '<strong>url(any valid URL)</strong>.  Gradients can also be used' +
            '.  '
          '</div>'
          '<div class="HelpTitle">'
          'Date and Time Formats'
          '</div>'
          '<div class="HelpBody">'
          '<table>'
          
            '<tbody><tr><td class="dt" align="right"><b>y&nbsp;</b></td><td c' +
            'lass="dd"> = Year last 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>yy&nbsp;</b></td><td class="' +
            'dd"> = Year last 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>yyyy&nbsp;</b></td><td class' +
            '="dd"> = Year as 4 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>m&nbsp;</b></td><td class="d' +
            'd"> = Month number no-leading 0</td></tr>'
          
            '<tr><td class="dt" align="right"><b>mm&nbsp;</b></td><td class="' +
            'dd"> = Month number as 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>mmm&nbsp;</b></td><td class=' +
            '"dd"> = Month using ShortDayNames (Jan)</td></tr>'
          
            '<tr><td class="dt" align="right"><b>mmmm&nbsp;</b></td><td class' +
            '="dd"> = Month using LongDayNames (January)</td></tr>'
          
            '<tr><td class="dt" align="right"><b>d&nbsp;</b></td><td class="d' +
            'd"> = Day number no-leading 0</td></tr>'
          
            '<tr><td class="dt" align="right"><b>dd&nbsp;</b></td><td class="' +
            'dd"> = Day number as 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>ddd&nbsp;</b></td><td class=' +
            '"dd"> = Day using ShortDayNames (Sun)</td></tr>'
          
            '<tr><td class="dt" align="right"><b>dddd&nbsp;</b></td><td class' +
            '="dd"> = Day using LongDayNames&nbsp;&nbsp;(Sunday)</td></tr>'
          
            '<tr><td class="dt" align="right"><b>ddddd&nbsp;</b></td><td clas' +
            's="dd"> = Day in ShortDateFormat</td></tr>'
          
            '<tr><td class="dt" align="right"><b>dddddd&nbsp;</b></td><td cla' +
            'ss="dd"> = Day in LongDateFormat</td></tr>'
          
            '<tr><td class="dt" align="right"><b>&nbsp;</b></td><td class="dd' +
            '"></td></tr>'
          
            '<tr><td class="dt" align="right"><b>c&nbsp;</b></td><td class="d' +
            'd"> = Use ShortDateFormat + LongTimeFormat</td></tr>'
          
            '<tr><td class="dt" align="right"><b>h&nbsp;</b></td><td class="d' +
            'd"> = Hour number no-leading 0</td></tr>'
          
            '<tr><td class="dt" align="right"><b>hh&nbsp;</b></td><td class="' +
            'dd"> = Hour number as 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>n</b></td><td class="dd"> = ' +
            'Minute number no-leading 0</td></tr>'
          
            '<tr><td class="dt" align="right"><b>nn&nbsp;</b></td><td class="' +
            'dd"> = Minute number as 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>s&nbsp;</b></td><td class="d' +
            'd"> = Second number no-leading 0</td></tr>'
          
            '<tr><td class="dt" align="right"><b>ss&nbsp;</b></td><td class="' +
            'dd"> = Second number as 2 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>z</b></td><td class="dd"> = ' +
            'Milli-sec number no-leading 0s</td></tr>'
          
            '<tr><td class="dt" align="right"><b>zzz&nbsp;</b></td><td class=' +
            '"dd"> = Milli-sec number as 3 digits</td></tr>'
          
            '<tr><td class="dt" align="right"><b>t&nbsp;</b></td><td class="d' +
            'd"> = Use ShortTimeFormat</td></tr>'
          
            '<tr><td class="dt" align="right"><b>tt&nbsp;</b></td><td class="' +
            'dd"> = Use LongTimeFormat</td></tr>'
          
            '<tr><td class="dt" align="right"><b>&nbsp;</b></td><td class="dd' +
            '"></td></tr>'
          
            '<tr><td class="dt" align="right"><b>am/pm&nbsp;</b></td><td clas' +
            's="dd"> = Use after h : gives 12 hours + am/pm</td></tr>'
          
            '<tr><td class="dt" align="right"><b>a/p&nbsp;</b></td><td class=' +
            '"dd"> = Use after h : gives 12 hours + a/p</td></tr>'
          
            '<tr><td class="dt" align="right"><b>ampm&nbsp;</b></td><td class' +
            '="dd"> = As a/p but TimeAMString,TimePMString</td></tr>'
          
            '<tr><td class="dt" align="right"><b>/&nbsp;</b></td><td class="d' +
            'd"> = Substituted by DateSeparator value</td></tr>'
          
            '<tr><td class="dt" align="right"><b>:</b></td><td class="dd"> = ' +
            'Substituted by TimeSeparator value</td></tr>'
          '</tbody></table>'
          '<br />'
          
            'Reference: <a target="_blank"  href="http://www.delphibasics.co.' +
            'uk/RTL.php?Name=formatdatetime">http://www.delphibasics.co.uk/RT' +
            'L.php?'
          'Name=formatdatetime</a>'
          '</div>'
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageConfigSensors: TWebTabSheet
      Tag = 13
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageConfigSensors'
      Caption = 'Cs'
      ChildOrder = 5
      ElementFont = efCSS
      object divConfigSensors: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementID = 'divConfigSensors'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageConfigInfo: TWebTabSheet
      Tag = 12
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageConfigInfo'
      Caption = 'Ci'
      ChildOrder = 6
      ElementFont = efCSS
      object divInfoCatheedral: TWebHTMLDiv
        Left = 40
        Top = 20
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoCatheedral'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoCatheedral: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Settings'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoCatheedral'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoCatheedral: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoCatheedral'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoVersion: TWebHTMLDiv
        Left = 40
        Top = 60
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoVersion'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoVersion: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Version'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoVersion'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoVersion: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataConfigVERSION'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoRelease: TWebHTMLDiv
        Left = 40
        Top = 100
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoRelease'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoRelease: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Release'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoRelease'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoRelease: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoRelease'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoRunning: TWebHTMLDiv
        Left = 40
        Top = 140
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoRunning'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoRunning: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Running'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoRunning'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoRunning: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoRunning'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object WebHTMLDiv7: TWebHTMLDiv
        Left = 40
        Top = 180
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoPlatform'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoPlatform: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Platform'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoPlatform'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoPlatform: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoPlatform'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoArch: TWebHTMLDiv
        Left = 40
        Top = 220
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoArch'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoArch: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Arch'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoArch'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoArch: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoArch'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object WebHTMLDiv9: TWebHTMLDiv
        Left = 40
        Top = 260
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divConfigVERSION'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoBuild: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Build'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoBuild'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoBuild: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoBiuld'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoMemory: TWebHTMLDiv
        Left = 40
        Top = 300
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoMemory'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoMemory: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Memory'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'lablInfoMemory'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoMemory: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoMemory'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoInternet: TWebHTMLDiv
        Left = 40
        Top = 340
        Width = 360
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoInternet'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoInternet: TWebLabel
          Left = 0
          Top = 0
          Width = 120
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Internet'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoInternet'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoInternet: TWebLabel
          Left = 130
          Top = 0
          Width = 230
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label Data'
          ElementID = 'dataInfoInternet'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 160
        end
      end
      object divInfoSystem: TWebHTMLDiv
        Left = 400
        Top = 20
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoSystem'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoSystem: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'HA System'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoSystem'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoSystem: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoSystem'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoHAVersion: TWebHTMLDiv
        Left = 400
        Top = 60
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoHAVersion'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object WebLabel25: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Version'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelConfigVERSION'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoHAVersion: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoHAVersion'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoLatitude: TWebHTMLDiv
        Left = 400
        Top = 100
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoLatitude'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoLatitude: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Latitude'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoLatitude'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoLatitude: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoLatitude'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoLongitude: TWebHTMLDiv
        Left = 400
        Top = 140
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoLongitude'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoLongitude: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Longitude'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoLongitude'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoLongitude: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoLongitude'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoElevation: TWebHTMLDiv
        Left = 400
        Top = 180
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoElevation'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoElevation: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Elevation'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoElevation'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoElevation: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoElevation'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoCountry: TWebHTMLDiv
        Left = 400
        Top = 220
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoCountry'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoCountry: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Country'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoCountry'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoCountry: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoCountry'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoTimeZone: TWebHTMLDiv
        Left = 400
        Top = 260
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoTimeZone'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoTimeZone: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Time Zone'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoTimeZone'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoTimeZone: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoTimeZone'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoInternal: TWebHTMLDiv
        Left = 400
        Top = 300
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoInternal'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoInternal: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Internal'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labeInfoInternal'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoInternal: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoInternal'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoExternal: TWebHTMLDiv
        Left = 400
        Top = 340
        Width = 540
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoExternal'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoExternal: TWebLabel
          Left = 0
          Top = 0
          Width = 130
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'External'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoExternal'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoExternal: TWebLabel
          Left = 140
          Top = 0
          Width = 400
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoExternal'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 210
        end
      end
      object divInfoLanguage: TWebHTMLDiv
        Left = 940
        Top = 20
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoLanguage'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoLanguage: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Language'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoLanguage'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoLanguage: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoLanguage'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoCurrency: TWebHTMLDiv
        Left = 940
        Top = 60
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoCurrency'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoCurrency: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Currency'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoCurrency'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoCurrency: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoCurrency'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoTemperature: TWebHTMLDiv
        Left = 940
        Top = 100
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoTemperature'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoTemperature: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Temperature'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoTemperature'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoTemperature: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoTemperature'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoMass: TWebHTMLDiv
        Left = 940
        Top = 140
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoMass'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoMass: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mass'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoMass'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoMass: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoMass'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoDistance: TWebHTMLDiv
        Left = 940
        Top = 180
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoDistance'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoDistance: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Distance'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoDistance'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoDistance: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoDistance'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoVolume: TWebHTMLDiv
        Left = 940
        Top = 220
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoVolume'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoVolume: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Volume'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoVolume'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoVolume: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoVolume'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoPressure: TWebHTMLDiv
        Left = 940
        Top = 260
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoPressure'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoPressure: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pressure'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoPressure'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoPressure: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoPressure'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoPrecipitation: TWebHTMLDiv
        Left = 940
        Top = 300
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoPrecipitation'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoPrecipitation: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Precipitation'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoPrecipitation'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoPrecipitation: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoPrecipitation'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
      object divInfoWindSpeed: TWebHTMLDiv
        Left = 940
        Top = 340
        Width = 300
        Height = 40
        ElementClassName = 'overflow-visible'
        ElementID = 'divInfoWindSpeed'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
        object labelInfoWindSpeed: TWebLabel
          Left = 0
          Top = 0
          Width = 150
          Height = 40
          Align = alLeft
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Wind Speed'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label'
          ElementID = 'labelInfoWindSpeed'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object dataInfoWindSpeed: TWebLabel
          Left = 160
          Top = 0
          Width = 140
          Height = 40
          Align = alRight
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Label YellowData'
          ElementID = 'dataInfoWindSpeed'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
          ExplicitLeft = 60
        end
      end
    end
    object pageCustom1: TWebTabSheet
      Tag = 14
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageCustom1'
      Caption = 'C1'
      ChildOrder = 7
      ElementFont = efCSS
      object divCustom1: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 1280
        Height = 400
        ElementClassName = 'overflow-hidden'
        ElementID = 'divCustom1'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageCustom2: TWebTabSheet
      Tag = 14
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageCustom2'
      Caption = 'C2'
      ChildOrder = 8
      ElementFont = efCSS
      object divCustom2: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 1280
        Height = 400
        ElementClassName = 'overflow-hidden '
        ElementID = 'divCustom2'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageCustom3: TWebTabSheet
      Tag = 14
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageCustom3'
      Caption = 'C3'
      ChildOrder = 9
      ElementFont = efCSS
      object divCustom3: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 1280
        Height = 400
        ElementClassName = 'overflow-hidden'
        ElementID = 'divCustom3'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageCustom4: TWebTabSheet
      Tag = 14
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageCustom4'
      Caption = 'C4'
      ChildOrder = 10
      ElementFont = efCSS
      object divCustom4: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 1280
        Height = 400
        ElementClassName = 'overflow-hidden'
        ElementID = 'divCustom4'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageInit: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageInit'
      Caption = 'In'
      ChildOrder = 11
      ElementFont = efCSS
      object divCatheedral: TWebLabel
        Left = 340
        Top = 100
        Width = 600
        Height = 100
        Alignment = taCenter
        AutoSize = False
        Caption = 'Welcome to Catheedral'
        ElementClassName = 'SplashTitle'
        ElementID = 'divCatheedral'
        ElementFont = efCSS
        HeightPercent = 100.000000000000000000
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
      end
      object divInit: TWebLabel
        Left = 340
        Top = 200
        Width = 600
        Height = 100
        Alignment = taCenter
        AutoSize = False
        Caption = 'Initializing - Please Wait'
        ElementClassName = 'SplashSubtitle'
        ElementID = 'divInit'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
      end
    end
    object pageHelpConfigInfo: TWebTabSheet
      Tag = 6
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page Help'
      ElementID = 'pageHelpConfigInfo'
      Caption = 'Help-Ci'
      ChildOrder = 12
      ElementFont = efCSS
      object divHelpConfigInfo: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementID = 'divHelpConfigInfo'
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="overflow-y: auto; overflow-x: hidden; height: 360px;' +
            '">'
          '<div class="HelpTitle">'
          'Configuration Information'
          '</div>'
          '<div class="HelpBody">'
          
            'This page is used to view additional Configuration Information i' +
            'n case you need to troubleshoot a problem.<br />'
          '<br />'
          
            'The first column shows values that are specific to the Cathedral' +
            ' app and are generated without interacting with the Home Assista' +
            'nt Server. The Internet address '
          
            'indicated is the public IP Address as seen from the device that ' +
            'this Cathedral app is running on.  If this value is '#39'unknown'#39' '
          
            'or '#39'undefined'#39', then the Internet was inaccessible when the Cath' +
            'edral app first started.<br />'
          '<br />'
          
            'The remaining two columns reflect data coming from the Home Assi' +
            'stant Server.  If any of these values are incorrect, unknown, or' +
            ' undefined, they will need to be '
          
            'updated directly within Home Assistant.  Subsequent changes can ' +
            'be reflected here by restarting the Cathedral app or by refreshi' +
            'ng it from the main Configuration '
          'screen using the "Refresh" icon in the top-right corner.'
          '</div>'
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageHelpConfigSensors: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page Help'
      Caption = 'Help-Cs'
      ChildOrder = 13
      ElementFont = efCSS
      object divHelpConfigSensors: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementID = 'divHelpConfigSensors'
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="overflow-y:auto; overflow-x: hidden; height: 360px;"' +
            '>'
          '<div class="HelpTitle">'
          'Home Assistant Links'
          '</div>'
          '<div class="HelpBody">'
          
            'This page is used to define the connections between the Cathedra' +
            'l app and the Home Assistant Serer. Each element in the left col' +
            'umn corresponds to a part of the '
          
            'Cathedral interface.  The center column indicates what Home Assi' +
            'stant sensor, entity or other element is used to provide informa' +
            'tion to Cathedral.  The right '
          
            'column gives examples of what to look for when searching the lis' +
            't of available Home Assistant objects.<br />'
          '<br />'
          
            'Links that are not populated will not be shown in Cathedral.  So' +
            'me aspects of Cathedral require many links (such as the Weather ' +
            'content), whereas others require few '
          'or none.<br />'
          '<br />'
          
            'In addition to the Home Assistant, anywhere from zero to four ad' +
            'ditional pages can be added to Cathedral using data from externa' +
            'l websites.  These websites are '
          
            'presented on their own page, and should be formatted (by the rem' +
            'ote website) to work within the confines of Catheral'#39's 1280w by ' +
            '400h display.'
          '</div>'
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageHelpCustom: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page Help'
      ElementID = 'pageHelpCustom'
      Caption = 'Help-C1'
      ChildOrder = 14
      ElementFont = efCSS
      object WebHTMLDiv1: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementID = 'divHelpConfigSensors'
        ElementFont = efCSS
        HTML.Strings = (
          
            '<div style="overflow-y:auto; overflow-x: hidden; height: 360px;"' +
            '>'
          '<div class="HelpTitle">'
          'Custom Web Content'
          '</div>'
          '<div class="HelpBody">'
          
            'This is a custom URL included in Cathedral, used to directly dis' +
            'play information from external websites.  The content shown is g' +
            'enerated entirely from outside Cathedral '
          
            'and Home Assistant, and any issues with the content should be di' +
            'rected to the website that is linked to here.<br />'
          '<br />'
          
            'Anywhere from zero to four Custom URL web pages, like this one, ' +
            'can be added to Cathedral.  These are set in the Home Assistant ' +
            'Links section within the '
          'Configuratino pages.'
          '</div>'
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
  end
  object navLeft: TWebHTMLDiv
    Left = 0
    Top = 50
    Width = 40
    Height = 300
    Cursor = crHandPoint
    ElementClassName = 'Nav NavLeft'
    ElementID = 'navLeft'
    ElementFont = efCSS
    Role = ''
    OnClick = navLeftClick
    object navLeftInner: TWebHTMLDiv
      Left = 3
      Top = 209
      Width = 31
      Height = 68
      Cursor = crHandPoint
      ElementClassName = 'NavLeftInner pe-none'
      ElementID = 'navLeftInner'
      ElementFont = efCSS
      Role = ''
      OnClick = navLeftClick
    end
  end
  object navRight: TWebHTMLDiv
    Left = 1240
    Top = 50
    Width = 40
    Height = 300
    Cursor = crHandPoint
    ElementClassName = 'Nav NavRight'
    ElementID = 'navRight'
    ChildOrder = 1
    ElementFont = efCSS
    Role = ''
    OnClick = navRightClick
    object navRightInner: TWebHTMLDiv
      Left = 9
      Top = 217
      Width = 31
      Height = 68
      Cursor = crHandPoint
      ElementClassName = 'NavRightInner pe-none'
      ElementID = 'navRightInner'
      ElementFont = efCSS
      Role = ''
      OnClick = navRightClick
    end
  end
  object btnHelp: TWebButton
    Left = -5
    Top = 20
    Width = 50
    Height = 50
    Caption = '<i class="fa-solid fa-hand text-white fa-xl opacity-50"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnHelp'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnHelpClick
  end
  object btnHome: TWebButton
    Left = 1235
    Top = 355
    Width = 50
    Height = 50
    Caption = 
      '<i class="fa-solid fa-triangle-exclamation fa-xl opacity-100 tex' +
      't-warning"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnHome'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnHomeClick
  end
  object btnChange: TWebButton
    Left = 1236
    Top = -6
    Width = 50
    Height = 50
    Caption = '<i class="fa-solid fa-shuffle fa-xl text-white opacity-50"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnChange'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnChangeClick
  end
  object btnConfiguration: TWebButton
    Left = -5
    Top = 355
    Width = 50
    Height = 50
    Caption = '<i class="fa-solid fa-gear text-white fa-xl opacity-50"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnConfiguration'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = btnConfigurationClick
  end
  object tmrSeconds: TWebTimer
    Enabled = False
    OnTimer = tmrSecondsTimer
    Left = 664
    Top = 64
  end
  object tmrConnect: TWebTimer
    Enabled = False
    OnTimer = tmrConnectTimer
    Left = 736
    Top = 64
  end
  object HAWebSocket: TWebSocketClient
    OnConnect = HAWebSocketConnect
    OnDisconnect = HAWebSocketDisconnect
    OnDataReceived = HAWebSocketDataReceived
    Left = 888
    Top = 64
  end
  object tmrInactivity: TWebTimer
    Enabled = False
    Interval = 30000
    OnTimer = tmrInactivityTimer
    Left = 808
    Top = 64
  end
  object tmrSwitchPage: TWebTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrSwitchPageTimer
    Left = 592
    Top = 64
  end
  object tmrStartup: TWebTimer
    Enabled = False
    OnTimer = tmrStartupTimer
    Left = 520
    Top = 64
  end
end
