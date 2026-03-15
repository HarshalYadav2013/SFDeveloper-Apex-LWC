import { LightningElement, wire } from 'lwc';
import { subscribe, MessageContext } from 'lightning/messageService';
import STATUS_CHANNEL from '@salesforce/messageChannel/StatusMessageChannel__c';

export default class StatusSubscriber extends LightningElement {

    @wire(MessageContext)
    messageContext;

    receiveMessage = '';

    connectedCallback(){
        this.subscribeToStatusChanges();
    }

    subscribeToStatusChanges(){
        subscribe(this.messageContext,STATUS_CHANNEL,
        (payload) => this.handleStatus(payload)
        );
    }

    handleStatus(payload){
        if(payload.status == 'Online'){
            this.receiveMessage = 'New Video on LMS published. Keep Learning!';
        }
    }

}