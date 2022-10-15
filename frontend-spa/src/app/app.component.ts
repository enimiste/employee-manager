import { HttpErrorResponse } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';
import { EmployeeService } from './employee.service';
import { Employee } from './model/employee';
import { NgForm } from '@angular/forms';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent implements OnInit {
  public employees: Employee[] = [];
  public editEmployee: Employee | null = null;
  public deleteEmployee: Employee | null = null;
  public keyword: string = "";

  constructor(private service: EmployeeService){}

  ngOnInit(): void {
    this.refreshEmployeesList();
  }

  private refreshEmployeesList(): void {
    this.loadEmployees(this.keyword);
  }

  private loadEmployees(kwd: string | null): void {
    this.service.getEmployees(kwd)
    .subscribe((items: Employee[]) => this.employees=items, (err: HttpErrorResponse) => alert(err.message));
  }

  public onOpenModal(employee: Employee | null, action: string): void {
    const btn = document.createElement('button');
    btn.type = 'button';
    btn.style.display = 'none';
    btn.setAttribute('data-toggle', 'modal');
    btn.setAttribute('data-target', `#${action}EmployeeModal`);

    if(action == 'update') this.editEmployee = employee;
    else if(action == 'delete') this.deleteEmployee = employee;

    const container = document.getElementById('main-container');
    container?.appendChild(btn);
    btn.click();
  }

  public searchEmployees(kwd: string): void{
    this.keyword=kwd;
    this.refreshEmployeesList();
  }

  public onAddEmployee(form: NgForm): void {
    if(form.valid)
      this.service.addEmployee(form.value)
      .subscribe(() => {
        document.getElementById('add-employee-form')?.click();
        alert("Added successfully");
        this.refreshEmployeesList();
        form.reset();
      }, (err:HttpErrorResponse) => {
        alert(err.message);
        form.reset();
      });
  }

  public onUpdateEmployee(employee: Employee): void {
    this.service.updateEmployee(employee)
    .subscribe(() => {
      document.getElementById('update-employee-form')?.click();
      alert("Updated successfully");
      this.refreshEmployeesList();
    }, (err:HttpErrorResponse) => alert(err.message));
  }

  public onDeleteEmployee(employeeId: number | undefined): void {
    if(employeeId != undefined)
      this.service.deleteEmployee(employeeId)
      .subscribe(() => {
        alert("Deleted successfully");
        this.refreshEmployeesList();
      }, (err:HttpErrorResponse) => alert(err.message));
  }
}
