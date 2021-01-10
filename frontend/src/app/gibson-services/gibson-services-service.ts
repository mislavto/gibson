import {Injectable} from '@angular/core';
import {HttpClient} from '@angular/common/http';
import {Observable} from 'rxjs';
import {environment} from '../../environments/environment';


@Injectable({
  providedIn: 'root'
})

export class GibsonServicesService{
  constructor(private http: HttpClient) {
  }

  getAll(): Observable<any[]> {
    return this.http.get<any[]>(`${environment.apiUrl}/gitara`, {responseType: 'json'});
  }

  delete(id: number): Observable<void> {
    return this.http.delete<void>(`${environment.apiUrl}/gitara/${id}`, {responseType: 'json'});
  }

  create(object: any): Observable<any> {
    return this.http.post<any>(`${environment.apiUrl}/gitara`, object, {responseType: 'json'});
  }

  update(id: number): Observable<any> {
    return this.http.put<any>(`${environment.apiUrl}/gitara`, id, {responseType: 'json'});
  }
}
