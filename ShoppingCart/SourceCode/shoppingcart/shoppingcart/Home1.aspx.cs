using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace shoppingcart
{
    public partial class Home1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {
                EmptyCart.Visible = false;
                CartItems.Visible = true;
            }
          
            GetAllCartItems();
        }
       
         public void GetAllCartItems()
        {
           
            if (Convert.ToInt32(Session["UserId"]) == 0)
            {
                EmptyCart.Visible = true;
                CartItems.Visible = false;
            }
            else
            {
                List<ShoppingCart_Result> objList = new List<ShoppingCart_Result>();
                using (var entities = new ShoppingCartEntities())


                    objList = entities.ShoppingCart(Convert.ToInt32(Session["UserId"])).ToList<ShoppingCart_Result>();
                if (objList.Count != 0)    //cart table is not empty
                {
                    EmptyCart.Visible = false;
                    CartItems.Visible = true;

                    CartList.DataSource = objList; //allocate  data - objlist contain all the products
                    CartList.DataBind();          //bind
                }

                else
                {
                    EmptyCart.Visible = true;
                    CartItems.Visible = false;
                }
            }
          }

         protected void Button10_Click(object sender, EventArgs e)
         {
           using (var entities = new ShoppingCartEntities())
                {
                    entities.Checkout(Convert.ToInt32(Session["UserId"]));
                }
                ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('Sucessfully Checkout !')",true);
            }
         }
     
    }

