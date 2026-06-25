public class Employeeservice
{
    public static void getEmployees()
    {
        List<Employee__c> empList =
        [SELECT Id, Name, Status__c
         FROM Employee__c];

        System.debug(empList);
    }
}