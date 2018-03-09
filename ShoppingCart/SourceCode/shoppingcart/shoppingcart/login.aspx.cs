using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoppingcart
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
                List<Authentication_Result > objList=new List<Authentication_Result>();
                using (var entities = new ShoppingCartEntities())
                {
                    objList = entities.Authentication(txtUsername.Text.Trim(), txtpassword.Text.Trim()).
                        ToList<Authentication_Result>();
                }
            if (objList.Count == 0)
            {
                Session["UserId"] = 0;
                status.Text = "Invalid username or password";
                

            }
            else 
            {
                Session["UserId"] = objList[0].UserId;
                Response.Redirect("Home.aspx");
            }
        }
    }
}