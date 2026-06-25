public class ClassObject {
    
    public static void AccountMethod(){
    
        
        Account acc = new Account();
        acc.Name = 'Faisal acc';
        acc.AccountNumber = 'Fai8980';
        acc.Phone = '57657746767';
        acc.NumberOfEmployees = 890;
        acc.SLAExpirationDate__c = date.newinstance(2026,10,09);
        acc.Customer_Email__c = 'ppyu@gmail.com';
        acc.Credit_Card_Information__c = '345678u7yhgfgv';
        insert acc;
        System.debug(acc);

    }
    
    public  void ContactMethod(){
        Contact con = new Contact();
        con.firstname = 'Pandu';
        con.lastname = 'lilly';
        insert(con);
        System.debug(con);
    }
        
    public static void OpportunityMethod(){
        Opportunity opp = new Opportunity();
        opp.Name = 'Opp1';
        opp.StageName = 'Prospecting';
        opp.CloseDate = date.newinstance(2026,08,05);
        insert(opp);
        System.debug(opp);
       
        
    }
    
    public void  CaseMethod(){
        Case c = new Case();
        c.origin = 'Phone';
        c.status = 'New';
        insert(c);
        System.debug(c);
    }   
    
       
    

}