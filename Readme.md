<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [NullTextUserControl.ascx](./CS/WebSite/NullTextUserControl.ascx) (VB: [NullTextUserControl.ascx](./VB/WebSite/NullTextUserControl.ascx))
* [NullTextUserControl.ascx.cs](./CS/WebSite/NullTextUserControl.ascx.cs) (VB: [NullTextUserControl.ascx](./VB/WebSite/NullTextUserControl.ascx))
* [ScriptFile.js](./CS/WebSite/Scripts/ScriptFile.js) (VB: [ScriptFile.js](./VB/WebSite/Scripts/ScriptFile.js))
<!-- default file list end -->
# OBSOLETE - ASPxComboBox - How to implement the NullText using a hidden input element


<p>This example illustrates how to show/hide controls to implement the NullText functionality. The main idea is to add an additional fake element to the page. When this element gets focus, it is necessary to hide this element and show the real ASPxComboBox. If the latter is empty when it loses focus, it is necessary to hide the ASPxComboBox and show the fake element again:</p>

```js
function OnNullCombo_GotFocus() {
    $("#nullCombo").hide();
    clientCombo.SetVisible(true);
    clientCombo.Focus();
}

function OnCtrl_LostFocus(s, e) {
    if (!s.GetValue()) {
        s.SetVisible(false);
        $("#nullCombo").show();
    }
}


```

<p>In addition, it is necessary to show the DropDown window when a user clicks the DropDown image: </p>

```js
function OnNullDropDown_Click() {
    $("#nullCombo").hide();
    clientCombo.SetVisible(true);
    clientCombo.Focus();
    clientCombo.ShowDropDown();
}



```

<p>Of course, the element should be correspondingly customized. In the current example, a part of the ASPxComboBox rendering is used. You can obtain it via the browser "View Source code" option. <strong>Note:</strong> This example covers the simple scenario only. It will not work if you use the validation mechanism for example.</p><p><strong>Note:</strong> Starting with v13.1, use the NullText property.</p><p><strong>See also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/E4392">OBSOLETE - ASPxEditors (ASPxComboBox, ASPxGridLookup, ASPxTextBox, etc) - How to implement the NullText using the HTML5 functionality</a></p>

<br/>


