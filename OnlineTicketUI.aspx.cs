using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OnlineTIcketHandsOn.DatabaseConnection;

namespace OnlineTIcketHandsOn
{
    public partial class OnlineTicketUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void btnsave_Click(object sender, EventArgs e)
        { 
            OnlineTicketDbConnect obj = new OnlineTicketDbConnect();
            OnlineTicketModel Modelobj = new OnlineTicketModel();
            Modelobj.BookingId = Convert.ToInt32( txtbookingId.Text);
            Modelobj.Source = txtsource.Text;
            Modelobj.Destination = txtdestination.Text;
            Modelobj.Date = txtdate.Text;
            Modelobj.Time = txttime.Text;
            Modelobj.NumberOfPerson = txtnumberofperson.Text;
            Modelobj.SeatNumber = txtseatnumber.Text;


            string msg = obj.InsertTicket(Modelobj);
            lblresult.Text = msg;
            Response.Write($"<script>alert('{msg}')</script>");

            LoadData();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            OnlineTicketDbConnect obj = new OnlineTicketDbConnect();
            OnlineTicketModel Modelobj = new OnlineTicketModel();
            Modelobj.BookingId = Convert.ToInt32(txtbookingId.Text);
            Modelobj.Source = txtsource.Text; 
            Modelobj.Destination = txtdestination.Text;
            Modelobj.Date = txtdate.Text;
            Modelobj.Time = txttime.Text;
            Modelobj.NumberOfPerson = txtnumberofperson.Text;
            Modelobj.SeatNumber = txtseatnumber.Text;
            string msg = obj.UpdateTicket(Modelobj);
            lblresult.Text = msg;
            Response.Write($"<script>alert('{msg}')</script>");
            LoadData();
        }
        protected void LoadData()
        {
            OnlineTicketDbConnect obj = new OnlineTicketDbConnect();
            DataTable dtResult = obj.SelectTicket();
            gvDisplay.DataSource = dtResult;
            gvDisplay.DataBind();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            OnlineTicketDbConnect obj = new OnlineTicketDbConnect();
            string msg = obj.DeleteTicket(Convert.ToInt32(txtbookingId.Text));
            lblresult.Text = msg;
            Response.Write($"<script>alert('{msg}')</script>");
            LoadData();
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtbookingId.Text = "";
            txtdate.Text = "";
            txtdestination.Text = "";
            txtnumberofperson.Text = "";
            txtseatnumber.Text = "";
            txtsource.Text = "";
            txttime.Text = "";
            
        }
    }
}