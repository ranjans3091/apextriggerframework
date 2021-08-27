/*
 * Created By: Ranjan Singh 
 * Created Date: 27th August 2021
 * Description: Trigger handler class for Account Trigger
*/
public class AccountTriggerHandler implements ITriggerHandler{
	public static Boolean isTriggerActive = true; //prevent recursive execution in single transaction
    public Boolean isTriggerActive()
    {
        return isTriggerActive;
    }
    public void beforeInsert(List<sObject> newList) 
    {
         system.debug('in before insert');
    }
     
    public void afterInsert(List<sObject> newList , Map<Id, sObject> newMap) 
    {
         system.debug('in after insert');
    }
     
    public void beforeUpdate(List<sObject> newList, Map<Id, sObject> newMap, List<sObject> oldList, Map<Id, sObject> oldMap) 
    {
         system.debug('in before update');
    }
     
    public void afterUpdate(List<sObject> newList, Map<Id, sObject> newMap,  List<sObject> oldList, Map<Id, sObject> oldMap) 
    {
         system.debug('in after update');
    }
     
    public void beforeDelete(List<sObject> oldList , Map<Id, sObject> oldMap) 
    {
         
    }
     
    public void afterDelete(List<sObject> oldList , Map<Id, sObject> oldMap) 
    {
         
    }
     
    public void afterUnDelete(List<sObject> newList, Map<Id, sObject> newMap) 
    {
         
    }
}