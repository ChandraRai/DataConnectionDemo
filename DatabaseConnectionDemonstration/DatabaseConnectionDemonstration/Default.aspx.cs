using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//add some requirements
using DatabaseConnectionDemonstration.Models;
using System.Web.ModelBinding;

namespace DatabaseConnectionDemonstration
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetMembers();
            }            
        }

        private void GetMembers()
        {
            //connection
            using (StudentContext db = new StudentContext())
            {
                var Members = (from allMembers in db.Members select allMembers);


                // bind the result
                MemberGridView.DataSource = Members.ToList();
                MemberGridView.DataBind();

            }

        }

    }
}