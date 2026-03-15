import { LightningElement } from 'lwc';

export default class ChildToTriggerEvent extends LightningElement {
    selectProduct = {};

    handleFiringEvent(){
        this.selectProduct = {id:101, name:'Raybon Classic'};
        const event = new CustomEvent('sendproductselected', {
            detail: this.selectProduct
        });
        this.dispatchEvent(event);
    }

}