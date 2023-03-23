object Form1: TForm1
  Width = 1280
  Height = 400
  Color = clBlack
  CSSLibrary = cssBootstrap
  ElementFont = efCSS
  Shadow = False
  OnClick = MiletusFormClick
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
    OnClick = divBackgroundClick
  end
  object pages: TWebPageControl
    Left = 8
    Top = 0
    Width = 1280
    Height = 400
    HelpType = htKeyword
    ElementClassName = 'Page'
    ElementID = 'pages'
    ElementFont = efCSS
    TabIndex = 0
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
            '<span class="mdi mdi-home-assistant pe-1" style="color:#3399CC;"' +
            '></span>HA URL'
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
            '<span class="mdi mdi-home-assistant pe-1" style="color:#3399CC;"' +
            '></span>HA Token'
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
          ElementLabelClassName = 'Title Status d-block w-100 text-end'
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
          'ck; font-size:24px;"></i><div class="mdi mdi-home-assistant pe-2' +
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
          'ck; font-size:24px;"></i><div class="mdi mdi-home-assistant pe-2' +
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
        WidthPercent = 100.000000000000000000
        OnChange = listBackgroundsChange
        Items.Strings = (
          'images/background_orion_nebula.jpg'
          'images/background_cosmic_cliffs.jpg'
          'images/background_protostar.jpg'
          'images/walking.gif'
          
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
          Left = 50
          Top = 220
          Width = 200
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
          Left = 50
          Top = 162
          Width = 200
          Height = 73
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'ShortTime'
          ElementClassName = 'overflow-visible TextXL'
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
          OnClick = labelTimeClick
        end
        object labelDay: TWebLabel
          Left = 50
          Top = 130
          Width = 200
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
        object ringSeconds: TWebHTMLDiv
          Left = 179
          Top = 49
          Width = 70
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringSeconds'
          ChildOrder = 3
          ElementFont = efCSS
          Role = ''
        end
        object ringMinutes: TWebHTMLDiv
          Left = 115
          Top = 49
          Width = 58
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringMinutes'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringHours: TWebHTMLDiv
          Left = 42
          Top = 49
          Width = 67
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringHours'
          ChildOrder = 1
          ElementFont = efCSS
          Role = ''
        end
        object ringDawnDusk: TWebHTMLDiv
          Left = 191
          Top = 90
          Width = 84
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringDawnDusk'
          ChildOrder = 5
          ElementFont = efCSS
          Role = ''
        end
        object ringRiseSet: TWebHTMLDiv
          Left = 23
          Top = 90
          Width = 86
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringRiseSet'
          ChildOrder = 4
          ElementFont = efCSS
          Role = ''
        end
        object ringMinutesMarker: TWebHTMLDiv
          Left = 95
          Top = 279
          Width = 90
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringMinutesMarker'
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
        object ringSecondsMarker: TWebHTMLDiv
          Left = 191
          Top = 279
          Width = 102
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringSecondsMarker'
          ChildOrder = 8
          ElementFont = efCSS
          Role = ''
        end
        object ringHoursMarker: TWebHTMLDiv
          Left = 5
          Top = 279
          Width = 84
          Height = 35
          ElementClassName = 'Ring TxRing'
          ElementID = 'ringHoursMarker'
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
          Left = 50
          Top = 166
          Width = 200
          Height = 73
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Temp'
          ElementClassName = 'overflow-visible TextXL'
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
          OnClick = dataHomeTemperatureClick
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
          Left = 50
          Top = 220
          Width = 200
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = '20C'
          ElementClassName = 'overflow-visible'
          ElementLabelClassName = 'Text TextLG Gray'
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
          Left = 50
          Top = 130
          Width = 200
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
          ElementLabelClassName = 'Text TextSM White'
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
          Left = 50
          Top = 100
          Width = 200
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
          Caption = 'Lighting'
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
          Left = 75
          Top = 0
          Width = 150
          Height = 75
          Cursor = crHandPoint
          ElementClassName = 'TextCover'
          ElementID = 'divHomeLightsCover'
          ChildOrder = 25
          ElementFont = efCSS
          Role = ''
          OnClick = divHomeLightsCoverClick
        end
        object ringClimateTemperature: TWebHTMLDiv
          Left = 3
          Top = 143
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringClimateTemperature'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringSetPoint: TWebHTMLDiv
          Left = 230
          Top = 143
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringSetPoint'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringClimateHumidity: TWebHTMLDiv
          Left = 61
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringClimateHumidity'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringClimateTemperatureMarker: TWebHTMLDiv
          Left = 3
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringClimateTemperatureMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringSetPointMarker: TWebHTMLDiv
          Left = 227
          Top = 184
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringSetPointMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringClimateHumidityMarker: TWebHTMLDiv
          Left = 134
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Ring CxRing'
          ElementID = 'ringClimateHumidityMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object btnHomeTempDown: TWebButton
          Left = 60
          Top = 253
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
          Top = 253
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
          Cursor = crHandPoint
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
          Left = 50
          Top = 162
          Width = 200
          Height = 73
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Temp'
          ElementClassName = 'overflow-visible TextXL'
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
          Left = 50
          Top = 220
          Width = 200
          Height = 62
          Alignment = taCenter
          AutoSize = False
          Caption = 'Pressure'
          ElementClassName = 'overflow-visible d-block'
          ElementLabelClassName = 'd-block Text TextLG Gray'
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
          Left = 50
          Top = 260
          Width = 200
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
        object ringWeatherHumidity: TWebHTMLDiv
          Left = 69
          Top = 74
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherHumidity'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringWeatherHumidityMarker: TWebHTMLDiv
          Left = 142
          Top = 74
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherHumidityMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringWeatherTemperature: TWebHTMLDiv
          Left = 6
          Top = 146
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherTemperature'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringWeatherTemperatureMarker: TWebHTMLDiv
          Left = 6
          Top = 187
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherTemperatureMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringWeatherPressure: TWebHTMLDiv
          Left = 227
          Top = 145
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherPressure'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringWeatherPressureMarker: TWebHTMLDiv
          Left = 227
          Top = 186
          Width = 67
          Height = 35
          ElementClassName = 'Ring WxRing'
          ElementID = 'ringWeatherPressureMarker'
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
        object btnRadar: TWebButton
          Left = 3
          Top = 47
          Width = 50
          Height = 50
          Cursor = crHandPoint
          HelpType = htKeyword
          Caption = '<span class="mdi mdi-radar mdi-24px"></span>'
          ChildOrder = 21
          ElementClassName = 'MainButton btn btn-link text-decoration-none TextCover'
          ElementID = 'btnRadar'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnRadarClick
        end
        object btnSatellite: TWebButton
          Left = 247
          Top = 47
          Width = 50
          Height = 50
          Cursor = crHandPoint
          HelpType = htKeyword
          Caption = '<i class="fa-solid fa-satellite fa-xl"></i>'
          ChildOrder = 21
          ElementClassName = 'MainButton btn btn-link text-decoration-none TextCover'
          ElementID = 'btnSatellite'
          ElementFont = efCSS
          HeightPercent = 100.000000000000000000
          WidthPercent = 100.000000000000000000
          OnClick = btnSatelliteClick
        end
        object divWeatherCover: TWebHTMLDiv
          Left = 43
          Top = 100
          Width = 230
          Height = 219
          Cursor = crHandPoint
          ElementClassName = 'TextCover'
          ElementID = 'divWeatherCover'
          ChildOrder = 25
          ElementFont = efCSS
          Role = ''
          OnClick = divWeatherCoverClick
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
          Top = 141
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
        object dataEnergyUse: TWebLabel
          Left = 50
          Top = 162
          Width = 200
          Height = 73
          Cursor = crHandPoint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Watts'
          ElementClassName = 'overflow-visible TextXL'
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
          OnClick = dataEnergyUseClick
        end
        object ringEnergyUse: TWebHTMLDiv
          Left = 14
          Top = 154
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyUse'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringEnergyUseMarker: TWebHTMLDiv
          Left = 14
          Top = 195
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyUseMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object divPerson1: TWebHTMLDiv
          Left = 125
          Top = 93
          Width = 50
          Height = 50
          Cursor = crHandPoint
          ElementClassName = 'Text TextLG'
          ElementID = 'divPerson1'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          OnClick = divPerson1Click
        end
        object divPerson2: TWebHTMLDiv
          Left = 125
          Top = 255
          Width = 50
          Height = 50
          Cursor = crHandPoint
          ElementClassName = 'Text TextLG'
          ElementID = 'divPerson2'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
          OnClick = divPerson2Click
        end
        object ringEnergyToday: TWebHTMLDiv
          Left = 227
          Top = 154
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyToday'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringEnergyTodayMarker: TWebHTMLDiv
          Left = 227
          Top = 195
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyTodayMarker'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringEnergyYesterday: TWebHTMLDiv
          Left = 201
          Top = 66
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyYesterday'
          ChildOrder = 2
          ElementFont = efCSS
          Role = ''
        end
        object ringEnergyYesterdayMarker: TWebHTMLDiv
          Left = 201
          Top = 107
          Width = 67
          Height = 35
          ElementClassName = 'Ring ExRing'
          ElementID = 'ringEnergyYesterdayMarker'
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
      object WebLabel2: TWebLabel
        Left = 447
        Top = 264
        Width = 154
        Height = 50
        AutoSize = False
        Caption = 'Rooms'
        ElementLabelClassName = 'Text TextXL White'
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
      object WebLabel3: TWebLabel
        Left = 455
        Top = 272
        Width = 154
        Height = 50
        AutoSize = False
        Caption = 'Scenes'
        ElementLabelClassName = 'Text TextXL White'
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
      ElementClassName = 'Page'
      ElementID = 'pageHelpConfig'
      Caption = 'Help-Cf'
      ChildOrder = 4
      ElementFont = efCSS
      object HelpConfig: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpConfig'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
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
      object divSensors: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Scroll'
        ElementID = 'divSensors'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
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
        Top = 360
        Width = 600
        Height = 20
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
      object divSplashImage: TWebHTMLDiv
        Left = 168
        Top = 144
        Width = 100
        Height = 41
        ElementClassName = 'SplashImage'
        ElementID = 'divSplashImage'
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
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
      object HelpConfigInfo: TWebHTMLDiv
        Left = 55
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpConfigInfo'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
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
      object HelpConfigSensors: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpConfigSensors'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
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
      object HelpCustomPages: TWebHTMLDiv
        Left = 50
        Top = 20
        Width = 1180
        Height = 360
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpCustomPages'
        ElementFont = efCSS
        HTML.Strings = (
          '')
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
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
      object HelpHome: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpHome'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
      end
    end
    object pageLights: TWebTabSheet
      Tag = 17
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
      object HelpLights: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpLights'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
      end
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
        Top = 360
        Width = 600
        Height = 20
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
      object divExitImage: TWebHTMLDiv
        Left = 176
        Top = 152
        Width = 100
        Height = 41
        ElementClassName = 'SplashImage'
        ElementID = 'divExitImage'
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageEnergy: TWebTabSheet
      Tag = 20
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageEnergy'
      Caption = 'En'
      ChildOrder = 19
      ElementFont = efCSS
      object WebButton1: TWebButton
        Left = 45
        Top = 20
        Width = 150
        Height = 68
        Caption = 
          '<div class="LightText">View All<br />Energy</div><div class="Lig' +
          'htBtnIcon mdi mdi-home-lightning-bolt"></div>'
        ElementClassName = 'LightButton'
        ElementID = 'btnLioghtsShowAll'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLioghtsShowAllClick
      end
      object WebButton2: TWebButton
        Left = 45
        Top = 93
        Width = 150
        Height = 68
        Caption = 
          '<div class="LightText">All<br />Batteries</div><div class="Light' +
          'BtnIcon mdi mdi-battery-charging"></div>'
        ChildOrder = 1
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsGroups'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsGroupsClick
      end
      object WebButton3: TWebButton
        Left = 45
        Top = 166
        Width = 150
        Height = 68
        Caption = 
          '<div class="LightText">All<br />Devices</div><div class="LightBt' +
          'nIcon mdi mdi-lightning-bolt-circle"></div>'
        ChildOrder = 2
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsNoGroups'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsNoGroupsClick
      end
      object WebButton4: TWebButton
        Left = 45
        Top = 239
        Width = 150
        Height = 68
        Caption = 
          '<div class="LightText">Grid<br />Power</div><div class="LightBtn' +
          'Icon mdi mdi-transmission-tower"></div>'
        ChildOrder = 3
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsAllOn'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsAllOnClick
      end
      object WebButton5: TWebButton
        Left = 45
        Top = 312
        Width = 150
        Height = 68
        Caption = 
          '<div class="LightText">Solar<br />Power</div><div class="LightBt' +
          'nIcon mdi mdi-solar-panel"></div>'
        ChildOrder = 4
        ElementClassName = 'LightButton'
        ElementID = 'btnLightsAllOff'
        ElementFont = efCSS
        HeightStyle = ssAuto
        HeightPercent = 100.000000000000000000
        WidthPercent = 100.000000000000000000
        OnClick = btnLightsAllOffClick
      end
    end
    object pageHelpEnergy: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHelpEnergy'
      Caption = 'Help-En'
      ChildOrder = 20
      ElementFont = efCSS
      object HelpEnergy: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpEnergy'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
      end
    end
    object pageWeather: TWebTabSheet
      Tag = 22
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageWeather'
      Caption = 'Wx'
      ChildOrder = 21
      ElementFont = efCSS
      OnClick = pageWeatherClick
      object divWx: TWebHTMLDiv
        Left = 45
        Top = 5
        Width = 1190
        Height = 390
        ElementClassName = 'd-flex flex-column gap-1 lh-1 pe-none'
        ElementID = 'divWx'
        ElementFont = efCSS
        Role = ''
        object divWxHourly: TWebHTMLDiv
          Left = 76
          Top = 80
          Width = 1050
          Height = 90
          ElementClassName = 'd-flex gap-2 order-1 flex-fill'
          ElementID = 'divWxHourly'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
          object divWxH1: TWebHTMLDiv
            Left = 45
            Top = 11
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-1 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH1'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxH2: TWebHTMLDiv
            Left = 210
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-2 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH2'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxH3: TWebHTMLDiv
            Left = 370
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-3 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH3'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxH4: TWebHTMLDiv
            Left = 530
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-4 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH4'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxH5: TWebHTMLDiv
            Left = 690
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-5 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH5'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxH6: TWebHTMLDiv
            Left = 850
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-6 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxH6'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
        end
        object divWxDaily: TWebHTMLDiv
          Left = 75
          Top = 246
          Width = 1050
          Height = 90
          ElementClassName = 'd-flex gap-2 order-3 flex-fill'
          ElementID = 'divWxDaily'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
          object divWxD1: TWebHTMLDiv
            Left = 50
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-1 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD1'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxD2: TWebHTMLDiv
            Left = 210
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-2 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD2'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxD3: TWebHTMLDiv
            Left = 370
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-3 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD3'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxD4: TWebHTMLDiv
            Left = 530
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-4 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD4'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxD5: TWebHTMLDiv
            Left = 690
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-5 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD5'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
          object divWxD6: TWebHTMLDiv
            Left = 850
            Top = 10
            Width = 150
            Height = 70
            ElementClassName = 
              'd-flex flex-column order-6 WxPanel flex-fill rounded border bord' +
              'er-2 border-secondary'
            ElementID = 'divWxD6'
            HeightStyle = ssAuto
            WidthStyle = ssAuto
            ChildOrder = 1
            ElementPosition = epIgnore
            ElementFont = efCSS
            Role = ''
          end
        end
        object divWxText: TWebHTMLDiv
          Left = 75
          Top = 182
          Width = 1050
          Height = 45
          ElementClassName = 
            'order-2 flex-shrink-1 Text TextRG White text-wrap px-3 py-2 lh-s' +
            'm'
          ElementID = 'divWxText'
          HeightStyle = ssAuto
          WidthStyle = ssPercent
          ChildOrder = 1
          ElementPosition = epIgnore
          ElementFont = efCSS
          Role = ''
        end
      end
    end
    object pageHelpWeather: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageHelpWeather'
      Caption = 'Help-Wx'
      ChildOrder = 22
      ElementFont = efCSS
      object HelpWeather: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementClassName = 'Help Scroll'
        ElementID = 'HelpWeather'
        ElementFont = efCSS
        Role = ''
        OnClick = ResetInactivityTimer
        OnMouseMove = HelpConfigMouseMove
      end
    end
    object pageRadar: TWebTabSheet
      Tag = 22
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageRadar'
      Caption = 'Rx'
      ChildOrder = 23
      ElementFont = efCSS
      object divRadar: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementID = 'divRadar'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pageSatellite: TWebTabSheet
      Tag = 22
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pageSatellite'
      Caption = 'Sx'
      ChildOrder = 24
      ElementFont = efCSS
      object divSatellite: TWebHTMLDiv
        Left = 50
        Top = 0
        Width = 1180
        Height = 400
        ElementID = 'divSatellite'
        ElementFont = efCSS
        Role = ''
      end
    end
    object pagePerson: TWebTabSheet
      Tag = 26
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      ElementClassName = 'Page'
      ElementID = 'pagePerson'
      Caption = 'Px'
      ChildOrder = 25
      ElementBodyClassName = 'pagePersonBody'
      ElementFont = efCSS
      object divLocationMap: TWebHTMLDiv
        Left = 0
        Top = 0
        Width = 1280
        Height = 400
        ElementID = 'divLocationMap'
        ChildOrder = 3
        ElementFont = efCSS
        Role = ''
      end
      object divPersonPhoto: TWebHTMLDiv
        Left = 40
        Top = 5
        Width = 150
        Height = 150
        ElementID = 'divPersonPhoto'
        ElementFont = efCSS
        Role = ''
      end
      object divLocations: TWebHTMLDiv
        Left = 765
        Top = 5
        Width = 465
        Height = 390
        ElementID = 'divLocations'
        ChildOrder = 1
        ElementFont = efCSS
        Role = ''
      end
      object divPersonInfo: TWebHTMLDiv
        Left = 60
        Top = 155
        Width = 150
        Height = 240
        ElementID = 'divPersonInfo'
        ChildOrder = 2
        ElementFont = efCSS
        Role = ''
      end
    end
    object pagesSheet27: TWebTabSheet
      Left = 0
      Top = 20
      Width = 1280
      Height = 380
      Caption = 'Help-Px'
      ChildOrder = 26
      ElementFont = efCSS
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
    Left = -50
    Top = 28
    Width = 40
    Height = 40
    Caption = 
      '<div class="mdi mdi-help-rhombus icon-default" style="font-size:' +
      '40px;"></div><i class="fa-solid fa-caret-left fa-3x fa-fw icon-a' +
      'lternate"></i>'
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
    Left = 1330
    Top = 355
    Width = 40
    Height = 40
    Caption = 
      '<img src="images/Catheedral-128.png" width=32 height=32 class="i' +
      'con-default"><i class="fa-solid fa-triangle-exclamation fa-2x te' +
      'xt-warning icon-third"></i><i class="fa-solid fa-bolt fa-2x icon' +
      '-alternate"></i>'
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
    Top = -50
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
    Left = 5
    Top = 400
    Width = 40
    Height = 40
    Caption = 
      '<i class="fa-solid fa-gear fa-2x icon-default"></i><i class="fa-' +
      'solid fa-power-off fa-2x icon-alternate"></i>'
    ChildOrder = 22
    ElementClassName = 'btn btn-link MainButton'
    ElementID = 'btnConfiguration'
    ElementFont = efCSS
    HeightPercent = 100.000000000000000000
    TabOrder = 4
    WidthPercent = 100.000000000000000000
    OnClick = btnConfigurationClick
  end
  object divLightSwitch: TWebHTMLDiv
    Left = 8
    Top = 446
    Width = 286
    Height = 233
    ElementClassName = 'Popup'
    ElementID = 'divLightSwitch'
    ChildOrder = 8
    ElementFont = efCSS
    Role = ''
    object divSLLightSwitch: TWebHTMLDiv
      Left = 225
      Top = 190
      Width = 100
      Height = 41
      ElementID = 'divSLLightSwitch'
      ElementFont = efCSS
      HTML.Strings = (
        
          '    <sl-switch id="switchlight" class="bigswitches" style="--wid' +
          'th: 150px; --height: 50px; --thumb-size: 75px"></sl-switch>  '
        '      '
        '    <style>  '
        '    .bigswitches::part(label) { '
        '      padding-left: 15px; '
        '    }  '
        '    .bigswitches::part(thumb) { '
        
          '        filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0' +
          'px 2px black);'
        '      border-width: 5px; '
        '    }  '
        '    .bigswitches::part(control) { '
        '      border-radius: 15px; '
        
          '      filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px' +
          ' 2px black);'
        '    }  '
        '    </style>  ')
      Role = ''
    end
    object labelLightSwitch: TWebHTMLDiv
      Left = 140
      Top = 10
      Width = 320
      Height = 68
      ElementClassName = 'overflow-visible'
      ElementID = 'labelLightSwitch'
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
    end
  end
  object divLightDimmer: TWebHTMLDiv
    Left = 300
    Top = 406
    Width = 370
    Height = 299
    ElementClassName = 'Popup'
    ElementID = 'divLightDimmer'
    ChildOrder = 8
    ElementFont = efCSS
    Role = ''
    object labelLightDimmer: TWebHTMLDiv
      Left = 140
      Top = 10
      Width = 320
      Height = 68
      ElementClassName = 'overflow-visible'
      ElementID = 'labelLightDimmer'
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
    end
    object divSLLightRange: TWebHTMLDiv
      Left = 50
      Top = 275
      Width = 100
      Height = 41
      ElementID = 'divSLLightRange'
      ChildOrder = 1
      ElementFont = efCSS
      HTML.Strings = (
        
          '<sl-range id="dimmerlight" class="bigrange" tooltip="none" style' +
          '="--track-height: 30px; --thumb-size: 70px; --track-color-active' +
          ':white; --track-color-inactive: '
        'gray;"></sl-range>  '
        '      '
        '<style>  '
        '.bigrange::part(base){ '
        '  width: 500px;'
        '}  '
        '.bigrange::part(input) {'
        '  border-radius: 25px;'
        '  border: 3px solid gray;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.bigrange::part(base) > input::-webkit-slider-thumb {'
        '  border: 3px solid royalblue;'
        '  color: white;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '</style>  ')
      Role = ''
    end
    object divDimmerThumb: TWebHTMLDiv
      Left = 96
      Top = 255
      Width = 100
      Height = 41
      ElementClassName = 'Thumb'
      ElementID = 'divDimmerThumb'
      ChildOrder = 2
      ElementFont = efCSS
      Role = ''
    end
    object labelDimmerValue: TWebHTMLDiv
      Left = 250
      Top = 144
      Width = 100
      Height = 41
      ElementClassName = 'text-end'
      ElementID = 'labelDimmerValue'
      ChildOrder = 3
      ElementFont = efCSS
      Role = ''
    end
  end
  object divLightColor: TWebHTMLDiv
    Left = 672
    Top = 406
    Width = 600
    Height = 380
    ElementClassName = 'Popup'
    ElementID = 'divLightColor'
    ChildOrder = 8
    ElementFont = efCSS
    Role = ''
    object WebHTMLDiv4: TWebHTMLDiv
      Left = 140
      Top = 88
      Width = 320
      Height = 41
      ChildOrder = 1
      ElementFont = efCSS
      HTML.Strings = (
        '<sl-color-picker'
        '   id="colorlight"'
        '  class="fancyslider"'
        '  style="'
        '    --grid-height: 164px;'
        '    --grid-width: 320px;'
        '    --slider-height: 30px;'
        '    --slider-handle-size: 45px;'
        '  "'
        '   inline'
        '  uppercase'
        '  format="rgb"'
        '  value="maroon"'
        '></sl-colorpicker>'
        ''
        '<style>'
        '.fancyslider::part(base) {'
        '  border: none;'
        '  border-radius: 12px;'
        '  background-color: #F0F0FF80;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.fancyslider::part(grid) {'
        '  border-top-left-radius: 11px;'
        '  border-top-right-radius: 11px;'
        '}'
        '.fancyslider::part(hue-slider) {'
        '  margin-left: 20px;'
        '  margin-right: 20px;'
        '  margin-top: 5px;'
        '  margin-bottom: 7px;'
        '  border-radius: 10px;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.fancyslider::part(slider-handle) {'
        '  border: 4px solid royalblue;'
        
          '  filter: drop-shadow(0px 0px 1px black) drop-shadow(0px 0px 1px' +
          ' black);'
        '}'
        '.fancyslider::part(preview) {'
        ' display: none;'
        '  width: 0px;'
        '  height: 0px;'
        '}'
        '.fancyslider::part(input) {'
        '  border: none;'
        '  border-radius: 10px;'
        '  --sl-input-border-radius-medium: 10px;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.fancyslider::part(format-button) {'
        '  border:none'
        '  border-radius: 10px;'
        '  margin-right: 1px;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.fancyslider::part(eye-dropper-button) {'
        '  border: none;'
        '  border-radius: 10px;'
        '  margin-left: 2px;'
        
          '  filter: drop-shadow(0px 0px 2px black) drop-shadow(0px 0px 2px' +
          ' black);'
        '}'
        '.fancyslider::part(format-button__base) {'
        '  border-top-left-radius:10px;'
        '  border-bottom-left-radius:10px;'
        '}'
        '.fancyslider::part(eye-dropper-button__base) {'
        '  border-top-right-radius: 10px;'
        '  border-bottom-right-radius: 10px;'
        '}'
        '</style>')
      Role = ''
    end
    object labelLightColor: TWebHTMLDiv
      Left = 140
      Top = 10
      Width = 320
      Height = 68
      ElementClassName = 'overflow-visible'
      ElementID = 'labelLightColor'
      ChildOrder = 1
      ElementFont = efCSS
      Role = ''
    end
    object btnSwatch0: TWebButton
      Left = 10
      Top = 10
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch0'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch1: TWebButton
      Tag = 1
      Left = 10
      Top = 71
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch1'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch5: TWebButton
      Tag = 5
      Left = 10
      Top = 315
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch5'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch2: TWebButton
      Tag = 2
      Left = 10
      Top = 132
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch2'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch4: TWebButton
      Tag = 4
      Left = 10
      Top = 254
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch4'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch3: TWebButton
      Tag = 3
      Left = 10
      Top = 193
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch3'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch6: TWebButton
      Tag = 6
      Left = 71
      Top = 10
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch6'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch7: TWebButton
      Tag = 7
      Left = 71
      Top = 71
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch7'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch8: TWebButton
      Tag = 8
      Left = 71
      Top = 132
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch8'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      TextDirection = tdInherit
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch9: TWebButton
      Tag = 9
      Left = 71
      Top = 193
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch9'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch10: TWebButton
      Tag = 10
      Left = 71
      Top = 254
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch10'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch11: TWebButton
      Tag = 11
      Left = 71
      Top = 315
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch11'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch12: TWebButton
      Tag = 12
      Left = 474
      Top = 10
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch12'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch18: TWebButton
      Tag = 18
      Left = 535
      Top = 10
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch18'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch19: TWebButton
      Tag = 19
      Left = 535
      Top = 71
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch19'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch13: TWebButton
      Tag = 13
      Left = 474
      Top = 71
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch13'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch14: TWebButton
      Tag = 14
      Left = 474
      Top = 132
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch14'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch20: TWebButton
      Tag = 20
      Left = 535
      Top = 132
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch20'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch21: TWebButton
      Tag = 21
      Left = 535
      Top = 193
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch21'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch15: TWebButton
      Tag = 15
      Left = 474
      Top = 193
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch15'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch16: TWebButton
      Tag = 16
      Left = 474
      Top = 254
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch16'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch22: TWebButton
      Tag = 22
      Left = 535
      Top = 254
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch22'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch17: TWebButton
      Tag = 17
      Left = 474
      Top = 315
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch17'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
    object btnSwatch23: TWebButton
      Tag = 23
      Left = 535
      Top = 315
      Width = 55
      Height = 55
      ChildOrder = 2
      ElementClassName = 'btn btn-primary Swatch'
      ElementID = 'btnSwatch23'
      ElementFont = efCSS
      HeightPercent = 100.000000000000000000
      WidthPercent = 100.000000000000000000
      OnClick = ColorSwatchSelected
    end
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
    Left = 272
    Top = 64
  end
  object tmrInactivity: TWebTimer
    Enabled = False
    Interval = 45000
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
    Left = 874
    Top = 64
  end
  object tmrLights: TWebTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrLightsTimer
    Left = 456
    Top = 64
  end
  object tmrHidePopups: TWebTimer
    Enabled = False
    Interval = 400
    OnTimer = tmrHidePopupsTimer
    Left = 384
    Top = 64
  end
  object tmrRefresh: TWebTimer
    Interval = 1800000
    OnTimer = tmrRefreshTimer
    Left = 936
    Top = 64
  end
end
