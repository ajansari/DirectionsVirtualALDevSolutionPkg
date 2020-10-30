tableextension 70000 "Customer Table AJ" extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(70001; "Supplier ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Supplier ID';


        }
        field(70002; "Anniversary Date"; Date)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Anniversary';
        }
    }

    var
        myInt: Integer;
}
