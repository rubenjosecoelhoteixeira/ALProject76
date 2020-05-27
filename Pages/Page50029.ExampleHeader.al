page 50029 ExampleHeader
{
    Description = 'ARQNRSH';
    Caption = 'Example';
    PageType = Document;
    UsageCategory = None;
    SourceTable = ExampleHeader;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Caption = 'No.';
                    ApplicationArea = All;

                    trigger OnAssistEdit()
                    begin
                        if AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Document Date"; "Document Date")
                {
                    Caption = 'Document Date';
                    ApplicationArea = All;
                }
                field("Posting Date"; "Posting Date")
                {
                    Caption = 'Posting Date';
                    ApplicationArea = All;
                }
                field("No.Printed"; "No.Printed")
                {
                    Caption = 'No. Printed';
                    ApplicationArea = All;
                }
            }
        }
    }
}