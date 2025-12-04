import { Component, inject, signal } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { VacancyService } from '../../services/vacancy.service';
import { AuthService } from '../../services/auth.service';
import { HeaderComponent } from '../../components/header/header.component';
import { FooterComponent } from '../../components/footer/footer.component';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-post-vacancy',
  standalone: true,
  imports: [CommonModule, FormsModule, HeaderComponent, FooterComponent],
  templateUrl: './post-vacancy.component.html'
})
export class PostVacancyComponent {

  private svc = inject(VacancyService);
  private auth = inject(AuthService);
  private router = inject(Router);
  private route = inject(ActivatedRoute);

  editId = signal<number | null>(null);

  stTitle = signal('');
  stDescription = signal('');
  inCountryID = signal<number | null>(null);
  inStateID = signal<number | null>(null);
  inCityID = signal<number | null>(null);
  flgIsActive = signal(true);

  countries = signal<any[]>([]);
  states = signal<any[]>([]);
  cities = signal<any[]>([]);
  skills = signal<any[]>([]);
  selectedSkills = signal<number[]>([]);

  isSaving = signal(false);
  formSubmitted = signal(false);
  alertMessage = signal<string | null>(null);

  touched = {
    title: signal(false),
    desc: signal(false),
    country: signal(false),
    state: signal(false),
    city: signal(false)
  };

  ngOnInit() {
    if (!this.auth.isRecruiter()) return;

    const vid = Number(this.route.snapshot.queryParamMap.get('id'));
    if (vid > 0) {
      this.editId.set(vid);
      this.loadVacancy(vid);
    }

    this.loadCountries();
    this.loadSkills();
  }

  loadVacancy(id: number) {
    this.svc.getMyVacancies(1, 1, null, '', null, id).subscribe(res => {
      const v = res.vacancies && res.vacancies.length > 0 ? res.vacancies[0] : null;
      if (!v) return;

      this.stTitle.set(v.stTitle);
      this.stDescription.set(v.stDescription);
      this.inCountryID.set(v.inCountryID);
      this.inStateID.set(v.inStateID);
      this.inCityID.set(v.inCityID);
      this.flgIsActive.set(v.flgIsActive);

      this.svc.getStates(v.inCountryID).subscribe(s => this.states.set(s.states));
      this.svc.getCities(v.inStateID).subscribe(c => this.cities.set(c.cities));
    });
  }

  showAlert(msg: string) {
    this.alertMessage.set(msg);
    setTimeout(() => this.alertMessage.set(null), 3000);
  }

  markTouched(field: keyof typeof this.touched) {
    this.touched[field].set(true);
  }

  loadCountries() {
    this.svc.getCountries().subscribe(res => this.countries.set(res.countries));
  }

  loadSkills() {
    this.svc.getSkills().subscribe(res => this.skills.set(res.skills));
  }

  onCountryChange(value: any) {
    this.markTouched("country");
    const id = Number(value);
    this.inCountryID.set(id);
    this.inStateID.set(null);
    this.inCityID.set(null);
    this.states.set([]);
    this.cities.set([]);
    this.svc.getStates(id).subscribe(res => this.states.set(res.states));
  }

  onStateChange(value: any) {
    this.markTouched("state");
    const id = Number(value);
    this.inStateID.set(id);
    this.inCityID.set(null);
    this.cities.set([]);
    this.svc.getCities(id).subscribe(res => this.cities.set(res.cities));
  }

  toggleSkill(id: number) {
    const list = this.selectedSkills();
    this.selectedSkills.set(
      list.includes(id)
        ? list.filter(x => x !== id)
        : [...list, id]
    );
  }

  saveVacancy() {
    this.formSubmitted.set(true);

    if (!this.stTitle() || !this.stDescription() ||
        !this.inCountryID() || !this.inStateID() || !this.inCityID()) {
      this.showAlert("Please fill all required fields.");
      return;
    }

    this.isSaving.set(true);

    const payload = {
      inVacancyID: this.editId() ?? 0,
      stTitle: this.stTitle(),
      stDescription: this.stDescription(),
      inCountryID: this.inCountryID(),
      inStateID: this.inStateID(),
      inCityID: this.inCityID(),
      flgIsActive: this.flgIsActive(),
      inUserID: this.auth.user()?.inUserID ?? 0
    };

    this.svc.postVacancy(payload).subscribe({
      next: res => {
        this.isSaving.set(false);
        this.showAlert(res.message);
        this.router.navigate(['/my-vacancies']);
      },
      error: () => {
        this.isSaving.set(false);
        this.showAlert("Something went wrong.");
      }
    });
  }
}
