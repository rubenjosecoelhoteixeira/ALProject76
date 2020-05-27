page 50031 "Example Header List"
{
    Description = 'ARQNRSH';
    Caption = 'Examples';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = ExampleHeader;
    Editable = false;
    CardPageId = ExampleHeader;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    ApplicationArea = All;
                    Caption = 'No.';
                }
                field("Document Date"; "Document Date")
                {
                    ApplicationArea = All;
                    Caption = 'Document Date';
                }
                field("Posting Date"; "Posting Date")
                {
                    ApplicationArea = All;
                    Caption = 'Posting Date';
                }
                field("No.Printed"; "No.Printed")
                {
                    ApplicationArea = All;
                    Caption = 'No. Printed';
                }
            }
        }
    }
}