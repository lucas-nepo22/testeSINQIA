object dm: Tdm
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=testesinqia'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\lib\libmySQL.dll'
    Left = 120
    Top = 16
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 248
    Top = 16
  end
  object tb_cidades: TFDTable
    IndexFieldNames = 'Codigo_Cidade'
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'testesinqia.cidades'
    Left = 48
    Top = 136
    object tb_cidadesCodigo_Cidade: TFDAutoIncField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_cidadesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object tb_cidadesEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      Size = 50
    end
    object tb_cidadesCep_Inicial: TStringField
      FieldName = 'Cep_Inicial'
      Origin = 'Cep_Inicial'
      Required = True
      Size = 10
    end
    object tb_cidadesCep_Final: TStringField
      FieldName = 'Cep_Final'
      Origin = 'Cep_Final'
      Required = True
      Size = 10
    end
  end
  object DSCidades: TDataSource
    DataSet = query_Cidades
    Left = 200
    Top = 136
  end
  object query_Cidades: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cidades')
    Left = 120
    Top = 136
    object query_CidadesCodigo_Cidade: TFDAutoIncField
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_CidadesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object query_CidadesEstado: TStringField
      FieldName = 'Estado'
      Origin = 'Estado'
      Required = True
      Size = 50
    end
    object query_CidadesCep_Inicial: TStringField
      FieldName = 'Cep_Inicial'
      Origin = 'Cep_Inicial'
      Required = True
      Size = 10
    end
    object query_CidadesCep_Final: TStringField
      FieldName = 'Cep_Final'
      Origin = 'Cep_Final'
      Required = True
      Size = 10
    end
  end
  object rel_Cidades: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45456.945307696800000000
    ReportOptions.LastChange = 45458.065528912040000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 296
    Top = 136
    Datasets = <
      item
        DataSet = rel_ds_cidades
        DataSetName = 'DSCidades'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 362.834880000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CIDADES')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 83.149660000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cidade')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 272.126160000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estado')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 445.984540000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CEP')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = rel_ds_cidades
        DataSetName = 'DSCidades'
        RowCount = 0
        object DSCidadesNome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 83.149660000000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = rel_ds_cidades
          DataSetName = 'DSCidades'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCidades."Nome"]')
        end
        object DSCidadesEstado: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 275.905690000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'Estado'
          DataSet = rel_ds_cidades
          DataSetName = 'DSCidades'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCidades."Estado"]')
        end
        object DSCidadesCep_Inicial: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 445.984540000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'Cep_Inicial'
          DataSet = rel_ds_cidades
          DataSetName = 'DSCidades'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCidades."Cep_Inicial"]')
        end
        object DSCidadesCep_Final: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 555.590910000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'Cep_Final'
          DataSet = rel_ds_cidades
          DataSetName = 'DSCidades'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSCidades."Cep_Final"]')
        end
      end
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 638.740570000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Page]')
      end
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
      end
      object Time: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 86.929190000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Time]')
      end
    end
  end
  object rel_ds_cidades: TfrxDBDataset
    UserName = 'DSCidades'
    CloseDataSource = False
    DataSet = query_Cidades
    BCDToCurrency = False
    DataSetOptions = []
    Left = 376
    Top = 136
  end
  object query_Clientes: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 120
    Top = 248
    object query_ClientesCodigo_Cliente: TFDAutoIncField
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_ClientesCGC_CPF_Cliente: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 15
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      Required = True
    end
    object query_ClientesNome: TStringField
      DisplayWidth = 52
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object query_ClientesTelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 15
      FieldName = 'Telefone'
      Origin = 'Telefone'
      Size = 15
    end
    object query_ClientesEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Visible = False
      Size = 255
    end
    object query_ClientesBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Visible = False
      Size = 100
    end
    object query_ClientesComplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Visible = False
      Size = 100
    end
    object query_ClientesE_mail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_mail'
      Origin = 'E_mail'
      Visible = False
      Size = 100
    end
    object query_ClientesCodigo_Cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
      Visible = False
    end
    object query_ClientesCep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cep'
      Origin = 'Cep'
      Visible = False
      Size = 10
    end
  end
  object DSClientes: TDataSource
    DataSet = query_Clientes
    Left = 200
    Top = 248
  end
  object tb_clientes: TFDTable
    Connection = FDConnection1
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'testesinqia.clientes'
    Left = 40
    Top = 248
    object tb_clientesCodigo_Cliente: TFDAutoIncField
      FieldName = 'Codigo_Cliente'
      Origin = 'Codigo_Cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_clientesCGC_CPF_Cliente: TStringField
      FieldName = 'CGC_CPF_Cliente'
      Origin = 'CGC_CPF_Cliente'
      Required = True
    end
    object tb_clientesNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 100
    end
    object tb_clientesTelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefone'
      Origin = 'Telefone'
      Size = 15
    end
    object tb_clientesEndereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Endereco'
      Origin = 'Endereco'
      Size = 255
    end
    object tb_clientesBairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Bairro'
      Origin = 'Bairro'
      Size = 100
    end
    object tb_clientesComplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Complemento'
      Origin = 'Complemento'
      Size = 100
    end
    object tb_clientesE_mail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_mail'
      Origin = 'E_mail'
      Size = 100
    end
    object tb_clientesCodigo_Cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Codigo_Cidade'
      Origin = 'Codigo_Cidade'
    end
    object tb_clientesCep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Cep'
      Origin = 'Cep'
      Size = 10
    end
  end
  object rel_ds_clientes: TfrxDBDataset
    UserName = 'DSClientes'
    CloseDataSource = False
    DataSet = query_Clientes
    BCDToCurrency = False
    DataSetOptions = []
    Left = 384
    Top = 248
  end
  object rel_Clientes: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45456.945307696800000000
    ReportOptions.LastChange = 45458.071948472220000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 304
    Top = 248
    Datasets = <
      item
        DataSet = rel_ds_clientes
        DataSetName = 'DSClientes'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 196.535560000000000000
          Top = 3.779530000000000000
          Width = 362.834880000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'RELAT'#211'RIO DE CLIENTES')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 60.472480000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TELEFONE')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = rel_ds_clientes
        DataSetName = 'DSClientes'
        RowCount = 0
        object DSClientesNome: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 49.133890000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = rel_ds_clientes
          DataSetName = 'DSClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSClientes."Nome"]')
        end
        object DSClientesCGC_CPF_Cliente: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'CGC_CPF_Cliente'
          DataSet = rel_ds_clientes
          DataSetName = 'DSClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSClientes."CGC_CPF_Cliente"]')
        end
        object DSClientesTelefone: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929500000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'Telefone'
          DataSet = rel_ds_clientes
          DataSetName = 'DSClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[DSClientes."Telefone"]')
        end
      end
      object Page: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 638.740570000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Page]')
      end
      object Date: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Date]')
      end
      object Time: TfrxMemoView
        IndexTag = 1
        AllowVectorExport = True
        Left = 86.929190000000000000
        Top = 1028.032160000000000000
        Width = 79.370130000000000000
        Height = 18.897650000000000000
        Frame.Typ = []
        Memo.UTF8W = (
          '[Time]')
      end
    end
  end
end
