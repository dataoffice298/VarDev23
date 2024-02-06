report 50025 MaterialReceiptVoucher
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Material Receipt Voucher';
    DefaultLayout = RDLC;
    RDLCLayout = 'Report\Layouts\MRVNew.rdl';

    dataset
    {
        dataitem("Purch. Rcpt. Header"; "Purch. Rcpt. Header")
        {
            RequestFilterFields = "No.";
            column(MRVNO; "No.")
            { }
            column(MRV_Date; format("Posting Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(Shortcut_Dimension_1_Code; "Shortcut Dimension 1 Code")
            { }
            column(Shortcut_Dimension_2_Code; "Shortcut Dimension 2 Code")
            { }
            column(Vendor_Invoice_No_; "Vendor Invoice No.")
            { }
            column(Vendor_Invoice_Date; format("Vendor Invoice Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(Party_Dc_No_; "Dc No.")
            { }
            column(Dc_Date; format("Dc Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(Pc_Date; format("Pc Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(Document_Date; format("Document Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(Posting_Date; format("Posting Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(NameofPartAddressCapLbl; NameofPartAddressCapLbl)
            { }
            column(PoNoCapLbl; PoNoCapLbl)
            { }
            column(PartyDCCapLbl; PartyDCCapLbl)
            { }

            column(InvCapLbl; InvCapLbl)
            { }
            column(DateCapLbl; DateCapLbl)
            { }
            column(MRVNOCapLbl; MRVNOCapLbl)
            { }
            column(RemarksCaptionLbl; RemarksCaptionLbl)
            { }
            column(CompanyInfoGrec; CompanyInfoGrec.Name)
            { }
            column(CompanyInfoGrecAddress; CompanyInfoGrec.Address)
            { }
            column(Mrs; "Buy-from Vendor Name")
            { }
            column(Contact; "Buy-from Contact")
            { }
            column(Address; "Buy-from Address")
            { }
            column(CompanyInfoGrecPic; CompanyInfoGrec.Picture)
            { }
            column(Buy_from_City; "Buy-from City")
            { }
            column(Dc_No_; "Dc No.")
            { }
            column(MaterialRequestVoucherCapLbl; MaterialRequestVoucherCapLbl)
            { }
            column(MRVDateCapLbl; MRVDateCapLbl)
            { }
            column(DivisionCodeCapLbl; DivisionCodeCapLbl)
            { }
            column(ProjectCodeCapLbl; ProjectCodeCapLbl)
            { }
            column(MRVDetailsCapLbl; MRVDetailsCapLbl)
            { }
            column(QCDetailsCapLbl; QCDetailsCapLbl)
            { }
            column(ItemNoCapLbl; ItemNoCapLbl)
            { }
            column(ItemDescriptionCapLbl; ItemDescriptionCapLbl)
            { }
            column(ItemDrawingNoCapLbl; ItemDrawingNoCapLbl)
            { }
            column(UnitOfMeasureCapLbl; UnitOfMeasureCapLbl)
            { }
            column(PoQtyCapLbl; PoQtyCapLbl)
            { }
            column(ReceivedQtyCapLbl; ReceivedQtyCapLbl)
            { }
            column(IRNoCApLbl; IRNoCApLbl)
            { }
            column(IRDateCApLbl; IRDateCApLbl)
            { }
            column(QuantityOfferedCapL; QuantityOfferedCapL)
            { }
            column(AccepetdQtyCapLbl; AccepetdQtyCapLbl)
            { }
            column(RejectedQtyCapLbl; RejectedQtyCapLbl)
            { }
            column(ReworkQtyCapLbl; ReworkQtyCapLbl)
            { }
            column(PoDateCapLbl; PoDateCapLbl)
            { }
            column(InvoiceDateCapLbl; InvoiceDateCapLbl)
            { }
            column(DcDateCapLbl; DcDateCapLbl)
            { }
            column(VendorGrec_Name; VendorGrec.Name)
            { }
            column(VendorGrec_Address; VendorGrec.Address)
            { }
            column(PurchaseHeaderGrec_No; PurchaseHeaderGrec."No.")
            { }
            column(PurchaseHeaderGrec_OrderDate; format(PurchaseHeaderGrec."Order Date", 0, '<Day,2>-<Month,2>-<Year4>'))
            { }
            column(LocationGrec_Name; LocationGrec.Name)
            { }
            column(LocationGrec_Address; LocationGrec.Address)
            { }
            column(LocationGrec_Address2; LocationGrec."Address 2")
            { }
            column(StoresCapLbl; StoresCapLbl)
            { }
            column(QCCapLbl; QCCapLbl)
            { }
            column(FinanceCapLbl; FinanceCapLbl)
            { }
            column(DivNameGvar; DivNameGvar)
            { }
            column(ProjectNameGvar; ProjectNameGvar)
            { }
            dataitem("Purch. Rcpt. Line"; "Purch. Rcpt. Line")
            {
                DataItemLinkReference = "Purch. Rcpt. Header";
                DataItemLink = "Document No." = FIELD("No.");
                DataItemTableView = where(Quantity = filter(<> 0));
                column(ItemNo; "No.")
                { }
                column(QC_Enabled_B2B; "QC Enabled B2B")
                { }
                column(Description; Description)
                { }
                column(Quantity; Quantity)
                { }
                column(QuantityOfferedGvar; QuantityOfferedGvar)
                { }
                column(unit; "Location Code")
                { }
                column(Unit_of_Measure_Code; "Unit of Measure Code")
                { }
                column(Quantity_Accepted_B2B; "Quantity Accepted B2B")
                { }
                column(Quantity_Rejected_B2B; "Quantity Rejected B2B")
                { }
                column(Quantity_Rework_B2B; "Quantity Rework B2B")
                { }
                column(RateUnit; "Direct Unit Cost")
                { }
                column(PoQtyGVar; PoQtyGVar)
                { }
                column(IRNoGvar; IRNoGvar)
                { }
                column(IRDateGvar; IRDateGvar)
                { }
                column(DrawingNoGvar; DrawingNoGvar)
                { }
                column(RemarksGvar; RemarksGvar)
                { }
                column(MrvQtyAcceptedVar; MrvQtyAcceptedVar)
                {

                }
                column(MrvQtyRejectedVar; MrvQtyRejectedVar)
                {

                }
                column(MrvQtyReworkvar; MrvQtyReworkvar)
                {

                }
                trigger OnAfterGetRecord()
                begin
                    Clear(PoQtyGVar);
                    Clear(IRNoGvar);
                    Clear(IRDateGvar);
                    Clear(RemarksGvar);
                    Clear(TotalVar);
                    PurChaseLineGrec.Reset();
                    PurChaseLineGrec.SetRange("Document Type", PurChaseLineGrec."Document Type"::Order);
                    PurChaseLineGrec.SetRange("Document No.", "Purch. Rcpt. Header"."Order No.");
                    PurChaseLineGrec.SetRange("Line No.", "Purch. Rcpt. Line"."Order Line No.");
                    //PurChaseLineGrec.setf(Type, PurChaseLineGrec.Type::Item);
                    PurChaseLineGrec.SetRange("No.", "Purch. Rcpt. Line"."No.");
                    if PurChaseLineGrec.FindFirst() then begin
                        PoQtyGVar := PurChaseLineGrec.Quantity;
                    end;
                    InspectionReceiptHeader.Reset();
                    InspectionReceiptHeader.SetRange(Status, true);
                    InspectionReceiptHeader.SetRange("Receipt No.", "Purch. Rcpt. Line"."Document No.");
                    InspectionReceiptHeader.SetRange("Item No.", "Purch. Rcpt. Line"."No.");
                    if InspectionReceiptHeader.FindFirst() then begin
                        IRNoGvar := InspectionReceiptHeader."No.";
                        IRDateGvar := InspectionReceiptHeader."Posting Date";
                        RemarksGvar := InspectionReceiptHeader."Quality Remarks";
                    end;
                    Clear(DrawingNoGvar);
                    DocumnetAttachMnet.Reset();
                    DocumnetAttachMnet.SetRange("Table ID", 27);
                    DocumnetAttachMnet.SetRange("No.", "No.");
                    DocumnetAttachMnet.SetRange(Type_B2B, DocumnetAttachMnet.Type_B2B::Drawing);
                    DocumnetAttachMnet.SetCurrentKey("Attached Date");
                    if DocumnetAttachMnet.FindLast() then
                        DrawingNoGvar := DocumnetAttachMnet."Drawing No_B2B";
                    Clear(QuantityOfferedGvar);
                    if "QC Enabled B2B" then
                        QuantityOfferedGvar := Quantity;
                    /*
                    Clear(MrvQtyAcceptedVar);
                    Clear(MrvQtyRejectedVar);
                    Clear(MrvQtyReworkvar);
                    Clear(MrvReworkVar);
                    MrvLedgerEntryRec.Reset();
                    MrvLedgerEntryRec.SetRange("Document No.", "Purch. Rcpt. Line"."Document No.");
                    MrvLedgerEntryRec.SetRange("Document Line No.", "Purch. Rcpt. Line"."Line No.");
                    if MrvLedgerEntryRec.FindSet() then begin
                        repeat
                            MrvQtyAcceptedVar += MrvLedgerEntryRec."Accepted Quantity";
                            MrvQtyRejectedVar += MrvLedgerEntryRec."Rejected Quantity";
                        until MrvLedgerEntryRec.Next() = 0;


                    end;
                    MrvLedgerEntryRec.Reset();
                    MrvLedgerEntryRec.SetRange("Document No.", "Purch. Rcpt. Line"."Document No.");
                    MrvLedgerEntryRec.SetRange("Document Line No.", "Purch. Rcpt. Line"."Line No.");
                    MrvLedgerEntryRec.SetRange("Rework Level", 0);
                    if MrvLedgerEntryRec.FindSet() then begin
                        repeat
                            MrvQtyReworkvar += MrvLedgerEntryRec."Rework Quantity";
                        until MrvLedgerEntryRec.Next() = 0;
                    end;

                    MrvLedgerEntryRec2.Reset();
                    MrvLedgerEntryRec2.SetRange("Document No.", "Purch. Rcpt. Line"."Document No.");
                    MrvLedgerEntryRec2.SetRange("Document Line No.", "Purch. Rcpt. Line"."Line No.");
                    MrvLedgerEntryRec2.SetRange("Rework Level", 1);
                    if MrvLedgerEntryRec2.FindSet() then begin
                        repeat
                            TotalVar += (MrvLedgerEntryRec2."Accepted Quantity" + MrvLedgerEntryRec2."Rejected Quantity")
                        until MrvLedgerEntryRec2.Next() = 0
                    end;
                    MrvQtyReworkvar := MrvLedgerEntryRec."Rework Quantity" - TotalVar;
                    */
                end;



            }
            trigger OnAfterGetRecord()
            begin
                Clear(VendorGrec);
                Clear(PurchaseHeaderGrec);
                Clear(LocationGrec);
                Clear(DivNameGvar);
                Clear(ProjectNameGvar);
                if VendorGrec.get("Purch. Rcpt. Header"."Buy-from Vendor No.") then;
                if PurchaseHeaderGrec.get(PurchaseHeaderGrec."Document Type"::Order, "Purch. Rcpt. Header"."Order No.") then;
                if LocationGrec.Get("Location Code") then;
                DimensionValues.Reset();
                DimensionValues.SetRange(Code, "Shortcut Dimension 1 Code");
                if DimensionValues.FindFirst() then
                    DivNameGvar := DimensionValues.Name;
                DimensionValues.Reset();
                DimensionValues.SetRange(Code, "Shortcut Dimension 2 Code");
                if DimensionValues.FindFirst() then
                    ProjectNameGvar := DimensionValues.Name;
                //B2BSSD09Jan2023<<
                Clear(LocationGrec);
                if LocationGrec.Get("Location Code") then;

                //B2BSSD09Jan2023>>



            end;

        }
    }

    trigger OnPreReport()
    begin
        CompanyInfoGrec.Get();
        CompanyInfoGrec.CalcFields(Picture);
    end;
    /*requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {

                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }*/



    var
        VendorGrec: Record Vendor;
        PurchaseHeaderGrec: Record "Purchase Header";
        InspectionReceiptHeader: Record "Inspection Receipt Header B2B";
        InspectionReceiptLine: Record "Inspection Receipt Line B2B";
        PurChaseLineGrec: Record "Purchase Line";
        PoQtyGVar: Decimal;
        MrvLedgerEntryRec: Record "MRV Quality Ledger Entry";
        MrvLedgerEntryRec2: Record "MRV Quality Ledger Entry";

        MrvQtyAcceptedVar: Decimal;
        MrvQtyRejectedVar: Decimal;
        MrvQtyReworkvar: Decimal;
        IRNoGvar: Text;
        IRDateGvar: Date;
        RemarksCaptionLbl: Label 'Remarks';
        MaterialRequestVoucherCapLbl: Label 'MATERIAL RECEIPT VOUCHER';
        CompanyInfoGrec: Record "Company Information";
        NameofPartAddressCapLbl: Label 'Name of the Party & Address';
        PoNoCapLbl: Label 'P.O.No';
        PartyDCCapLbl: Label 'Party D.C.No';
        InvCapLbl: Label 'Invoice No.';
        PoDateCapLbl: Label 'PO Date';
        InvoiceDateCapLbl: Label 'Invoice Date';
        DcDateCapLbl: Label 'DC Date';
        DateCapLbl: Label 'Date';
        MRVNOCapLbl: Label 'MRV No.';
        MRVDateCapLbl: Label 'MRV Date';
        DivisionCodeCapLbl: Label 'Division Code';
        ProjectCodeCapLbl: Label 'Project Code';
        MRVDetailsCapLbl: label 'MRV Details';
        QCDetailsCapLbl: Label 'QC Details';
        ItemNoCapLbl: Label 'Item No.';
        ItemDescriptionCapLbl: Label 'Item Description';
        ItemDrawingNoCapLbl: Label 'Item Drawing';
        UnitOfMeasureCapLbl: Label 'Unit Of Measure';
        PoQtyCapLbl: Label 'Po Qty';
        ReceivedQtyCapLbl: Label 'Received Qty.';
        IRNoCApLbl: Label 'IR No.';
        IRDateCApLbl: Label 'IR Date';
        QuantityOfferedCapL: label 'Quantity offered';
        AccepetdQtyCapLbl: Label 'Accepted Quantity';
        RejectedQtyCapLbl: Label 'Rejected Quanity';
        ReworkQtyCapLbl: Label 'Rework Quantity';
        // gen : Record "Gen. Journal Narration";
        saleline: Record "Sales Line";
        DrawingNoGvar: Text;
        ItemGrec: Record Item;
        DocumnetAttachMnet: Record "Document Attachment";
        RemarksGvar: Text;
        LocationGrec: Record Location;
        StoresCapLbl: Label 'Stores Department';
        QCCapLbl: Label 'QC Department';
        FinanceCapLbl: Label 'Finance Department';
        DivNameGvar: Text;
        ProjectNameGvar: Text;
        DimensionValues: Record "Dimension Value";
        Re: Report 18008;
        QuantityOfferedGvar: Decimal;
        pag: Page 99000883;
        TotalVar: Decimal;
        MrvReworkVar: Decimal;

}