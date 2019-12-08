using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GridView
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridEntities grid = new GridEntities();

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            string Phone = SqlDataSource1.InsertParameters["Phone"].DefaultValue
                            = ((TextBox)GridView1.FooterRow.FindControl("TextBoxPhone")).Text;

            string Names = SqlDataSource1.InsertParameters["Name"].DefaultValue
                = ((TextBox)GridView1.FooterRow.FindControl("TextBoxName")).Text;

            GridEntities gridEntities = new GridEntities();
            customer customer = new customer()
            {
                Name = Names,
                Phone = Phone
            };
            gridEntities.customers.Add(customer);
            gridEntities.SaveChanges();
            Response.Redirect("WebForm1.aspx");


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}