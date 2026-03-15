import { LightningElement } from 'lwc';

export default class DataBinding extends LightningElement {
    userName = 'Timka Singh';
    currentTime = new Date().toLocaleDateString();
    subScriberScore = 9;
    totalLessonsWatched = 50;
    memberStatus;
    updateMemberStatus(event){
        this.memberStatus = event.target.value;
    }
    _minutesWatched = (this.totalLessonsWatched * 12);

    get minutesWatched(){
        return this._minutesWatched;
    }

    set minutesWatched(value){
        this._minutesWatched = value;
        this._minutesWatched = value < 1000 ? value : 5200;
    }

    handleWatchChange(event){
        this.minutesWatched = parseInt(event.target.value);
    }
}