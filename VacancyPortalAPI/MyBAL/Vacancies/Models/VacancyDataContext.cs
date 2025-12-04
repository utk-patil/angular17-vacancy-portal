using Microsoft.EntityFrameworkCore;

namespace MyBAL.Vacancies.Models
{
    public class VacancyDataContext : DbContext
    {
        public VacancyDataContext(DbContextOptions<VacancyDataContext> foOptions) : base(foOptions)
        {
        }

        public DbSet<Vacancy> tblVacancies { get; set; }
        public DbSet<MyApplication> tblApplications { get; set; }

        protected override void OnModelCreating(ModelBuilder foModelBuilder)
        {
            base.OnModelCreating(foModelBuilder);

            foModelBuilder.Entity<Vacancy>().HasNoKey();
            foModelBuilder.Entity<MyApplication>().HasNoKey();
        }
    }
}
