import { Component, EventEmitter, Input, Output } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-pagination',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './pagination.component.html'
})
export class PaginationComponent {

  @Input() pageNumber: number = 1;
  @Input() pageSize: number = 10;
  @Input() totalRecords: number = 0;

  @Output() pageChange = new EventEmitter<number>();

  get totalPages(): number {
    return Math.ceil(this.totalRecords / this.pageSize);
  }

  prev() {
    if (this.pageNumber > 1) {
      this.pageChange.emit(this.pageNumber - 1);
    }
  }

  next() {
    if (this.pageNumber < this.totalPages) {
      this.pageChange.emit(this.pageNumber + 1);
    }
  }
}
