table 50016 ExampleHeader
{
    DataClassification = CustomerContent;
    Caption = 'Example Header';
    Description = 'ARQNRSH';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
        }
        field(2; "Document Date"; Date)
        {
            Caption = 'Document Date';
            DataClassification = CustomerContent;
        }
        field(3; "No.Series"; Code[20])
        {
            Caption = 'No. Series';
            DataClassification = CustomerContent;
        }
        field(10; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = CustomerContent;
        }
        field(13; "No.Printed"; Integer)
        {
            Caption = 'No. Printed';
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    procedure AssistEdit(OldExampleHeader: Record ExampleHeader): Boolean
    var
        ExampleHeader: Record ExampleHeader;
    begin
        with ExampleHeader do begin
            ExampleHeader := Rec;
            ExampleSetup.Get();
            ExampleSetup.TestField("Document Nos");
            if NoSeriesManagement.SelectSeries(ExampleSetup."Document Nos", OldExampleHeader."No.Series", "No.Series") then begin
                NoSeriesManagement.SetSeries("No.");
                Rec := ExampleHeader;
                exit(true);
            end;
        end;
    end;

    procedure InitRecord()
    begin
        if "Posting Date" = 0D then
            "Posting Date" := WorkDate();
        "Document Date" := WorkDate();
    end;

    trigger OnInsert()
    begin
        if "No." = '' then begin
            ExampleSetup.Get();
            ExampleSetup.TestField("Document Nos");
            NoSeriesManagement.InitSeries(ExampleSetup."Document Nos", xRec."No.Series", 0D, "No.", "No.Series");
        end;
        InitRecord();
    end;

    var
        NoSeriesManagement: Codeunit NoSeriesManagement;
        ExampleSetup: Record ExampleSetup;
        ExampleHeader: Record ExampleHeader;
        ExampleLine: Record ExampleLine;
}