/**
 * Created By: Antonino Cupi
 * Date: 06/04/2018
 * Description: Verify if in the instance there is a success scan in order to return the instanceId created 
**/
public class Check_CredentialUser {
    
    public String verifyOrgId(){
    
        try{
            Scan__c scan = [Select URL_Id__c, status__c from Scan__c where status__c = 'SUCCESS' LIMIT 1 ];
            String instanceId;
            instanceId = scan.URL_Id__c;
            return instanceId;
        } catch (exception e){
            return null;
        }  
    }

}