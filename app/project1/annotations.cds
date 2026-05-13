using employeeSerice as service from '../../srv/cat-service';
annotate service.employee with @(
   
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'name',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'designation',
                Value : designation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'department',
                Value : department,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Attendance Details ',
            ID : 'AttendanceDetails',
            Target : 'attendances/@UI.LineItem#AttendanceDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Payroll',
            ID : 'Payroll',
            Target : 'payrolls/@UI.LineItem#Payroll',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Leave',
            ID : 'Leave',
            Target : 'leaves/@UI.LineItem#Leave',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Deduction',
            ID : 'Deduction',
            Target : 'deductions/@UI.LineItem#Deduction',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Bonus',
            ID : 'Bonus',
            Target : 'bonuses/@UI.LineItem#Bonus',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'name',
            Value : name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'email',
            Value : email,
        },
        {
            $Type : 'UI.DataField',
            Label : 'phone',
            Value : phone,
        },
        {
            $Type : 'UI.DataField',
            Label : 'designation',
            Value : designation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'department',
            Value : department,
        },
    ],
);

annotate service.Attendances with @(
    UI.LineItem #AttendanceDetails : [
        {
            $Type : 'UI.DataField',
            Value : totalDays,
            Label : 'totalDays',
        },
        {
            $Type : 'UI.DataField',
            Value : workingDays,
            Label : 'workingDays',
        },
        {
            $Type : 'UI.DataField',
            Value : workingHourse,
            Label : 'workingHourse',
        },
    ]
);

annotate service.payrolls with @(
    UI.LineItem #Payroll : [
        {
            $Type : 'UI.DataField',
            Value : salary,
            Label : 'salary',
        },
        {
            $Type : 'UI.DataField',
            Value : bonus,
            Label : 'bonus',
        },
        {
            $Type : 'UI.DataField',
            Value : deduction,
            Label : 'deduction',
        },
        {
            $Type : 'UI.DataField',
            Value : netsalary,
            Label : 'netsalary',
        },
    ]
);

annotate service.Leaves with @(
    UI.LineItem #Leave : [
        {
            $Type : 'UI.DataField',
            Value : reason,
            Label : 'reason',
        },
        {
            $Type : 'UI.DataField',
            Value : startDate,
            Label : 'startDate',
        },
        {
            $Type : 'UI.DataField',
            Value : endDate,
            Label : 'endDate',
        },
        {
            $Type : 'UI.DataField',
            Value : totalnumberleaves,
            Label : 'totalnumberleaves',
        },
        {
            $Type : 'UI.DataField',
            Value : numberOfleaves,
            Label : 'numberOfleaves',
        },
    ]
);

annotate service.Deductions with @(
    UI.LineItem #Deduction : [
        {
            $Type : 'UI.DataField',
            Value : deductionAmount,
            Label : 'deductionAmount',
        },
        {
            $Type : 'UI.DataField',
            Value : reason,
            Label : 'reason',
        },
    
    ]
);

annotate service.Bonuses with @(
    UI.LineItem #Bonus : [
        {
            $Type : 'UI.DataField',
            Value : bonusAmount,
            Label : 'bonusAmount',
        },
  
    ]
);

