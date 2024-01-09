using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class registration_page : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source = JAIDEEP-LAPPY\\SQLEXPRESS; initial catalog =  db19;integrated security = true");

    protected void Page_Load(object sender, EventArgs e)
    {
        show();
    }
    public void clear()
    {
        txtname.Text = "";
        txtage.Text = "";
        txtrollno.Text = "";
        txtcity.Text = "";
        txtbutton.Text = "save";
    }
    public void show()
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from student", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        con.Close();
        gvstudent.DataSource = dt;
        gvstudent.DataBind();


    }

    protected void txtbutton_Click(object sender, EventArgs e)
    {
        if (txtbutton.Text == "save")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into student (Name,Age,Rollno,City) values ('" + txtname.Text + "','" + txtage.Text + "','" + txtrollno.Text + "','" + txtcity.Text + "' )", con);
            cmd.ExecuteNonQuery();
            con.Close();
            show();
        }
        else
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("update student set Name= '"+txtname.Text+"',Age = '"+txtage.Text+"',Rollno = '"+txtrollno.Text+"',City = '"+txtcity.Text+ "'where id ='" + ViewState["abc"] + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            show();
        }
        clear();

        
    }

    protected void gvstudent_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "A") 
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from student where id = '" + e.CommandArgument + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            show();
        }
        else if (e.CommandName == "B")
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from student", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txtname.Text = dt.Rows[0]["Name"].ToString();
            txtage.Text = dt.Rows[0]["Age"].ToString();
            txtcity.Text = dt.Rows[0]["City"].ToString();
            txtrollno.Text = dt.Rows[0]["Rollno"].ToString();
            txtbutton.Text = "update";
            ViewState["abc"] = e.CommandArgument;
        }
    }
}