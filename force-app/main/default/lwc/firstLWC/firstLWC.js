import { LightningElement } from 'lwc';
import myClassmethod from'@salesforce/apex/lwcClass.lwcMethod';

export default class firstLWC extends LightningElement {
    FirstMethodjs(event){
        console.log('This Is on button click  ' +event.target.label);
        myClassmethod().then(result=>{
            console.log('Sucess result is  '+result);
        }).catch(error=>{
            console.log(error);
        });
    }
    Codemethod(evt){
        console.log('This Is on Ok button click' +evt.target);
        myClassmethod().then(result=>{
            console.log('result is OK '+result);
        }).catch(error=>{
            console.log(error);
        }); 
    }
}