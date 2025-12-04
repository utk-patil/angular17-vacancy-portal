import { Component, inject } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-apply',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './apply.component.html'
})
export class ApplyComponent {
  private route = inject(ActivatedRoute);
  private router = inject(Router);

  vacancyId: number = 0;

  ngOnInit() {
    this.vacancyId = Number(this.route.snapshot.paramMap.get('id'));
  }

  goBack() {
    this.router.navigate(['/vacancies']);
  }
}
