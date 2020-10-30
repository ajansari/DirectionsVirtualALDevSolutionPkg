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
            action(SupplierIDUpdate)
            {
                ApplicationArea = All;
                Caption = 'Update Blank Suppliers';
                Image = Report;

                trigger OnAction()
                begin
                    Report.Run(Report::"Update Supplier ID");
                end;
            }
        }
    }

    var
        myInt: Integer;
}
