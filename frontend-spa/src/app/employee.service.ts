import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { Employee } from './model/employee';
import { environment } from 'src/environments/environment';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  private apiServerUrl = `${environment.apiBaseUrl}/employee`;

  constructor(private http: HttpClient) { }

  public getEmployees(kwd: string | null): Observable<Employee[]> {
    if(kwd==null || kwd.trim()=='')
      return this.http.get<Employee[]>(`${this.apiServerUrl}/all`);
    else
      return this.http.get<Employee[]>(`${this.apiServerUrl}/all?kwd=${kwd}`);
  }

  public addEmployee(employee: Employee): Observable<Employee>{
    return this.http.post<Employee>(`${this.apiServerUrl}/add`, employee);
  }

  public updateEmployee(employee: Employee): Observable<Employee>{
    return this.http.put<Employee>(`${this.apiServerUrl}/update`, employee);
  }

  public deleteEmployee(id: number): Observable<void>{
    return this.http.delete<void>(`${this.apiServerUrl}/delete/${id}`);
  }
}
