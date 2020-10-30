pageextension 70000 CustomerCardExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Name")
        {
            field(Name2; "Name 2")
            {
                ApplicationArea = All;
            }
            field("Supplier ID"; "Supplier ID")
            {
                ApplicationArea = All;
            }
            field(AnniversaryDate; "Anniversary Date")
            {
                ApplicationArea = All;
            }
        }

    }

    actions
    {
        addlast(reporting)
        {
            action(AgedARReport)
            {
                ApplicationArea = All;
                Caption = 'Aged AR - AJ';
                Image = Report;

                trigger OnAction()
                begin
                    Report.Run(Report::"Aged Accounts Receivable NA");
                end;
            }
        }
    }

    var
        myInt: Integer;
}
