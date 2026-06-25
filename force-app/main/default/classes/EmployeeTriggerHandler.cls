public class EmployeeTriggerHandler {
    public static void handleAfterUpdate(
        List<Employee__c> newList,
        Map<Id,Employee__c> oldMap)
    {
        List<Id> inactiveEmpIds =
            new List<Id>();
        
        for(Employee__c emp : newList)
        {
            if(emp.Status__c == 'Inactive' &&
               oldMap.get(emp.Id).Status__c != 'Inactive')
            {
                inactiveEmpIds.add(emp.Id);
            }
        }
        
        if(!inactiveEmpIds.isEmpty())
        {
            List<Leave_Request__c> leaves =[SELECT Id, Status__c FROM Leave_Request__c WHERE Employee__c IN :inactiveEmpIds AND Status__c = 'Pending'];
            
            for(Leave_Request__c lr : leaves)
            {
                lr.Status__c = 'Rejected';
            }
            
            update leaves;
        }
    }
    
}