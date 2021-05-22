using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class About : Page
    {

        SqlConnection con = new SqlConnection("Data Source=localhost\\SQLEXPRESS;Initial Catalog=basicCRUD;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                txtName.Text = txtId.Text = txtFloor.Text = "";
            }
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            var floor_no = txtFloor.Text;

            string Query = "INSERT INTO dept(dept, floor) VALUES(\'" + name +
                "\'," + floor_no + ")";

            con.Open();
            SqlCommand command = new SqlCommand(Query, con);
            command.ExecuteNonQuery();
            con.Close();
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            var name = txtName.Text;
            var floor = txtFloor.Text;

            var Query = "UPDATE dept SET(dept='" + name +"', floor=" + floor + ") WHERE id=" + txtId.Text;

            con.Open();
            SqlCommand command = new SqlCommand(Query, con);
            command.ExecuteNonQuery();
            con.Close();

        }

        protected void BtnDelete_Click(object sender, EventArgs e)
        {
            string Query = "DELETE dept WHERE  id=" + txtId.Text;

            con.Open();
            SqlCommand command = new SqlCommand(Query, con);
            command.ExecuteNonQuery();
            con.Close();
        }
    }
}