using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Day_8
{
    public partial class _Default : Page
    {
        int CurrentPage;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["PageCount"] = 0;

                CurrentPage = (int)ViewState["PageCount"];
               
                }

            }
        
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void Button1_Display(object sender, EventArgs e)
        {
            Sorting();

        }

        public void Sorting()
        {
            string Value = DropDownList1.SelectedValue;
            string connectionstrng = ConfigurationManager.ConnectionStrings["db"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connectionstrng);

            MySqlCommand cmd = new MySqlCommand("select * from employees ORDER BY " + Value + "", con);

            MySqlDataAdapter sda = new MySqlDataAdapter();

            cmd.Connection = con;
            sda.SelectCommand = cmd;
            DataTable dt = new DataTable();

            sda.Fill(dt);
            Repeater1.DataSource = dt;
            DataList1.DataSource = dt;
            Repeater1.DataBind();
            DataList1.DataBind();
            DataListPaging(dt);



        }






        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void DataListPaging(DataTable dt)
        {
            //creating object of PagedDataSource;  


            PagedDataSource PD = new PagedDataSource();

            PD.DataSource = dt.DefaultView;
            PD.PageSize = 5;
            PD.AllowPaging = true;
            PD.CurrentPageIndex = CurrentPage;
            
            Button2.Enabled = !PD.IsFirstPage;
            Button4.Enabled = !PD.IsLastPage;
            
            ViewState["TotalCount"] = PD.PageCount;
            DataList1.DataSource = PD;
            DataList1.DataBind();
            Repeater1.DataSource = PD;
            Repeater1.DataBind();
            ViewState["PagedDataSurce"] = dt;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            CurrentPage = 0;
            Repeater1.DataSource = (DataTable)ViewState["PagedDataSurce"];
            Repeater1.DataBind();
            DataList1.DataSource = (DataTable)ViewState["PagedDataSurce"];
            DataList1.DataBind();

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            CurrentPage = (int)ViewState["TotalCount"] - 1;
            DataListPaging((DataTable)ViewState["PagedDataSurce"]);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
    


