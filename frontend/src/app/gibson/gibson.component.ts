import {Component, OnInit, ViewChild} from '@angular/core';
import {MatTableDataSource} from '@angular/material/table';
import {GibsonServicesService} from '../gibson-services/gibson-services-service';
import {MatDialog, MatDialogConfig} from '@angular/material/dialog';
import {MatSnackBar} from '@angular/material/snack-bar';
import {CreateDialogComponent} from './dialogs/create-dialog/create-dialog.component';
import {UpdateDialogComponent} from './dialogs/update-dialog/update-dialog.component';
import {DeleteDialogComponent} from './dialogs/delete-dialog/delete-dialog.component';
import {MatPaginator} from '@angular/material/paginator';

@Component({
  selector: 'app-gibson',
  templateUrl: './gibson.component.html',
  styleUrls: ['./gibson.component.css']
})
export class GibsonComponent implements OnInit {
  displayedColumns: string[] = ['type', 'productionDate', 'quantity', 'price', 'actions'];
  dataSource = new MatTableDataSource<any>([]);
  objects: any[] = [];
  @ViewChild(MatPaginator) paginator: MatPaginator;

  constructor(private gibsonServices: GibsonServicesService, public dialog: MatDialog, private snackBar: MatSnackBar) { }

  ngOnInit(): void {
    this.getAllObjects();
  }

  openSnackBar(message: string, action: string): void {
    this.snackBar.open(message, action, {
      duration: 2000,
    });
  }

  openCreateDialog(): void {
    const dialogConfig = new MatDialogConfig();
    dialogConfig.width = '300px';
    this.dialog.open(CreateDialogComponent, dialogConfig).afterClosed().subscribe( () => {
      this.getAllObjects();
    });
  }


  openEditDialog(product): void {
    const dialogRef = this.dialog.open(UpdateDialogComponent, {
      width: '300px',
      backdropClass: 'background',
      data: product
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result) {
        this.getAllObjects();
      }
    });
  }

  openDeleteDialog(id: number): void {
    const dialogRef = this.dialog.open(DeleteDialogComponent, {
      width: '300px',
      backdropClass: 'background'
    });
    dialogRef.afterClosed().subscribe(result => {
      if (result !== undefined) {
        if (result === 'yes') {
          this.gibsonServices.delete(id).subscribe(() => {
            this.getAllObjects();
            this.openSnackBar('Successfully deleted product', 'Close');
          }, err => {
            this.openSnackBar(err.error.message, 'Close');
          });
        } else if (result === 'no') {
          this.dialog.closeAll();
        }
      }
    });
  }

  getAllObjects(): void {
    this.gibsonServices.getAll().subscribe(data => {
      this.objects = data;
      this.dataSource.data = this.objects;
      this.dataSource.paginator = this.paginator;
    });
  }

}
