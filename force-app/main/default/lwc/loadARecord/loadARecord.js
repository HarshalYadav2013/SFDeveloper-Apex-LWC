import { LightningElement } from 'lwc';

export default class LoadARecord extends LightningElement {
    recordId= '500gL00000DOItiQAH';
    objectApiName='Case';
    fields=['CaseNumber', 'Priority','Status','CaseOwner'];
}