<%@ Control Language="vb" AutoEventWireup="true" CodeFile="NullTextUserControl.ascx.vb" Inherits="NullTextUserControl" %>


<table id="nullCombo" class="dxeButtonEdit" cellspacing="1" cellpadding="0" border="0" width="170px">
	<tr>
		<td class="dxic" style="width: 100%; padding-left: 1px; padding-right: 1px; padding-top: 1px; padding-bottom: 1px;">
			<input value="Type something" class="dxeEditAreaSys dxeEditArea" id="editArea" type="text" readonly="readonly"
				style="height: 15px; cursor: default; color: grey"
				onfocus="OnNullCombo_GotFocus();" />
		</td>
		<td id="editButton" class="dxeButtonEditButton" style="-khtml-user-select: none;" 
			onclick="OnEditButton_Click();" onmouseover="OnEditButton_MouseOver('<%=ThemePrefix%>');" onmouseout="OnEditButton_MouseOut('<%=ThemePrefix%>');">
			<table class="dxbebt" cellspacing="0" cellpadding="0" border="0" style="border-collapse: collapse; border-collapse: separate;">
				<tr>
					<td class="dx">
						<img id="editDropDownImg" class="dxEditors_edtDropDown" src="Images/DXR.gif" alt="V"
							style="cursor: pointer" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>

<script type="text/javascript">
	if (window.addEventListener) {
		window.addEventListener("load", function () { ChangeTheme("<%=ThemePrefix%>"); }, false);
	}
	// For IE < 9
	else if (window.attachEvent) {
		 window.attachEvent("onload", function () { ChangeTheme("<%=ThemePrefix%>"); });
	}
</script>