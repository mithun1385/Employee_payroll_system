namespace employee;

using {cuid} from '@sap/cds/common';

entity Employees : cuid {
    name        : String(50);
    email       : String(50);
    phone       : String(15);
    designation : String(50);
    department  : String(50);
    attendances : Association to many Attendances
                      on attendances.employee = $self;
    leaves      : Association to many Leaves
                      on leaves.employee = $self;

    bonuses     : Association to many Bonuses
                      on bonuses.employee = $self;

    deductions  : Association to many Deductions
                      on deductions.employee = $self;

    payrolls    : Association to many payrolls
                      on payrolls.employee = $self;
}

entity Attendances : cuid {

    workingHourse : Integer;
    workingDays   : Integer;
    totalDays     : Integer;
    employee      : Association to Employees;

}

entity Leaves : cuid {
    numberOfleaves    : String;
    startDate         : Date;
    endDate           : Date;
    reason            : String;
    totalnumberleaves : String;
    employee          : Association to Employees;
}

entity Bonuses : cuid {

    bonusAmount : Decimal(10, 2);
    employee    : Association to Employees;
}

entity Deductions : cuid {
    deductionAmount : Decimal(10, 2);
    reason          : String(55);
    employee        : Association to Employees;
}

entity payrolls : cuid {
    salary    : Decimal;
    bonus     : Decimal;
    deduction : Decimal;
    netsalary : Decimal;
    employee  : Association to Employees;

}
