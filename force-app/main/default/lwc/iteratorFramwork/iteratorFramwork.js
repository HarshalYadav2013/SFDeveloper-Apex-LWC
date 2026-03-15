import { LightningElement } from 'lwc';

export default class IteratorFramwork extends LightningElement {
    taskList = [
        {taskId: 1, taskName: 'Salesforce LWC', taskPriority: 'High', taskProgress: 'Ongoing'},
        {taskId: 2, taskName: 'Artificial Inteligence', taskPriority: 'Medium', taskProgress: 'Pending'},
        {taskId: 3, taskName: 'Database', taskPriority: 'Low', taskProgress: 'Pending'}
    ];
}