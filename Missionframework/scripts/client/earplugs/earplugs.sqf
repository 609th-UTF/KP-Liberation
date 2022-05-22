/*

ARMA 3 Keys used in this code are 
DIK_6               0x07
This can be changed however check on bohemia wiki for exact arma 3 Key IDs

*/

/*

This program was created by BrK with inspiration from GF from ARMA2
This is an open source code that can be adapted or used by anyone however please do not take credit for this code.
Instilation is as simple as drop the file containing Earplugs.sqf into your mission PBO & add the following into the init file.
[] execVM "Earplugs\Earplugs.sqf";

*/

[]	spawn {
	waitUntil {!isNull(findDisplay 46)};

	(findDisplay 46) displayAddEventHandler ["KeyDown", {
	if(_this select 1 == 0x07) // key 6		DIK_6 
	then {
	_Earplugs_ctrl = (_this select 0) displayCtrl 9001;
	if(isNull(_Earplugs_ctrl)) then {
	_Earplugs_ctrl = (_this select 0) ctrlCreate ["RscText", 9001];
	_Earplugs_ctrl ctrlShow false;	
	};
	_shown = ctrlShown _Earplugs_ctrl;
	
	0.1 fadeSound	
	(if(_shown)then{
		
	systemchat "Earplugs OUT";
	
	1
	}else{
				
	systemchat "Earplugs IN";
	
	0.1
	}); 
				
	_Earplugs_ctrl ctrlShow !_shown;
	};
}];
};
