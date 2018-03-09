using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoppingcart
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                btnLogin.Visible = true;
                btnLogout.Visible = false;

            }
            else
            {

                btnLogin.Visible = false;
                btnLogout.Visible = true;
            }
            GetAllProducts(); //call the functions of GetAllProducts in this line to get all the products
        }



        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session["UserId"] = 0;
            Response.Redirect("Home.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        public void GetAllProducts()
        {
         
            List<ProductSelectAll_Result> objList = new List<ProductSelectAll_Result>();
            using (var entities = new ShoppingCartEntities())
            {
                objList = entities.ProductSelectAll().
                    ToList<ProductSelectAll_Result>();
            }

            productList.DataSource = objList; //allocate to data - objlist contain all the products
            productList.DataBind();          //bind
        }

        protected void btnAddtoCart_Command(object sender, CommandEventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) != 0)
            {
                using (var entities = new ShoppingCartEntities())
                {
                    entities.AddToCart(Convert.ToInt32(Session["UserId"]), Convert.ToInt32(e.CommandArgument));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Sucessfully added to cart !')",true);
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

    }
}