/*
 * Created By: Ranjan Singh 
 * Created Date: 27th August 2021
 * Description: Account Trigger
*/
trigger AccountTrigger on Account (before insert, before update, after insert, after update, after delete, after undelete) {
    TriggerDispatcher.run(new AccountTriggerHandler(), ApplicationConstant.ACCOUNT_TRIGGERTYPE);
}