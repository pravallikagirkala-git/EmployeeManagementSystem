public with sharing class EmployeeController {
      @AuraEnabled(cacheable=true)
    public static List<Employee__c> getEmployees()
    {
        List<Employee__c> employeeList =
        [
            SELECT Id,
                   Name,
                   Department__r.Name,
                   Status__c,
                   Salary__c
            FROM Employee__c
        ];

        return employeeList;
    }
}