import { LightningElement, wire } from 'lwc';
import getEmployees from '@salesforce/apex/EmployeeController.getEmployees';

export default class EmployeeList extends LightningElement {

    // Variable to store employee records
    employees;

    // Variable to store errors
    error;

    // Automatically calls the Apex method
    @wire(getEmployees)
    wiredEmployees({ data, error }) {

        if (data) {
            this.employees = data;
            this.error = undefined;
        }
        else if (error) {
            this.error = error;
            this.employees = undefined;
        }
    }
}