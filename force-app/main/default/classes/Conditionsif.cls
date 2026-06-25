public class Conditionsif {
    public static void ifexample(){
        Account acc = new Account();
        acc.Name = 'Naresh acc2';
        acc.AccountNumber = 'Fai89800';
        acc.Phone = '57657746767';
        acc.NumberOfEmployees = 890;
        acc.rating = 'Hot';
        acc.Industry = 'Energy';
        acc.SLAExpirationDate__c = date.newinstance(2026,10,09);
        acc.Customer_Email__c = 'naresh@gmail.com';        
        acc.Credit_Card_Information__c = '780987654987';
        Insert acc;
        system.debug(acc);

        
        if(acc.rating == 'Hot'&& acc.Industry == 'Energy')
        {
            Contact con = new Contact();
            con.lastname = 'veernni';
            con.firstname = 'rann';
            con.email = 'ranveer@gmail.com';
            con.AccountId = acc.Id;
            insert con;
            system.debug(con);
        }
    }
    
    
}