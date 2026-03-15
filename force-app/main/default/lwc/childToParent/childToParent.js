import { LightningElement } from 'lwc';

export default class ChildToParent extends LightningElement {
    showFinalValue = {};
    eventReceived = false;

    handleProductSelection(event){
        this.eventReceived = true;
        this.showFinalValue = event.detail;
    }
}