using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace EnjoyParty.Data
{
	public class User
	{
		public int UserId { get; set; }
		public string FirstName { get; set; }
		public string LastName { get; set; }
		public string NickName { get; set; }
		public string Email { get; set; }

		public virtual List<Party> CreatedPartys { get;set; }
		public virtual List<Party> PartysInvited { get; set; }
	}

	public class Party
	{
		public int PartyId { get; set; }
		public string Name { get; set; }
		public DateTime StartDate { get; set; }
		public PartyStatus PartyStatus { get; set; }
		public User Author { get; set; }

		public virtual List<User> InvitedUsers { get; set; }
	}

	public class PartyStatus
	{
		public int PartyStatusId { get; set; }
		public string Code { get; set; }
		public string Name { get; set; }

		public virtual List<Party> PartyStatusKey { get; set; }
	}

}
