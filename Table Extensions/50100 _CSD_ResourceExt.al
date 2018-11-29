tableextension 50100 ResourceExt extends Resource
{
    fields
    {
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                Rec.TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption ='Instrutor,Room';
        }
        
        field(50101; "CSD Resource Type"; Option)
        {
            OptionMembers = "Internal","External";
            Caption = 'Resource Type';
            OptionCaption = 'Internal,External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            Caption = 'Maximum participants';
        }
        field(50103; "CSD Quantity Per Day"; Decimal)
        {
            Caption = 'Quantity Per Day';
        }
    }

    var
        myInt: Integer;
}