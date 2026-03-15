import { LightningElement } from 'lwc';

export default class OwnerComponent extends LightningElement {
    productList = [
        {id: '101', name: 'Ipad', rating: '4/5'},
        {id: '102', name: 'Iphone', rating: '5/5'},
        {id: '103', name: 'Adriod', rating: '3/5'}
    ];

    callChildMethod(){
        this.template.querySelector('c-container-component').handleParentCall();
    }
}