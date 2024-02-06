page 50053 "Nav App Objects"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Application Object Metadata";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Runtime Package ID"; Rec."Runtime Package ID")
                {
                    ApplicationArea = all;
                }
                field("Object Type"; Rec."Object Type")
                {
                    ApplicationArea = all;
                }
                field("Object ID"; Rec."Object ID")
                {
                    ApplicationArea = All;

                }
                field("Object Subtype"; Rec."Object Subtype")
                {
                    ApplicationArea = all;
                }
                field("Object Name"; Rec."Object Name")
                {
                    ApplicationArea = all;
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