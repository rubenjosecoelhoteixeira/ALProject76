table 50018 ExampleSetup
{
    Caption = 'Example Setup';
    DataClassification = CustomerContent;
    Description = 'ARQNRSH';

    fields
    {
        field(3; "Document Nos"; Code[20])
        {
            Caption = 'Document Nos';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Document Nos")
        {
            Clustered = true;
        }
    }
}