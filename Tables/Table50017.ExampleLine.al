table 50017 "ExampleLine"
{
    Caption = 'Example Line';
    DataClassification = CustomerContent;
    Description = 'ARQNRSH';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            DataClassification = CustomerContent;
            TableRelation = ExampleHeader;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = CustomerContent;
        }
        field(3; "Example No."; Code[20])
        {
            Caption = 'Example No.';
            DataClassification = CustomerContent;
        }
        field(4; "Line Date"; Date)
        {
            Caption = 'Line Date';
            DataClassification = CustomerContent;
        }
        field(6; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;
            DecimalPlaces = 0 : 2;
        }
        field(7; "Example Description"; Text[50])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }
}