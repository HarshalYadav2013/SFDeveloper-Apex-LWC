import { LightningElement, wire } from 'lwc';
import { publish, MessageContext } from 'lightning/messageService';
import STATUS_CHANNEL from '@salesforce/messageChannel/StatusMessageChannel__c';

export default class StatusPublisher extends LightningElement {
    status = 'Offline';

    options = [
        { label: 'Online', value: 'Online'},
        { label: 'Offline', value: 'Offline'}
    ];

    @wire(MessageContext)
    messageContext; 

    handleChange(event){
        this.status = event.detail.value;
    }

    publishStatus(){
        const payload = {
            status: this.status
        }
        publish(this.messageContext, STATUS_CHANNEL, payload);
    }
}