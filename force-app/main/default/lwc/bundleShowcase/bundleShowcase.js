import { api, LightningElement } from 'lwc';

export default class BundleShowcase extends LightningElement {
    name = 'Harshal';
    myPersonallity = {
    myName: 'Ashish Yadav',
    myAge: 25,
    myProfession: 'Salesforce Developer'
    }
    @api myFavoriteCricketPlayer = 'Yuvraj Singh';
}