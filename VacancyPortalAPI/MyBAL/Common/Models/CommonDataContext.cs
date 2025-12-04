using Microsoft.EntityFrameworkCore;

namespace MyBAL.Common.Models
{
    public class CommonDataContext : DbContext
    {
        public CommonDataContext(DbContextOptions<CommonDataContext> foOptions) : base(foOptions)
        {
        }

        public DbSet<Country> tblCountries { get; set; }
        public DbSet<State> tblStates { get; set; }
        public DbSet<City> tblCities { get; set; }
        public DbSet<Skill> tblSkills { get; set; }

        protected override void OnModelCreating(ModelBuilder foModelBuilder)
        {
            base.OnModelCreating(foModelBuilder);

            foModelBuilder.Entity<Country>().HasNoKey();
            foModelBuilder.Entity<State>().HasNoKey();
            foModelBuilder.Entity<City>().HasNoKey();
            foModelBuilder.Entity<Skill>().HasNoKey();
        }
    }
}
