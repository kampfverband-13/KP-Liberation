_unit = _this select 0;

{
	[_x] call ACE_medical_treatment_fnc_fullHealLocal;
} foreach _unit;