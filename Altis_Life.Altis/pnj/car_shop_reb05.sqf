/* 
	CarshopLucel
*/
removeAllWeapons _this;
_this enableSimulation false; 
_this allowDamage false; 
_this addAction["<t color='#AAF200'>Concessionnaire Rebelle</t>",
life_fnc_vehicleShopMenu,["reb_v",civilian,["reb_v_5"]
,"reb","Concessionnaire Rebelle"],0,false,false,"",'license_civ_rebel'];

_this addAction["<t color='#FF9900'>Garage</t>",
{  [[getPlayerUID player,playerSide,"Car",player],"TON_fnc_getVehicles",false,false] spawn life_fnc_MP;
life_garage_type = "Car";
createDialog "Life_impound_menu";
disableSerialization;
ctrlSetText[2802,"Recherches des véhicules...."];
life_garage_sp = "reb_v_5";  },"",0,false,false,"",'license_civ_rebel'];
_this addAction["<t color='#FF9900'>Rentrer au garage</t>",life_fnc_storeVehicle,"",0,false,false,"",'!life_garage_store && license_civ_rebel'];
_this setVariable["realname", "Concessionnaire Rebelle"];