@isTest
public class EmployeeTriggerHandlerTest
{
    @isTest
    static void testInactiveEmployeeLeaveRejection()
    {
        Department__c dept =
            new Department__c(
                Name = 'IT'
            );
        insert dept;

        Employee__c emp =
            new Employee__c(
                Name = 'Ravi',
                Status__c = 'Active',
                Department__c = dept.Id
            );
        insert emp;

        Leave_Request__c leaveReq = new Leave_Request__c(
               
                Employee__c = emp.Id,
                Status__c = 'Pending'
            );
        insert leaveReq;

        Test.startTest();

        emp.Status__c = 'Inactive';
        update emp;

        Test.stopTest();

        Leave_Request__c updatedLeave =
        [
            SELECT Status__c
            FROM Leave_Request__c
            WHERE Id = :leaveReq.Id
        ];

        System.assertEquals(
            'Rejected',
            updatedLeave.Status__c
        );
    }
}