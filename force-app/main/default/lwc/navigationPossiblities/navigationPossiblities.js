import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class NavigationPossiblities extends NavigationMixin (LightningElement) {

    navigateToRecordPage(){
        this[NavigationMixin.Navigate]({
            type: 'standard__recordPage',
            attributes: {
                recordId: '001gL00000deUddQAE',
                objectAPIName: 'Account',
                actionName: 'view'
            }
        })
    }

    navigateToWebPage(){
        this[NavigationMixin.Navigate]({
            type: 'standard__webPage',
            attributes: {
                url: 'https://www.youtube.com/watch?v=6C6cN60oqaw&list=RD6C6cN60oqaw&start_radio=1',
            }
        })
    }

    navigateToCustomTab(){
        this[NavigationMixin.Navigate]({
            type: 'standard__navItemPage',
            attributes: {
                apiName: 'Locations',
            }
        })
    }

    navigateToListView(){
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectAPIName: 'Account',
                actionName: 'list'
            }
        })
    }
}