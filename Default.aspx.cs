using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    EncryptionDecryption em = new EncryptionDecryption();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
}