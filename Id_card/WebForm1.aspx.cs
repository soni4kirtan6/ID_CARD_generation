using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Id_card
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_upload_Click(object sender, EventArgs e)
        {
            string PathToSave = Server.MapPath("~/Files/");
            if (!Directory.Exists(PathToSave))
            {
                Directory.CreateDirectory(PathToSave);
            }
            bg_img_file.SaveAs(PathToSave + Path.GetFileName(bg_img_file.FileName));
            btn_upload.Text = "Uploaded";
        }
    }
}