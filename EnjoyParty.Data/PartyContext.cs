using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnjoyParty.Data
{
	public class PartyContext : DbContext
	{



		public DbSet<User> Users { get; set; }
		public DbSet<Party> Parties { get; set; }
		public DbSet<PartyStatus> PartyStatuses { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			modelBuilder.Configurations.Add(new UserConfigurations());
			modelBuilder.Configurations.Add(new PartyConfigurations());
			modelBuilder.Configurations.Add(new PartyStatusConfigurations());

			modelBuilder.Entity<User>()
				.HasMany(p => p.CreatedPartys)
				.WithRequired(p => p.Author)
				.WillCascadeOnDelete(false);

			modelBuilder.Entity<Party>()
				.HasMany(p => p.InvitedUsers)
				.WithMany(u => u.PartysInvited);

			modelBuilder.Entity<Party>()
				.HasRequired(p => p.PartyStatus)
				.WithMany(p => p.PartyStatusKey)
				.WillCascadeOnDelete(false);
		}
	}

}
