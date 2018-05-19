using System;
using System.Collections.Generic;
using System.Linq;

public partial class _Default : System.Web.UI.Page {
    protected void Page_PreInit(object sender, EventArgs e) {
        if (Request.Cookies["ThemePrefix"] != null && Request.Cookies["ThemePrefix"].Value != "Default") {
            DevExpress.Web.ASPxClasses.ASPxWebControl.GlobalTheme = Request.Cookies["ThemePrefix"].Value;
        }
    }

    protected void Page_Load(object sender, EventArgs e) {
        if (Request.Cookies["ThemePrefix"] != null && Request.Cookies["ThemePrefix"].Value != "Default") {
            NullTextComboBox.ThemePrefix = Request.Cookies["ThemePrefix"].Value;
            dxComboTheme.Value = Request.Cookies["ThemePrefix"].Value;
        }
    }
}