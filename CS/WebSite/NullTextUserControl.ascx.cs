using System;
using System.Collections.Generic;
using System.Linq;


public partial class NullTextUserControl : System.Web.UI.UserControl {
    private string themePrefix;

    public string ThemePrefix {
        get { return themePrefix; }
        set { themePrefix = value; }
    }
}