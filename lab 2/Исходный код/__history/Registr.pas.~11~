Unit Registr;

Interface

Uses
    System.SysUtils;

Function GenirateKey(Seed: String; BitCount: Int64): String;
Function Algorithm(Text: String; Key: String): String;

Implementation

Function GenirateKey(Seed: String; BitCount: Int64): String;
Var
    Temp, I, j: Integer;
    Current, Key: String;
Begin
    Key := '';
    Current := Seed;
    for I := 1 to BitCount do
    Begin
        key := key + Current[1];
        Temp := (Ord(Current[28]) - Ord('0')) Xor (Ord(Current[3]) - Ord('0')) Xor (Ord(Current[1]) - Ord('0'));
        For J := 1 To Length(Current) - 1 Do
            Current[J] := Current[J + 1];
        Current[28] := Char(Ord('0') + Temp);
    End;
    GenirateKey := Key;
End;

Function Algorithm(Text: String; Key: String): String;
Var
    I: Int64;
Begin
    Result := '';
    For I := 1 To High(Text) Do
    Begin
        Result := Result + Char(Ord('0') + ( (Ord(Text[I]) - Ord('0')) xor (Ord(Key[I]) - Ord('0'))));
    End;
End;

End.
