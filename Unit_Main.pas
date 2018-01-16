unit Unit_Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TFm_Main = class(TForm)
    Btn_List: TButton;
    Btn_Write: TButton;
    Btn_Delete: TButton;
    Memo_Text: TMemo;
    procedure Btn_ListClick(Sender: TObject);
    procedure Btn_WriteClick(Sender: TObject);
    procedure Btn_DeleteClick(Sender: TObject);


 end;


var
  Fm_Main: TFm_Main;

implementation

{$R *.dfm}

procedure TFm_Main.Btn_ListClick(Sender: TObject);
var
  Str: TStrings;
  Reg: TRegistry;
begin
  try
    Str := TStringList.Create;
    Reg := TRegistry.Create;
    try
      Reg.RootKey := HKEY_CURRENT_USER;
      if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run',False) then
      begin
        //Memo_Text.Lines.Clear;
        Reg.GetValueNames(Str);
        Memo_Text.Lines.AddStrings(Str);
      end;
    finally
      Reg.CloseKey;
    end;
  finally
    Str.Free;
    Reg.Free;
  end;


end;


procedure TFm_Main.Btn_DeleteClick(Sender: TObject);
var
  Reg: TRegistry;
  Str: string;
begin
  try
    Reg := TRegistry.Create;
    Str := Application.ExeName;
    Reg.RootKey := HKEY_CURRENT_USER;
    try
      if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run',False) then
      begin
        Reg.DeleteValue(str);
        Reg.DeleteKey('\Software\Microsoft\Windows\CurrentVersion\Run');
      end;
    finally
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

procedure TFm_Main.Btn_WriteClick(Sender: TObject);
var
 Reg: TRegistry;
begin
  try
    Reg := TRegistry.Create;
    Reg.RootKey := HKEY_CURRENT_USER;
    try
      if Reg.OpenKey('\Software\Microsoft\Windows\CurrentVersion\Run',False) then
      begin
        Reg.WriteString('Can',Application.ExeName);
      end;
    finally
      Reg.CloseKey;
    end;
  finally
    Reg.Free;
  end;
end;

end.
