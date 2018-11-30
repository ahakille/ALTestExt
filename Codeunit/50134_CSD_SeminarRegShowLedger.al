codeunit 50134 "CSD Seminar Reg.-Show Ledger"
{
    TableNo = "CSD Seminar Register";
    var
        SeminarLedgerEntry : Record "CSD Seminar Ledger Entry";
    trigger OnRun()
    begin
        SeminarLedgerEntry.SETRANGE("Entry No.", "From Entry No.", "To Entry No.");
        page.Run(Page::"CSD Seminar Ledger Entries",
        SeminarLedgerEntry);
    end;


}