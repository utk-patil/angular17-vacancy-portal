using Microsoft.EntityFrameworkCore;

namespace MyBAL.Users.Models
{
    public class UserDataContext : DbContext
    {
        public UserDataContext(DbContextOptions<UserDataContext> foOptions) : base(foOptions)
        {
        }

        public DbSet<LoginUser> tblUsers { get; set; }

        protected override void OnModelCreating(ModelBuilder foModelBuilder)
        {
            base.OnModelCreating(foModelBuilder);

            foModelBuilder.Entity<LoginUser>().HasNoKey();
        }
    }
}
