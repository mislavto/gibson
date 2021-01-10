import { Component, OnInit } from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {GibsonServicesService} from '../../../gibson-services/gibson-services-service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {MatDialogRef} from '@angular/material/dialog';

@Component({
  selector: 'app-create-dialog',
  templateUrl: './create-dialog.component.html',
  styleUrls: ['./create-dialog.component.css']
})
export class CreateDialogComponent implements OnInit {

  form = new FormGroup({
    tip: new FormControl(),
    datumProizvodnje: new FormControl(),
    kolicina: new FormControl(),
    cena: new FormControl()
  });

  constructor(private gibsonServices: GibsonServicesService, private snackBar: MatSnackBar, private dialogRef: MatDialogRef<CreateDialogComponent>) { }

  ngOnInit(): void {
  }

  openSnackBar(message: string, action: string): void {
    this.snackBar.open(message, action, {
      duration: 2000,
    });
  }

  close() {
    this.dialogRef.close(true);
  }

  createGuitar(): void {
    this.gibsonServices.create(this.form.value).subscribe(() => {
      this.openSnackBar('Uspešno ste dodali gitaru', 'Zatvori');
      this.close();
    }, err => {
      this.openSnackBar(err.error.message, 'Zatvori');
    });
  }

}
