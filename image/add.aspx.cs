using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace image
{
    public partial class add : System.Web.UI.Page
    {
        private string path = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = name_box.Text;
            string category = category_box.Text;
            string period = period_box.Text;
            string museum = museum_box.Text;
            string intro = intro_box.Text;
            string author = author_box.Text;
            SqlServerDataBase sdb = new SqlServerDataBase();

            string stroresqlstring = "insert into Image_info(Url,Tag,Intro,category,Museum,Period,Author) values ('" + Image1.ImageUrl + "','" + name + "','" + intro + "','" + category + "','" + museum + "','" + period + "','" + author + "')";
            bool stroeFlag = sdb.Insert(stroresqlstring, null);
            if (stroeFlag == true)
            {
                Response.Write("<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(sdb.ErrorMessage);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string virpath = "/Images/image/";
            string filename = DateTime.Now.ToString("yyyyMMddHHmmss") + FileUpload1.FileName;
            path = Server.MapPath(virpath) + filename;//服务器保存路径
            FileUpload1.PostedFile.SaveAs(path);//保存
            Image1.ImageUrl = virpath + filename;
            Session["path"] = path;
        }
    }
}