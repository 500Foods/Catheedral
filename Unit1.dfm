object Form1: TForm1
  Width = 1280
  Height = 400
  Color = clNone
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  Shadow = False
  OnCreate = MiletusFormCreate
  OnKeyDown = MiletusFormKeyDown
  OnMouseMove = MiletusFormMouseMove
  ClientHeight = 400
  ClientWidth = 1280
  BorderStyle = bsNoneBorder
  Position = poScreenCenter
  ScreenSnap = True
  object divBackground: TWebHTMLDiv
    Left = 0
    Top = 0
    Width = 1280
    Height = 400
    ElementID = 'divBackground'
    ChildOrder = 16
    ElementFont = efCSS
    Role = ''
  end
  object pages: TWebPageControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 400
    HelpType = htKeyword
    ElementClassName = 'Page'
    ElementID = 'pages'
    ElementFont = efCSS
    TabIndex = 10
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
          TabOrder = 102
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
          TabOrder = 103
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
          MaxLength = 50
          SpellCheck = False
          TabOrder = 104
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
          ElementID = 'editConfigLONGTIME'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          SpellCheck = False
          TabOrder = 106
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
          TabOrder = 107
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
          TabOrder = 105
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
          MaxLength = 50
          SpellCheck = False
          TabOrder = 108
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
          ElementID = 'editConfigSHORTTIME'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          MaxLength = 50
          SpellCheck = False
          TabOrder = 110
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
          TabOrder = 111
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
          TabOrder = 109
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
          ElementLabelClassName = 'Title Status'
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
          ElementLabelClassName = 'Title StatusBad'
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
        TabOrder = 112
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
        TabOrder = 113
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
        TabOrder = 114
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
          'url(images/background_protostar.jpg)'
          
            'linear-gradient(30deg, rgba(255,0,0,1) 0%, rgba(0,0,0,1) 20%, rg' +
            'ba(255,0,0,1) 40%,rgba(0,0,0,1) 60%, rgba(255,0,0,1) 80%, rgba(0' +
            ',0,0,1) 100%)'
          
            'background: linear-gradient(27deg, #151515 5px, transparent 5px)' +
            ' 0 5px, linear-gradient(207deg, #151515 5px, transparent 5px) 10' +
            'px 0px, linear-gradient(27deg, #222 5px, transparent 5px) 0px 10' +
            'px, linear-gradient(207deg, #222 5px, transparent 5px) 10px 5px,' +
            ' linear-gradient(90deg, #1b1b1b 10px, transparent 10px), linear-' +
            'gradient(#1d1d1d 25%, #1a1a1a 25%, #1a1a1a 50%, transparent 50%,' +
            ' transparent 75%, #242424 75%, #242424); background-color: #1313' +
            '13; background-size: 20px 20px;'
          
            'background-color: #000000;background-image: url("data:image/svg+' +
            'xml,%3Csvg width='#39'84'#39' height='#39'48'#39' viewBox='#39'0 0 84 48'#39' xmlns='#39'htt' +
            'p://www.w3.org/2000/svg'#39'%3E%3Cpath d='#39'M0 0h12v6H0V0zm28 8h12v6H2' +
            '8V8zm14-8h12v6H42V0zm14 0h12v6H56V0zm0 8h12v6H56V8zM42 8h12v6H42' +
            'V8zm0 16h12v6H42v-6zm14-8h12v6H56v-6zm14 0h12v6H70v-6zm0-16h12v6' +
            'H70V0zM28 32h12v6H28v-6zM14 16h12v6H14v-6zM0 24h12v6H0v-6zm0 8h1' +
            '2v6H0v-6zm14 0h12v6H14v-6zm14 8h12v6H28v-6zm-14 0h12v6H14v-6zm28' +
            ' 0h12v6H42v-6zm14-8h12v6H56v-6zm0-8h12v6H56v-6zm14 8h12v6H70v-6z' +
            'm0 8h12v6H70v-6zM14 24h12v6H14v-6zm14-8h12v6H28v-6zM14 8h12v6H14' +
            'V8zM0 8h12v6H0V8z'#39' fill='#39'%23ff0000'#39' fill-opacity='#39'0.4'#39' fill-rule' +
            '='#39'evenodd'#39'/%3E%3C/svg%3E");'
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
      Tag = 15
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
        Left = 41
        Top = 0
        Width = 300
        Height = 400
        ElementClassName = 'overflow-visible'
        ElementID = 'divClock'
        ElementFont = efCSS
        Role = ''
        object labelDate: TWebLabel
          Left = 0
          Top = 220
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortDate'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG Gray'
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
          Top = 162
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortTime'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextXL White'
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
          ElementLabelClassName = 'Text TextLG Gray'
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
        object labelHomeSetIcon: TWebLabel
          Left = 240
          Top = 40
          Width = 50
          Height = 50
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Set'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG White'
          ElementID = 'labelHomeSetIcon'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<img width=50 height=50 src="weather-icons-dev/production/fill/s' +
            'vg-static/sunset.svg">'
          WidthPercent = 100.000000000000000000
        end
        object dataHomeSet: TWebLabel
          Left = 185
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataHomeSet'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDusk: TWebLabel
          Left = 185
          Top = 343
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataHomeDusk'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeRiseIcon: TWebLabel
          Left = 10
          Top = 40
          Width = 50
          Height = 50
          AutoSize = False
          Caption = 'Rise'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG White'
          ElementID = 'labelHomeRiseIcon'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<img width=50 height=50 src="weather-icons-dev/production/fill/s' +
            'vg-static/sunrise.svg">'
          WidthPercent = 100.000000000000000000
        end
        object dataHomeRise: TWebLabel
          Left = 15
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataHomeRise'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDawn: TWebLabel
          Left = 15
          Top = 343
          Width = 100
          Height = 20
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataHomeDawn'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDusk: TWebLabel
          Left = 185
          Top = 369
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dusk'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeDusk'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDawn: TWebLabel
          Left = 15
          Top = 369
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Dawn'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeDawn'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDaylight: TWebLabel
          Left = 100
          Top = 3
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Daylight'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeDaylight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeDaylight: TWebLabel
          Left = 100
          Top = 20
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataHomeDaylight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeTwilight: TWebLabel
          Left = 100
          Top = 343
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = '00:00'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataHomeTwilight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeTwilight: TWebLabel
          Left = 100
          Top = 369
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Civil Daylight'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeTwilight'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeRise: TWebLabel
          Left = 15
          Top = 3
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Sunrise'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeRise'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeSet: TWebLabel
          Left = 185
          Top = 3
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Sunset'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeSet'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDawnIcon: TWebLabel
          Left = 10
          Top = 303
          Width = 50
          Height = 50
          AutoSize = False
          Caption = 'Rise'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG White'
          ElementID = 'labelHomeDawnIcon'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<img style="transform: rotate(180deg);"width=50 height=50 src="w' +
            'eather-icons-dev/production/fill/svg-static/sunset.svg">'
          WidthPercent = 100.000000000000000000
        end
        object labelHomeDuskIcon: TWebLabel
          Left = 240
          Top = 303
          Width = 50
          Height = 50
          AutoSize = False
          Caption = 'Rise'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG White'
          ElementID = 'labelHomeDuskIcon'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          HTML = 
            '<img style="transform: rotate(180deg);"width=50 height=50 src="w' +
            'eather-icons-dev/production/fill/svg-static/sunrise.svg">'
          WidthPercent = 100.000000000000000000
        end
        object circleSeconds: TWebHTMLDiv
          Left = 179
          Top = 49
          Width = 70
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleSeconds'
          ChildOrder = 3
          ElementFont = efCSS
          Role = ''
        end
        object circleMinutes: TWebHTMLDiv
          Left = 115
          Top = 49
          Width = 58
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleMinutes'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleHours: TWebHTMLDiv
          Left = 42
          Top = 49
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleHours'
          ChildOrder = 1
          ElementFont = efCSS
          Role = ''
        end
        object circleDawnDusk: TWebHTMLDiv
          Left = 191
          Top = 90
          Width = 84
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleDawnDusk'
          ChildOrder = 5
          ElementFont = efCSS
          Role = ''
        end
        object circleRiseSet: TWebHTMLDiv
          Left = 23
          Top = 90
          Width = 86
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleRiseSet'
          ChildOrder = 4
          ElementFont = efCSS
          Role = ''
        end
        object circleMinutesMarker: TWebHTMLDiv
          Left = 95
          Top = 279
          Width = 90
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleMinutesMarker'
          ChildOrder = 7
          ElementFont = efCSS
          Role = ''
        end
        object divHomeMoon: TWebHTMLDiv
          Left = 115
          Top = 90
          Width = 70
          Height = 50
          ElementClassName = 
            'Text TextLG Blue d-flex align-items-center justify-content-cente' +
            'r'
          ElementID = 'divHomeMoon'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleSecondsMarker: TWebHTMLDiv
          Left = 191
          Top = 279
          Width = 102
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleSecondsMarker'
          ChildOrder = 8
          ElementFont = efCSS
          Role = ''
        end
        object circleHoursMarker: TWebHTMLDiv
          Left = 5
          Top = 279
          Width = 84
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleDayMarker'
          ChildOrder = 6
          ElementFont = efCSS
          Role = ''
        end
      end
      object divClimate: TWebHTMLDiv
        Left = 340
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
          Top = 162
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'Temp'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextXL White'
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
          Left = 15
          Top = 369
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'Min'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeMax: TWebLabel
          Left = 185
          Top = 369
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Max'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMax: TWebLabel
          Left = 185
          Top = 343
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataHomeMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMin: TWebLabel
          Left = 15
          Top = 343
          Width = 75
          Height = 20
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataHomeMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeHumidity: TWebLabel
          Left = 100
          Top = 369
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Humidity'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object dataHomeHumidity: TWebLabel
          Left = 60
          Top = 288
          Width = 180
          Height = 75
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Blue d-block'
          ElementID = 'dataHomeHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object dataHomeSetPoint: TWebLabel
          Left = 0
          Top = 220
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = '20C'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG Green'
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
          ElementLabelClassName = 'Text TextLG Gray'
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
          Top = 258
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Set Point'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Green'
          ElementID = 'labelHomeSetPoint'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeMode: TWebLabel
          Left = 15
          Top = 3
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'State'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeMode'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeMode: TWebLabel
          Left = 15
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataHomeMode'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeState: TWebLabel
          Left = 185
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataHomeState'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelHomeState: TWebLabel
          Left = 185
          Top = 3
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Mode'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeState'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeLightLevel: TWebLabel
          Left = 0
          Top = 100
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Light'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG White'
          ElementID = 'dataHomeLightLevel'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object labelHomeLights: TWebLabel
          Left = 100
          Top = 3
          Width = 100
          Height = 20
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Lights'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelHomeLights'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataHomeLights: TWebLabel
          Left = 100
          Top = 20
          Width = 100
          Height = 20
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Unknown'
          ElementClassName = 'overflow-visible d-flex justify-content-center'
          ElementLabelClassName = 'Text TextRG Gray'
          ElementID = 'dataHomeLights'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object divHomeLightsCover: TWebHTMLDiv
          Left = 100
          Top = 0
          Width = 100
          Height = 50
          Cursor = crHandPoint
          ElementClassName = 'TextCover'
          ElementID = 'divHomeLightsCover'
          ChildOrder = 25
          ElementFont = efCSS
          Role = ''
          OnClick = divHomeLightsCoverClick
        end
        object circleClimateTemperature: TWebHTMLDiv
          Left = 3
          Top = 143
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleClimateTemperature'
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
        object circleClimateHumidity: TWebHTMLDiv
          Left = 61
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleClimateHumidity'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleClimateTemperatureMarker: TWebHTMLDiv
          Left = 3
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleClimateTemperatureMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleSetPointMarker: TWebHTMLDiv
          Left = 227
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleSetPointMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleClimateHumidityMarker: TWebHTMLDiv
          Left = 134
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleClimateHumidityMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object btnHomeTempDown: TWebButton
          Left = 60
          Top = 255
          Width = 50
          Height = 50
          HelpType = htKeyword
          Caption = '<i class="fa-solid fa-caret-left fa-xl"></i>'
          ChildOrder = 21
          ElementClassName = 'MainButton Text TextLG White btn btn-link text-decoration-none'
          ElementID = 'btnHomeTempDown'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnHomeTempDownClick
        end
        object btnHomeTempUp: TWebButton
          Left = 190
          Top = 255
          Width = 50
          Height = 50
          HelpType = htKeyword
          Caption = '<i class="fa-solid fa-caret-right fa-xl"></i>'
          ChildOrder = 21
          ElementClassName = 'MainButton Text TextLG White btn btn-link text-decoration-none'
          ElementID = 'btnHomeTempUp'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnHomeTempUpClick
        end
      end
      object divWeather: TWebHTMLDiv
        Left = 640
        Top = 0
        Width = 300
        Height = 400
        ElementClassName = 'overflow-visible'
        ElementID = 'divWeather'
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
        object labelWeatherMin: TWebLabel
          Left = 15
          Top = 369
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'Min'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelWeatherHumidity: TWebLabel
          Left = 100
          Top = 369
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Humidity'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object labelWeatherMax: TWebLabel
          Left = 185
          Top = 369
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Max'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherHumidity: TWebLabel
          Left = 60
          Top = 288
          Width = 180
          Height = 75
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Blue d-block'
          ElementID = 'dataWeatherHumidity'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ShowAccelChar = False
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherTemperature: TWebLabel
          Left = 0
          Top = 162
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'Temp'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextXL White'
          ElementID = 'dataWeatherTemperature'
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
        object dataWeatherMin: TWebLabel
          Left = 15
          Top = 343
          Width = 75
          Height = 20
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataWeatherMin'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherMax: TWebLabel
          Left = 185
          Top = 343
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataWeatherMax'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherMinPressure: TWebLabel
          Left = 15
          Top = 326
          Width = 75
          Height = 20
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataWeatherMinPressure'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherMaxPressure: TWebLabel
          Left = 185
          Top = 326
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataWeatherMaxPressure'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelWeatherPressure: TWebLabel
          Left = 0
          Top = 220
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortDate'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG Gray'
          ElementID = 'labelWeatherPressure'
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
        object labelWeatherUV: TWebLabel
          Left = 15
          Top = 3
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'UV Index'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherUV'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherUV: TWebLabel
          Left = 15
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataWeatherUV'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelWeatherWind: TWebLabel
          Left = 100
          Top = 3
          Width = 100
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'Wind'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherWind'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherWind: TWebLabel
          Left = 50
          Top = 20
          Width = 200
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Gray'
          ElementID = 'dataWeatherWind'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelWeatherAQHI: TWebLabel
          Left = 185
          Top = 3
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Air Quality'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelWeatherAQHI'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherAQHI: TWebLabel
          Left = 185
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Yellow'
          ElementID = 'dataWeatherAQHI'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataWeatherCondition: TWebLabel
          Left = 0
          Top = 260
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Condition'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG White'
          ElementID = 'dataWeatherCondition'
          ElementFont = efCSS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -32
          Font.Name = 'Tahoma'
          Font.Style = []
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          ParentFont = False
          WidthPercent = 100.000000000000000000
        end
        object circleWeatherHumidity: TWebHTMLDiv
          Left = 69
          Top = 74
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleWeatherHumidity'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleWeatherHumidityMarker: TWebHTMLDiv
          Left = 142
          Top = 74
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleWeatherHumidityMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleWeatherTemperature: TWebHTMLDiv
          Left = 6
          Top = 146
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleWeatherTemperature'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleWeatherTemperatureMarker: TWebHTMLDiv
          Left = 6
          Top = 187
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleWeatherTemperatureMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleWeatherPressure: TWebHTMLDiv
          Left = 227
          Top = 145
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleWeatherPressure'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleWeatherPressureMarker: TWebHTMLDiv
          Left = 227
          Top = 186
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleWeatherPressureMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object divWeatherIcon: TWebHTMLDiv
          Left = 100
          Top = 80
          Width = 100
          Height = 100
          ElementClassName = 'Text TextLG'
          ElementID = 'divWeatherIcon'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
      end
      object divEnergy: TWebHTMLDiv
        Left = 940
        Top = 0
        Width = 300
        Height = 400
        ElementClassName = 'overflow-visible'
        ElementID = 'divEnergy'
        ChildOrder = 3
        ElementFont = efCSS
        Role = ''
        object labelBattery1: TWebLabel
          Left = 15
          Top = 3
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'Battery One'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelBattery1'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelBattery2: TWebLabel
          Left = 185
          Top = 3
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Battery Two'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelBattery2'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelBattery3: TWebLabel
          Left = 15
          Top = 369
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'Battery Three'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelBattery3'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object labelBattery4: TWebLabel
          Left = 185
          Top = 369
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Battery Four'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM White'
          ElementID = 'labelBattery4'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataEnergyUse: TWebLabel
          Left = 0
          Top = 162
          Width = 300
          Height = 73
          Alignment = taCenter
          AutoSize = False
          Caption = 'Watts'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextXL White'
          ElementID = 'dataEnergyUse'
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
        object dataBattery1Status: TWebLabel
          Left = 15
          Top = 20
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataBattery1Status'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery2Status: TWebLabel
          Left = 185
          Top = 20
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataBattery2Status'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery3Status: TWebLabel
          Left = 15
          Top = 343
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataBattery3Status'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery4Status: TWebLabel
          Left = 185
          Top = 343
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Orange'
          ElementID = 'dataBattery4Status'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery1: TWebLabel
          Left = 15
          Top = 47
          Width = 100
          Height = 20
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataBattery1'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery2: TWebLabel
          Left = 185
          Top = 47
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataBattery2'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery3: TWebLabel
          Left = 15
          Top = 326
          Width = 75
          Height = 20
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataBattery3'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataBattery4: TWebLabel
          Left = 185
          Top = 326
          Width = 100
          Height = 20
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N/A'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextSM Yellow'
          ElementID = 'dataBattery4'
          ElementFont = efCSS
          HeightStyle = ssAuto
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
        end
        object dataPerson1Location: TWebLabel
          Left = 0
          Top = 143
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Location'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Gray'
          ElementID = 'dataPerson1Location'
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
        object dataPerson2Location: TWebLabel
          Left = 0
          Top = 223
          Width = 300
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Location'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextRG Gray'
          ElementID = 'dataPerson2Location'
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
        object circleEnergyUse: TWebHTMLDiv
          Left = 14
          Top = 154
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleEnergyUse'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleEnergyUseMarker: TWebHTMLDiv
          Left = 14
          Top = 195
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleEnergyUseMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object divPerson1: TWebHTMLDiv
          Left = 125
          Top = 90
          Width = 50
          Height = 50
          ElementClassName = 'Text TextLG'
          ElementID = 'divPerson1'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object divPerson2: TWebHTMLDiv
          Left = 125
          Top = 255
          Width = 50
          Height = 50
          ElementClassName = 'Text TextLG'
          ElementID = 'divPerson2'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleEnergyToday: TWebHTMLDiv
          Left = 227
          Top = 154
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleEnergyToday'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleEnergyTodayMarker: TWebHTMLDiv
          Left = 227
          Top = 195
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleEnergyTodayMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleEnergyYesterday: TWebHTMLDiv
          Left = 201
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Circle'
          ElementID = 'circleEnergyYesterday'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object circleEnergyYesterdayMarker: TWebHTMLDiv
          Left = 201
          Top = 107
          Width = 67
          Height = 35
          ElementClassName = 'CircleMarker'
          ElementID = 'circleEnergyYesterdayMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
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
    end
    object pageHelpConfig: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHelpConfig'
      Caption = 'Help-Cf'
      ChildOrder = 4
      ElementFont = efCSS
      object divHelpConfig: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'divHelpConfig'
        ElementFont = efCSS
        HTML.Strings = (
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
        ElementClassName = 'Scroll'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
          ElementLabelClassName = 'Label HAData'
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
        ElementClassName = 'overflow-hidden Scroll'
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
        ElementClassName = 'overflow-hidden Scroll'
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
        ElementClassName = 'overflow-hidden Scroll'
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
        ElementClassName = 'overflow-hidden Scroll'
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
        ElementClassName = 'Title Splash'
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
        ElementClassName = 'Title SplashSub'
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
      ElementClassName = 'Page'
      ElementID = 'pageHelpConfigInfo'
      Caption = 'Help-Ci'
      ChildOrder = 12
      ElementFont = efCSS
      object divHelpConfigInfo: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'divHelpConfigInfo'
        ElementFont = efCSS
        HTML.Strings = (
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
      ElementClassName = 'Page'
      ElementID = 'pageHelpConfiguSensors'
      Caption = 'Help-Cs'
      ChildOrder = 13
      ElementFont = efCSS
      object divHelpConfigSensors: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'divHelpConfigSensors'
        ElementFont = efCSS
        HTML.Strings = (
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
          '')
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
      ElementClassName = 'Page'
      ElementID = 'pageHelpCustom'
      Caption = 'Help-C1'
      ChildOrder = 14
      ElementFont = efCSS
      object divHelpCustom: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'divHelpCustom'
        ElementFont = efCSS
        HTML.Strings = (
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
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageHelpHome: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHelpHome'
      Caption = 'Help-Hm'
      ChildOrder = 15
      ElementFont = efCSS
      object divHelpHome: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementClassName = 'Help Scroll'
        ElementID = 'divHelpHome'
        ElementFont = efCSS
        HTML.Strings = (
          '<div class="HelpTitle">'
          'Welcome to Catheedral!'
          '</div>'
          '<div class="HelpBody">'
          
            'The Catheedral Home page has four main components:  <span class=' +
            '"HelpHighlight">Time</span>, <span class="HelpHighlight">Climate' +
            '</span>, <span '
          
            'class="HelpHighlight">Weather</span>, and <span class="HelpHighl' +
            'ight">People</span>. In addition, there are <span class="HelpHig' +
            'hlight">Navigation '
          'Controls</span> '
          
            'for moving left and right between pages, and four <span class="H' +
            'elpHighlight">Main Buttons</span>, one in each corner.'
          '</div>'
          '<div class="HelpTitle">'
          'Time'
          '</div>'
          '<div class="HelpBody">'
          
            '  This displays the current time for your locale. Additional inf' +
            'ormation, such as sunrise/sunset and the current phase of the mo' +
            'on, may also be available if Home '
          'Assistant has '
          
            'been configured to provide this information to Catheedral.  Ther' +
            'e are as many as five rings in this panel.<br /><br />'
          
            '<ul><li><strong>Seconds</strong> shows the current second, much ' +
            'like a second hand on a traditional clock.</li>'
          
            '<li><strong>Minutes</strong> shows the current minute, much like' +
            ' the minutes hand on a traditional clock.</li>'
          
            '<li><strong>Hours</strong> shows the current hour, but unlike a ' +
            'traditional clock, this is calibrated for 24 hours.</li>'
          
            '<li><strong>Dawn/Dusk</strong> shows the portion of the day betw' +
            'een Dawn and dusk, using the same 24-hour calibration as <strong' +
            '>Hours</strong>.</li>'
          
            '<li><strong>Sunrise/Sunset</strong> shows the portion of the day' +
            ' between Sunrise and Sunset, using the same 24-hour calibration ' +
            'as '
          '<strong>Hours</strong>.</li>'
          '</ul>'
          
            'In addition, the length of time between Sunrise/Sunset is displa' +
            'yed as <strong>Daylight</strong> and the the length of time betw' +
            'een Dawn/Dusk is displayed as '
          '<strong>Twilight</strong>.'
          '</div>'
          '<div class="HelpTitle">'
          'Navigation Controls'
          '</div>'
          '<div class="HelpBody">'
          
            'At the very left and very right of the Catheedral interface are ' +
            'the <span class="HelpHighlight">Navigation Controls</span> that ' +
            'let you move back and forth between '
          'related '
          'pages. '
          '</div>'
          '<div class="HelpTitle">'
          'Main Buttons'
          '</div>'
          '<div class="HelpBody">'
          
            'There are four buttons, one in each corner, that are always visi' +
            'ble within Catheedral.  These are referred to as <span class="He' +
            'lpHighlight">Main '
          'Buttons</span>.<br />'
          '<br /> '
          
            'The <span class="HelpHighlight"><i class="fa-solid fa-circle-que' +
            'stion pe-1"></i>Help</span> button in the top left corner will p' +
            'resent you with information related to '
          'the '
          'page '
          'you'#39're currently '
          
            'viewing.  You can also view other <span class="HelpHighlight"><i' +
            ' class="fa-solid fa-circle-question pe-1"></i>Help</span>  pages' +
            ' by using the <span '
          
            'class="HelpHighlight">Navigation Controls</span> while viewing a' +
            'ny <span class="HelpHighlight"><i class="fa-solid fa-circle-ques' +
            'tion pe-1"></i>Help</span> '
          'page.<br '
          '/>'
          '<br />'
          
            'The <span class="HelpHighlight"><i class="fa-solid fa-shuffle pe' +
            '-1"></i>Change</span> button in the top right corner provides ac' +
            'cess to additional settings for the '
          
            'page.  In some instances, this will change to a <span class="Hel' +
            'pHighlight"><i class="fa-solid fa-rotate-right pe-1"></i>Refresh' +
            '</span> button that will allow you to '
          'reload '
          'that particular page.<br />'
          '<br />'
          
            'The <span class="HelpHighlight"><i class="fa-solid fa-home pe-1"' +
            '></i>Home</span> button in the bottom right corner will bring yo' +
            'u back to the Catheedral Home '
          'page.  If you'#39're already on '
          'the '
          'Catheedral '
          
            'Home page, this changes to a <span class="HelpHighlight"><i clas' +
            's="fa-solid fa-bolt pe-1"></i>Connected</span>  button, which ca' +
            'n be used to reset the '
          'connection '
          
            'between Catheedral and your Home Assistant server. If the connec' +
            'tion between Catheedral and your Home Assistant server is lost, ' +
            'this will change to a <span '
          
            'class="HelpHighlight"><i class="fa-solid fa-triangle-exclamation' +
            ' pe-1 text-warning"></i>Disconnected</span> button.<br />'
          '<br />'
          
            'The <span class="HelpHighlight"><i class="fa-solid fa-gear pe-1"' +
            '></i>Configuration</span> button in the bottom left corner bring' +
            's up additional pages that allow you '
          'to '
          
            'make changes to how Catheedral works.  If you'#39're already on the ' +
            '<span class="HelpHighlight"><i class="fa-solid fa-gear pe-1"></i' +
            '>Configuration</span> page, this '
          
            'button will instead change to a <span class="HelpHighlight"><i c' +
            'lass="fa-solid fa-power-off pe-1"></i>Power Off</span> button th' +
            'at will allow you to exit the '
          'Catheedral '
          'application completely.'
          '</div>')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = divHelpConfigMouseMove
      end
    end
    object pageLights: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageLights'
      Caption = 'Lt'
      ChildOrder = 16
      ElementFont = efCSS
      object btnLioghtsShowAll: TWebButton
        Left = 45
        Top = 20
        Width = 140
        Height = 68
        Caption = 
          '<div class="LightText">View All<br />Lights</div><div class="Lig' +
          'htBtnIcon mdi mdi-home-lightbulb"></div>'
        ElementClassName = 'LightButton'
        ElementID = 'btnLioghtsShowAll'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLioghtsShowAllClick
      end
      object btnLightsGroups: TWebButton
        Left = 45
        Top = 93
        Width = 140
        Height = 68
        Caption = 
          '<div class="LightText">Only<br />Groups</div><div class="LightBt' +
          'nIcon mdi mdi-lightbulb-group"></div>'
        ChildOrder = 1
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsGroups'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsGroupsClick
      end
      object btnLightsNoGroups: TWebButton
        Left = 45
        Top = 166
        Width = 140
        Height = 68
        Caption = 
          '<div class="LightText">Hide<br />Groups</div><div class="LightBt' +
          'nIcon mdi mdi-lightbulb-group-off"></div>'
        ChildOrder = 2
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsNoGroups'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsNoGroupsClick
      end
      object btnLightsAllOn: TWebButton
        Left = 45
        Top = 239
        Width = 140
        Height = 68
        Caption = 
          '<div class="LightText">Turn<br />All On</div><div class="LightBt' +
          'nIcon mdi mdi-lightbulb"></div>'
        ChildOrder = 3
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsAllOn'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsAllOnClick
      end
      object btnLightsAllOff: TWebButton
        Left = 45
        Top = 312
        Width = 140
        Height = 68
        Caption = 
          '<div class="LightText">Turn<br />All Off</div><div class="LightB' +
          'tnIcon mdi mdi-lightbulb-outline"></div>'
        ChildOrder = 4
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsAllOff'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsAllOffClick
      end
      object divAllLights: TWebHTMLDiv
        Left = 185
        Top = 2
        Width = 1050
        Height = 396
        ElementClassName = 'Scroll d-flex flex-wrap flex-row'
        ElementID = 'divAllLights'
        ChildOrder = 5
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageHelpLights: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHelpLights'
      Caption = 'Help-Lt'
      ChildOrder = 17
      ElementFont = efCSS
    end
    object pageExit: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageExit'
      Caption = 'Out'
      ChildOrder = 18
      ElementFont = efCSS
      object labelShutdown: TWebLabel
        Left = 340
        Top = 200
        Width = 600
        Height = 100
        Alignment = taCenter
        AutoSize = False
        Caption = 'Shutting Down - Please Wait'
        ElementClassName = 'Title SplashEnd'
        ElementID = 'labelShutdown'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        Layout = tlCenter
        WidthPercent = 100.000000000000000000
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
    Left = -6
    Top = 28
    Width = 40
    Height = 40
    Caption = 
      '<i class="fa-solid fa-circle-question fa-2x icon-default"></i><i' +
      ' class="fa-solid fa-caret-left fa-3x fa-fw icon-alternate"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnHelp'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    TabOrder = 1
    WidthPercent = 100.000000000000000000
    OnClick = btnHelpClick
  end
  object btnHome: TWebButton
    Left = 1235
    Top = 355
    Width = 40
    Height = 40
    Caption = 
      '<i class="fa-solid fa-home fa-2x icon-default"></i><i class="fa-' +
      'solid fa-triangle-exclamation fa-2x text-warning icon-third"></i' +
      '><i class="fa-solid fa-bolt fa-2x icon-alternate"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnHome'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    TabOrder = 3
    WidthPercent = 100.000000000000000000
    OnClick = btnHomeClick
  end
  object btnChange: TWebButton
    Left = 1236
    Top = -11
    Width = 40
    Height = 40
    Caption = 
      '<i class="fa-solid fa-screwdriver-wrench fa-2x icon-default"></i' +
      '><i class="fa-solid fa-rotate-right fa-2x icon-alternate"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnChange'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    TabOrder = 2
    WidthPercent = 100.000000000000000000
    OnClick = btnChangeClick
  end
  object btnConfiguration: TWebButton
    Left = -5
    Top = 355
    Width = 40
    Height = 40
    Caption = 
      '  <i class="fa-solid fa-gear fa-2x icon-default"></i><i class="f' +
      'a-solid fa-power-off fa-2x icon-alternate"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnConfiguration'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    TabOrder = 4
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
    OnTimer = tmrSwitchPageTimer
    Left = 592
    Top = 64
  end
  object tmrStartup: TWebTimer
    Enabled = False
    Interval = 500
    OnTimer = tmrStartupTimer
    Left = 520
    Top = 64
  end
  object tmrExit: TWebTimer
    Enabled = False
    Interval = 5000
    OnTimer = tmrExitTimer
    Left = 962
    Top = 64
  end
  object tmrLights: TWebTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrLightsTimer
    Left = 456
    Top = 64
  end
end
