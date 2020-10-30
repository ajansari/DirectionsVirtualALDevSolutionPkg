report 70000 "Updated Blank Suppliers"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = True;
    UseRequestPage = False;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                if Customer."Supplier ID" = '' then
                    Customer."Supplier ID" := 'Underfined';
                Customer.Modify();
            end;

            trigger OnPostdataitem()
            var
                myInt: Integer;
            begin
                Message('Customers Updated');
            end;
        }
    }



    var
        myInt: Integer;
}
