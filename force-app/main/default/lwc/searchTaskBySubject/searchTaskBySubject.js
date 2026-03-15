import { LightningElement, wire } from 'lwc';
import fetchTaskBySubject from '@salesforce/apex/TaskController.fetchTaskBySubject';

export default class SearchTaskBySubject extends LightningElement {
    taskList;
    subjectText = 'Follow Up';

    @wire(fetchTaskBySubject, {subjectString: '$subjectText'})
    wiredTasks({data, error}){
        if(data){
            this.taskList = data;
        }
        else if(error){
            console.log('Errr: Something went wrong ' + error.body.message);
        }
    }
}