function OnComboTheme_SelectedIndexChanged(s, e) {
    ASPxClientUtils.SetCookie("ThemePrefix", s.GetValue());
    e.processOnServer = true;
}

function OnBtn_Click() {
    clientCombo.SetText("");

    clientCombo.SetVisible(false);
    $("#nullCombo").show();
}


function OnCtrl_Init(s, e) {
    if (s.GetValue()) {
        s.SetVisible(true);
        $("#nullCombo").hide();
    }
}

function OnCtrl_LostFocus(s, e) {
    if (!s.GetValue()) {
        s.SetVisible(false);
        $("#nullCombo").show();
    }
}

function OnNullCombo_GotFocus() {
    $("#nullCombo").hide();
    clientCombo.SetVisible(true);
    clientCombo.Focus();
}

function OnEditButton_Click() {
    $("#nullCombo").hide();
    clientCombo.SetVisible(true);
    clientCombo.Focus();
    clientCombo.ShowDropDown();
}


function OnEditButton_MouseOver(themePrefix) {
    var editButton = document.getElementById("editButton");

    themePrefix = themePrefix ? "_" + themePrefix : "";
    editButton.className += " dxeButtonEditButtonHover" + themePrefix;
}

function OnEditButton_MouseOut(themePrefix) {
    var editButton = document.getElementById("editButton");

    themePrefix = themePrefix ? "_" + themePrefix : "";
    editButton.className = "dxeButtonEditButton" + themePrefix;
}

function ChangeTheme(themePrefix) {
    if (!themePrefix)
        return;

    themePrefix = "_" + themePrefix;

    var elementsWithTheme = [
        document.getElementById("nullCombo"),
        document.getElementById("editArea"),
        document.getElementById("editButton"),
        document.getElementById("editDropDownImg")
    ];

    for (var prop in elementsWithTheme) {
        elementsWithTheme[prop].className += themePrefix;
    }
}