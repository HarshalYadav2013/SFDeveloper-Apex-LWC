import { LightningElement } from 'lwc';

export default class CreateARecordWithLWC extends LightningElement {
    fields=['Subject','Type','Reason','Origin','Priority','SLAViolation__c'];
}