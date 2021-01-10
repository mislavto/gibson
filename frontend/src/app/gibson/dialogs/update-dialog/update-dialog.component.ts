import {Component, Inject, OnInit} from '@angular/core';
import {FormControl, FormGroup} from '@angular/forms';
import {GibsonServicesService} from '../../../gibson-services/gibson-services-service';
import {MatSnackBar} from '@angular/material/snack-bar';
import {MAT_DIALOG_DATA, MatDialogRef} from '@angular/material/dialog';

@Component({
  selector: 'app-update-dialog',
  templateUrl: './update-dialog.component.html',
  styleUrls: ['./update-dialog.component.css']
})
export class UpdateDialogComponent implements OnInit {
  guitar: any;
  form = new FormGroup({
    tip: new FormControl(),
    datumProizvodnje: new FormControl(),
    kolicina: new FormControl(),
    cena: new FormControl()
  });

  constructor(private gibsonServices: GibsonServicesService, private snackBar: MatSnackBar, private dialogRef: MatDialogRef<UpdateDialogComponent>,
              @Inject(MAT_DIALOG_DATA) public data) {
    this.guitar = data;
  }

  ngOnInit(): void {
    this.form.get('tip').setValue(this.guitar.tip);
    this.form.get('datumProizvodnje').setValue(this.guitar.datumProizvodnje);
    this.form.get('kolicina').setValue(this.guitar.kolicina);
    this.form.get('cena').setValue(this.guitar.cena);
  }

  openSnackBar(message: string, action: string): void {
    this.snackBar.open(message, action, {
      duration: 2000,
    });
  }

  close() {
    this.dialogRef.close(true);
  }

  updateGuitar(): void {
    const guitar = this.form.value;
    guitar.id = this.data.id;
    this.gibsonServices.update(guitar).subscribe(() => {
      this.openSnackBar('Uspešno ste izmenili gitaru', 'Zatvori');
      this.close();
    }, err => {
      this.openSnackBar(err.error.message, 'Zatvori');
    });
  }

}
