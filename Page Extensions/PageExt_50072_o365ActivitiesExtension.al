pageextension 50072 "O365ActiviteisExt" extends "O365 Activities"
{
    layout
    {
        addafter("Incoming Documents")
        {
            cuegroup(Finance)
            {
                field(BGListGvar; BGListGvar)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the BGListGvar field.';
                    trigger OnDrillDown()
                    var
                        BGGrec: Record "Bank Guarantee";
                        BGList: Page "Bank Guarantee List";
                    begin
                        BGGrec.Reset();
                        if BGGrec.FindSet() then;
                        BGList.SetTableView(BGGrec);
                        BGList.RunModal();
                    end;
                }
                field(FDListGavr; FDListGavr)
                {
                    ApplicationArea = all;
                    ToolTip = 'Specifies the value of the FDListGavr field.';
                    trigger OnDrillDown()
                    var
                        FDGrec: Record "Fixed Deposit_B2B";
                        FDList: Page FixedDepositList;
                    begin
                        FDGrec.Reset();
                        if FDGrec.FindSet() then;
                        FDList.SetTableView(FDGrec);
                        FDList.RunModal();
                    end;
                }
            }
        }
    }

    actions
    {

    }
    trigger OnAfterGetRecord()
    begin

    end;

    var
        BGListGvar: Integer;
        FDListGavr: Integer;

    procedure FDListCount()
    var
        FDGrec: Record "Fixed Deposit_B2B";
    //FDList: Page FixedDepositList;
    begin
        FDGrec.Reset();
        if FDGrec.FindSet() then
            FDListGavr := FDGrec.Count();
        //FDList.SetTableView(FDGrec);
        //FDList.RunModal();
    end;

    procedure BGListCount()
    var
        BGGrec: Record "Bank Guarantee";
        BGList: Page "Bank Guarantee List";
    begin
        BGGrec.Reset();
        if BGGrec.FindSet() then;
        BGListGvar := BGGrec.Count;
    end;
}