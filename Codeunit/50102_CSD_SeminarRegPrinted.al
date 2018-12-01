codeunit 50102 SeminarRegPrinted

{
    TableNo = "CSD Posted Seminar Reg. Header";

    trigger OnRun();
    begin
        Find;
        "No. Printed" += 1;
        Modify;
        Commit;
    end;
}