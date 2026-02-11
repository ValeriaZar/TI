unit Unit3;

interface
Function AreCoprime(A, B: Integer): Boolean;
Function DetimationDecryption(Input: String; KeyStr: String): String;
Function DetimationEncryption(Input: String; KeyStr: String): String;
Function FindFactor(Key: Integer; Number: Integer): Integer;

implementation

Uses
    System.SysUtils;

Function FindFactor(Key: Integer; Number: Integer): Integer;
Var
    Temp: Integer;
Begin
    Temp := 0;
    While (Temp * Key) Mod Number <> 1 Do
        Inc(Temp);
    FindFactor := Temp;
End;

Function AreCoprime(A, B: Integer): Boolean;
Var
    Temp: Integer;
Begin
    While B <> 0 Do
    Begin
        Temp := B;
        B := A Mod B;
        A := Temp;
    End;
    Result := A = 1;
End;

Function DetimationEncryption(Input: String; KeyStr: String): String;
Const
    N = 26;
Var
    Key, I, J: Integer;
Begin
    Key := StrToInt(KeyStr);
    Result := Input;
    For J := 1 To Length(Result) Do
    Begin
        If Result[J] In ['A' .. 'Z', 'a' .. 'z'] Then
        Begin
            If Result[J] In ['A' .. 'Z'] Then
                I := Ord(Result[J]) - Ord('A')
            Else
                I := Ord(Result[J]) - Ord('a');

            I := (I * Key) Mod N;

            If Result[J] In ['A' .. 'Z'] Then
                Result[J] := Chr(Ord('A') + I)
            Else
                Result[J] := Chr(Ord('a') + I);
        End;
    End;
End;

Function DetimationDecryption(Input: String; KeyStr: String): String;
Const
    N = 26;
Var
    Key, I, J, Temp, PreviousValue: Integer;
Begin
    Key := StrToInt(KeyStr);
    Result := Input;
    For J := 1 To Length(Result) Do
    Begin
        If Result[J] In ['A' .. 'Z', 'a' .. 'z'] Then
        Begin
            If Result[J] In ['A' .. 'Z'] Then
                I := Ord(Result[J]) - Ord('A')
            Else
                I := Ord(Result[J]) - Ord('a');
            Temp := FindFactor(Key, N);
            PreviousValue := I * Temp Mod N;
            If Result[J] In ['A' .. 'Z'] Then
                Result[J] := Chr(Ord('A') + PreviousValue)
            Else
                Result[J] := Chr(Ord('a') + PreviousValue);
        End;
    End;
End;


end.
