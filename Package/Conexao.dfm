object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 251
  Width = 486
  PixelsPerInch = 120
  object FdConexao: TFDConnection
    Params.Strings = (
      'Database=C:\CrisProject\YeshuaCont\Database\RETAG_BASE.FDB'
      'Password=Xexa4ace@'
      'CharacterSet=WIN1252'
      'Port=3050'
      'User_Name=SYSDBA'
      'DriverID=FB')
    LoginPrompt = False
    Left = 152
    Top = 120
  end
end
