using Microsoft.EntityFrameworkCore;
using T3.Models.maps;

namespace T3.Models.Context
{
    public class NotasContext:DbContext
    {
        public NotasContext()
        {
            
        }

        public NotasContext(DbContextOptions<NotasContext> options):base(options)
        {
            
        }

        public DbSet<Nota> Notas { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ApplyConfiguration(new NotaMap());
        }
    }
}