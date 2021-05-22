using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=basicCRUD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            
            if(IsPostBack)
            {
                txtName.Text = txtDepartment.Text = txtAddress.Text = txtRoll.Text = "";
            }
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {


            con.Open();
            var name = txtName.Text;
            var address = txtAddress.Text;
            var roll = txtRoll.Text;
            var dept = txtDepartment.Text;
            // Response.Write("Hello " + name + "\n" + roll + "\n" + dept + "\n" + address );
            // txtName.Text = txtDepartment.Text = txtAddress.Text = txtRoll.Text = "";
            string Query = "INSERT INTO student(name, roll, address, department) VALUES('" + name + "', '" +
                roll + "','" + address + "'," + dept + ")";

            Response.Write(Query);
            SqlCommand command = new SqlCommand(Query, con);
            command.ExecuteNonQuery();
            con.Close();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            // txtName.Text = txtDepartment.Text = txtAddress.Text = txtRoll.Text = "";
        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
           /*txtName.Text = txtDepartment.Text = txtAddress.Text = txtRoll.Text = "";*/
        }
    }
}