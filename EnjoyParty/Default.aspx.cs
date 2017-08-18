using EnjoyParty.Data;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EnjoyParty
{
	public partial class Default : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
			Database.SetInitializer(new DropCreateDatabaseIfModelChanges<PartyContext>());

			if (Page.IsPostBack)
			{
				User user = new User();

				// Получить данные из формы с помощью средств
				// привязки моделей ASP.NET
				IValueProvider provider =
					new FormValueProvider(ModelBindingExecutionContext);
				if (TryUpdateModel<User>(user, provider))
				{

					// В этой точке непосредственно начинается работа с Entity Framework

					// Создать объект контекста
					PartyContext context = new PartyContext();

					// Вставить данные в таблицу Customers с помощью LINQ
					context.Users.Add(user);

					// Сохранить изменения в БД
					context.SaveChanges();
				}
			}
		}
	}
}