using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

using System.Web.UI.WebControls;

public partial class login_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source = JAIDEEP-LAPPY\\SQLEXPRESS;initial catalog = db19;integrated security = true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsave_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into ddd (Username,Passward)values('"+txtusername.Text+"','"+txtpassward.Text+"')", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("http://localhost:54153/registration_page.aspx");
    }
    
     
}