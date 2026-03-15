import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import CASE_OBJ from '@salesforce/schema/Case';
import SUBJECT from '@salesforce/schema/Case.Subject';
import PRIORITY from '@salesforce/schema/Case.Priority';
import DESCRIPTION from '@salesforce/schema/Case.Description';

export default class CustomCaseCreate extends LightningElement {
    subject = '';
    priority = '';
    description = '';

    get options(){
        return[
            {label: 'Low', value: 'low'},
            {label: 'Medium', value: 'medium'},
            {label: 'High', value: 'high'}
        ];
    }

    populateSubject(event){
        this.subject = event.detail.value;
    }

    populatePriority(event){
        this.priority = event.detail.value;
    }

    populateDescription(event){
        this.description = event.detail.value;
    }

   async createCase(){
        const fields = {};
        fields[SUBJECT.fieldApiName] = this.subject;
        fields[PRIORITY.fieldApiName] = this.priority;
        fields[DESCRIPTION.fieldApiName] = this.description;

        let recordInput = {apiName: CASE_OBJ.objectApiName, fields};
        await createRecord(recordInput)
        .then((record) => {
            alert('You cases created successfully ' + record.id);
        })
        .catch(error => {
            alert('Something went wrong ' + error.body.message);
        })
    }
}