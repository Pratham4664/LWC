import { LightningElement } from 'lwc';
import accrecordmethod from '@salesforce/apex/accrecorddisplay.accrecordmethod';

export default class Accrecorddisplay extends LightningElement {
    accrecords;
        accbuttonmethod(){
        accrecordmethod().then(result=>{
            console.log('sucess result is   '+JSON.stringify(result));
         this.accrecords=result;   
        }).catch(error=>{
            console.log('failed result is   '+JSON.stringify(error));
        });
    }   
}