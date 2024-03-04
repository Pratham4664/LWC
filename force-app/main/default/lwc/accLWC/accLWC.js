 import { LightningElement } from 'lwc';

 import NewMethod from '@salesforce/apex/accountclass.AccountMethod';
export default class AccLWC extends LightningElement {
    inputFieldvar;
    CreateAccRecord(event){
        console.log('Variable Value Button Click  '+this.inputFieldvar);
        NewMethod({aname:this.inputFieldvar,Banking:'ICICI',Phone:'11111'}).then(result=>{
    console.log('positive result is   '+JSON.stringify(result));
      }).catch(error=>{
        console.log('error result is  '+JSON.stringify(error));
       });
    }
    fieldchangemethod(event){
        console.log('This Is input field Value  '+event.target.value);
        this.inputFieldvar=event.target.value;
        console.log('Input Field Variable Value   '+this.inputFieldvar);
    }
}