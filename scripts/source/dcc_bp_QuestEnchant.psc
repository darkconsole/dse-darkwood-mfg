Scriptname dcc_bp_QuestEnchant extends Quest
{make the buttplugs enchantable by appending the plug keyword to the
enchantment form lists.}

FormList Property dcc_bp_ListEnchantLists Auto
{list of lists i want to edit.}

Keyword Property dcc_bp_KeywordArmorButtplug Auto
{what i want to inject.}

Event OnInit()

	Int Count = dcc_bp_ListEnchantLists.GetSize()
	FormList Current = None
	Bool Added = FALSE

	While(Count > 0)
		Count -= 1
		Current = dcc_bp_ListEnchantLists.GetAt(Count) as FormList

		If(Current && !Current.HasForm(dcc_bp_KeywordArmorButtplug))
			Current.AddForm(dcc_bp_KeywordArmorButtplug)
			Added = TRUE
		EndIf
	EndWhile

	If(Added)
		Debug.Notification("Jeweled Buttplugs should be enchantable now.")
	EndIf

	Return
EndEvent
