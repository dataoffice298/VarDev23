pageextension 50125 TransferOrdersExt extends "Transfer Orders"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }
    trigger OnOpenPage()
    begin
        Rec.FilterGroup(2);
        Rec.SetRange("Created From MRS", false);
        Rec.FilterGroup(0);
    end;

    var
        myInt: Integer;
}