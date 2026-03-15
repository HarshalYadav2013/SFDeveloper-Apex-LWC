import { LightningElement } from 'lwc';
import createAccountWithName from '@salesforce/apex/ToastController.createAccountWithName';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class ToastMessage extends LightningElement {
    
    accountName;

    
    handleNameChange(event){
        this.accountName = event.detail.value;
    }

    handleAccountCreation(){

        if(this.accountName){
        createAccountWithName({accountName: this.accountName})
        .then(() => {
            console.log('Account Created...');
            this.showToast('Success', 'Your account Created Successfully', 'success', 'sticky');
        })

        .catch(error => {
            console.log('Error' + error.body.message);
            this.showToast('Error', 'There is an error, contact Admin! ' + error.body.message, 'error', 'sticky');
        })
    }
        else{
            this.showToast('Error', 'Please Enter Account Name!', 'error', 'sticky');
            }
    }

    showToast(title, message, variant, mode){
        const event = new ShowToastEvent({
            title: title,
            message: message,
            variant: variant,
            mode: mode
        });
        this.dispatchEvent(event);
    }

    /*

        showToastError(){
        const event = new ShowToastEvent({
            title: 'Error!',
            message: 'There is an error',
            variant: "error",
            mode: "sticky"
        });
        this.dispatchEvent(event);
    }
*/
}