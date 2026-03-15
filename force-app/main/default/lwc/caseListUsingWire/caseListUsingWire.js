import { LightningElement, wire } from 'lwc';
import getCasesInSequence from '@salesforce/apex/CaseController.getCasesInSequence';

export default class CaseListUsingWire extends LightningElement {
    caseList;
    errorMessage;

    @wire(getCasesInSequence)
    wiredCases({data, error}){
        if(data){
            this.caseList = data;
            this.errorMessage = '';
        }
        if(error){
            this.data = undefined;
            this.errorMessage = error.body.message;
        }
    }
}