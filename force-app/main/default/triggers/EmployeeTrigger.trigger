trigger EmployeeTrigger On Employee__c(after update)
{
    EmployeeTriggerHandler.handleAfterUpdate(Trigger.new, Trigger.oldMap);
}