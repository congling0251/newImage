using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace image
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = name_box.Text;
            string category = category_box.Text;
            string period = period_box.Text;
            string museum = museum_box.Text;
            string author = author_box.Text;
            SqlServerDataBase sdb = new SqlServerDataBase();

            string stroresqlstring = "select  * from Image_info where tag='"+name +"' or Category='"+category +"' or Period='" +period +"' or Museum='"+ museum +"' or Author='" +author +"'";
            DataSet ds = sdb.Select(stroresqlstring, null);
            if (sdb.ErrorMessage != null)
            {

                
                int _length= ds.Tables[0].Rows.Count;
                ListView1.DataSource = ds;
                ListView1.DataBind();
            }
            else
            {
                Response.Write(sdb.ErrorMessage);
            }
        }

    }
}