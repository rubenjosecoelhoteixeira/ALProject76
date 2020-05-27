page 50030 ExampleLineSubform
{
    Description = 'ARQNRSH';
    Caption = 'Example Line Subform';
    PageType = ListPart;
    UsageCategory = None;
    SourceTable = ExampleLine;
    AutoSplitKey = true;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("Document No."; "Document No.")
                {
                    Caption = 'Document No.';
                    ApplicationArea = All;
                }
                field("Line No."; "Line No.")
                {
                    Caption = 'Line No.';
                    ApplicationArea = All;
                }
                field("Example No."; "Example No.")
                {
                    Caption = 'Example No.';
                    ApplicationArea = All;
                }
                field("Line Date"; "Line Date")
                {
                    Caption = 'Line Date';
                    ApplicationArea = All;
                }
                field(Quantity; Quantity)
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;
                }
                field("Example Description"; "Example Description")
                {
                    Caption = 'Example Description';
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}