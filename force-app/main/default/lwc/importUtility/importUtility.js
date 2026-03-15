import { LightningElement } from 'lwc';
import MYLOGO from "@salesforce/resourceUrl/SF_Dev";
import SHOWINPROD from "@salesforce/label/c.Show_in_Prod";

export default class ImportUtility extends LightningElement {
    src = MYLOGO;

    get showInProd(){
        return SHOWINPROD  == 'true' ? true : false;
    }
}