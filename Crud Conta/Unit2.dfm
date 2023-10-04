object dmBancario: TdmBancario
  Height = 371
  Width = 681
  PixelsPerInch = 96
  object cnxBancario: TSQLConnection
    ConnectionName = 'bancario'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver280.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      'Database=C:\Users\Lab-08 PC-03\Documents\Prova\BANKACME.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 56
    Top = 32
  end
  object sqlConta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from conta where codcon = :id')
    SQLConnection = cnxBancario
    Left = 56
    Top = 112
  end
  object dspConta: TDataSetProvider
    DataSet = sqlConta
    Left = 56
    Top = 192
  end
  object cdsConta: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConta'
    Left = 56
    Top = 272
  end
  object sds: TSimpleDataSet
    Active = True
    Aggregates = <>
    Connection = cnxBancario
    DataSet.CommandText = 'select CODCON, LIMITE, NOMCON, SALDO from CONTA'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 56
    Top = 336
  end
  object sqlHistorico: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from historico where codhis = :id;')
    SQLConnection = cnxBancario
    Left = 184
    Top = 120
  end
  object dspHistorico: TDataSetProvider
    DataSet = sqlHistorico
    Left = 184
    Top = 200
  end
  object cdsHistorico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistorico'
    Left = 184
    Top = 280
  end
  object sqlMovimento: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from movimento where codcon = :id')
    SQLConnection = cnxBancario
    Left = 320
    Top = 128
  end
  object dspMovimento: TDataSetProvider
    DataSet = sqlMovimento
    Left = 320
    Top = 200
  end
  object cdsMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovimento'
    Left = 320
    Top = 288
  end
end
