import { LightningElement } from 'lwc';

export default class EventsInLDS extends LightningElement {
    objectApiName= 'Case';

    handleSubmit(event){
        console.log('Form is submitted for Case creation' + JSON.stringify(event.detail));
    }

    handleSuccess(event){
        alert('Cases has been created successfully' + JSON.stringify(event.detail));
    }
}