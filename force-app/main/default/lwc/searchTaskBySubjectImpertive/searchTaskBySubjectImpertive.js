import { LightningElement } from 'lwc';
import fetchTaskBySubject from '@salesforce/apex/TaskController.fetchTaskBySubject';

export default class SearchTaskBySubjectImpertive extends LightningElement {
    subject;
    taskList;
    errorMessage;
    showTable = false;

    handleSubjectChange(event){
        this.subject = event.target.value;
    }

    searchTasks(){
        fetchTaskBySubject({subjectString: this.subject})
        .then(result =>{
            this.taskList = result;
            this.showTable = true;
        })

        .catch(error => {
            this.errorMessage = error.body.message;
        })
    }
}