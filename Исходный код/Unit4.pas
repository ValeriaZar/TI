Unit Unit4;

Interface

Function VigenereEncrypt(Const Str, KeyStr: String): String;
Function VigenereDecrypt(Const Str, KeyStr: String): String;
Function NormalizeKey(Const Key: String): String;
Function Check(C: Char; Str: String): Boolean;
Function CharIndex(C: Char; Const Alphabet: String): Integer;

Const
    LOWER = 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';
    UPPER = 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';
    N = 33;

Implementation

Uses
    System.SysUtils;

Function NormalizeKey(Const Key: String): String;
Var
    I: Integer;
Begin
    Result := '';
    For I := 1 To LEngth(Key) Do
    Begin
        If Check(Key[I], LOWER) Then
            Result := Result + UPPER[CharIndex(Key[I], LOWER)]
        Else
            Result := Result + Key[I];
    End;
End;

Function Check(C: Char; Str: String): Boolean;
Begin
    Result := Pos(C, Str) > 0;
End;

Function CharIndex(C: Char; Const Alphabet: String): Integer;
Begin
    Result := Pos(C, Alphabet);
End;

Function VigenereEncrypt(Const Str, KeyStr: String): String;
Var
    I, J, Shift, Current: Integer;
    Key: String;
Begin
    Result := Str;
    Key := NormalizeKey(KeyStr);
    J := 1;
    For I := 1 To Length(Result) Do
    Begin
        Shift := CharIndex(Key[J], UPPER) - 1;
        If Check(REsult[I], LOWER) Then
        BEgin
            Current := CharIndex(Result[I], LOWER);
            Result[I] := LOWER[(Current - 1 + Shift) Mod N + 1]
        End
        Else
            If Check(REsult[I], UPPER) Then
            Begin
                Current := CharIndex(Result[I], UPPER);
                Result[I] := UPPER[(Current - 1 + Shift) Mod N + 1]
            End
            Else
                Continue;
        Inc(J);
        If J > Length(Key) Then
            J := 1;
    End;
End;

Function VigenereDecrypt(Const Str, KeyStr: String): String;
Var
    I, J, Shift, Current: Integer;
    Key: String;
Begin
    Result := Str;
    Key := NormalizeKey(KeyStr);
    J := 1;
    For I := 1 To Length(Result) Do
    Begin
        Shift := CharIndex(Key[J], UPPER) - 1;
        If Check(REsult[I], LOWER) Then
        BEgin
            Current := CharIndex(Result[I], LOWER);
            Result[I] := LOWER[(Current - 1 - Shift + N) Mod N + 1]
        End
        Else
            If Check(REsult[I], UPPER) Then
            Begin
                Current := CharIndex(Result[I], UPPER);
                Result[I] := UPPER[(Current - 1 - Shift + N) Mod N + 1]
            End
            Else
                Continue;
        Inc(J);
        If J > Length(Key) Then
            J := 1;
    End;
End;

End.
