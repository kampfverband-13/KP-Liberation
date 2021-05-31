_unit = _this select 0;
_condition = _this select 1;

if(_condition) then {
	[_unit] call ACE_medical_treatment_fnc_fullHealLocal;
} else {
	{
		[_x] call ACE_medical_treatment_fnc_fullHealLocal;
	} foreach _unit;
};
