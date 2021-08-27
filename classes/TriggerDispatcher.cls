/*
 * Created By: Ranjan Singh 
 * Created Date: 27th August 2021
 * Description: Trigger Dispatcher
*/
public class TriggerDispatcher {
    public static void run(ITriggerHandler handler, string triggerName){
        
        //Check if the trigger is disabled
        if (!handler.isTriggerActive()){
            return;
        }
        
        if(Trigger_Metadata__mdt.getInstance(triggerName).Is_Active__c)
        {
            //Check trigger context from trigger operation type
            switch on Trigger.operationType {
                
                when BEFORE_INSERT {
                    //Invoke before insert trigger handler
                    handler.beforeInsert(trigger.new);
                }
                when AFTER_INSERT {
                    //Invoke after insert trigger handler
                    handler.afterInsert(trigger.new, trigger.newMap);
                }
                when BEFORE_UPDATE {
                    //Invoke before update trigger handler
                    handler.beforeUpdate(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                when AFTER_UPDATE {
                    //Invoke after update trigger handler
                    handler.afterUpdate(trigger.new, trigger.newMap, trigger.old, trigger.oldMap);
                }
                when BEFORE_DELETE {
                    //Invoke before delete trigger handler
                    handler.beforeDelete(trigger.old, trigger.oldMap);
                }
                when AFTER_DELETE {
                    //Invoke after delete trigger handler
                    handler.afterDelete(trigger.old, trigger.oldMap);
                }
                when AFTER_UNDELETE {
                    //Invoke after undelete trigger handler
                    handler.afterUnDelete(trigger.new, trigger.newMap);
                }
            }
        }
    }
}