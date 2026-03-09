Unit Unit1;

Interface

Uses
    Winapi.Windows,
    Winapi.Messages,
    System.SysUtils,
    System.Variants,
    System.Classes,
    Vcl.Graphics,
    Vcl.Controls,
    Vcl.Forms,
    Vcl.Dialogs,
    Vcl.StdCtrls,
    Unit2;

Type
    TMainForm = Class(TForm)
        TaskOneLabel: TLabel;
        TaskTwoLAbel: TLabel;
        TaskOneButton: TButton;
        TaskTwoButton: TButton;
        Procedure TaskOneButtonClick(Sender: TObject);
        Procedure TaskTwoButtonClick(Sender: TObject);
    Private
        { Private declarations }
    Public
        { Public declarations }
        DetimationMethod: Boolean;
    End;

Var
    MainForm: TMainForm;

Implementation

{$R *.dfm}

Procedure TMainForm.TaskOneButtonClick(Sender: TObject);
Var
    Form2: TForm2;
Begin
    Form2 := TForm2.Create(Self);
    Form2.NameLabel.Caption := 'Decimation method';
    Form2.Label1.Caption := 'Enter your text:';
    Form2.Label2.Caption := 'Result:';
    Form2.Label3.Caption := 'Enter your key';
    DetimationMethod := True;
    Form2.ShowModal;
    Form2.Free;
End;

Procedure TMainForm.TaskTwoButtonClick(Sender: TObject);
Var
    Form2: TForm2;
Begin
    Form2 := TForm2.Create(Self);
    Form2.NameLabel.Caption := 'Шифр Вижинера';
    Form2.Label1.Caption := 'Введите текст:';
    Form2.Label2.Caption := 'Результат';
    Form2.Label3.Caption := 'Введите ключ:';
    DetimationMethod := False;
    Form2.ShowModal;
    Form2.Free;
End;

End.
