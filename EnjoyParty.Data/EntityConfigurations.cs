using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.Infrastructure.Annotations;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EnjoyParty.Data
{
    public class UserConfigurations : EntityTypeConfiguration<User>
	{
		public UserConfigurations()
		{
			this.Property(c => c.FirstName).IsRequired().HasMaxLength(30);
			this.Property(c => c.LastName).IsRequired().HasMaxLength(30);
			this.Property(c => c.Email).IsRequired().HasMaxLength(50);
			this.Property(c => c.NickName)
				.IsOptional()
				.HasMaxLength(30)
				.HasColumnAnnotation(
				IndexAnnotation.AnnotationName, new IndexAnnotation(
					new IndexAttribute("IX_NickName", 1) { IsUnique = true }));
		}
    }

	public class PartyConfigurations : EntityTypeConfiguration<Party>
	{
		public PartyConfigurations()
		{
			this.Property(c => c.Name).IsRequired().HasMaxLength(50);
			this.Property(c => c.StartDate).IsOptional();
		}
	}

	public class PartyStatusConfigurations : EntityTypeConfiguration<PartyStatus>
	{
		public PartyStatusConfigurations()
		{
			this.Property(c => c.Code)
				.IsRequired()
				.HasMaxLength(15)
				.HasColumnAnnotation(
				IndexAnnotation.AnnotationName, new IndexAnnotation(
					new IndexAttribute("IX_Code", 1) { IsUnique = true }));

			this.Property(c => c.Name).IsRequired().HasMaxLength(50);
		}
	}
}
