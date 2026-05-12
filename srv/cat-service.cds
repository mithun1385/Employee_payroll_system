using {employee as db} from '../db/schema';

service employeeSerice {

    entity employee    as projection on db.Employees;
    entity Attendances as projection on db.Attendances;
    entity Leaves      as projection on db.Leaves;
    entity Bonuses     as projection on db.Bonuses;
    entity Deductions  as projection on db.Deductions;
    entity payrolls    as projection on db.payrolls;

}
