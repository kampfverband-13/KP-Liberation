private _objects_to_build = [
    ["Barrack2", [-2.05, 6.42, 0.00], 0.00],
    ["Land_HBarrier_Big_F", [5.88, 4.58, 0.00], 270.01],
    [KP_liberation_fuel_crate, [-0.59, -7.63, 0.00], 0.00],
    ["Land_HBarrier_Big_F", [9.03, -0.20, 0.00], 0.00],
    [KP_liberation_fuel_crate, [-0.55, -9.37, 0.00], 0.00],
    ["Land_CamoNetVar_EAST", [-4.29, -10.19, -0.01], 0.00],
    [KP_liberation_fuel_crate, [2.15, -10.91, 0.00], 269.99],
    ["CargoNet_01_barrels_F", [-0.62, -11.14, 0.00], 0.00],
    ["Barrack2", [-12.38, 6.55, 0.01], 0.00],
    ["Land_HBarrier_Big_F", [-2.82, -14.20, 0.00], 0.00],
    ["Land_HBarrier_Big_F", [-3.24, 14.42, 0.00], 0.00],
    ["Land_HBarrier_Big_F", [16.79, 0.07, -0.00], 0.00],
    ["Land_Cargo_Tower_V1_F", [10.38, -5.88, 0.00], 0.00],
    ["Land_HBarrier_Big_F", [-11.47, 14.18, 0.00], 0.00],
    ["UK3CB_AAF_O_ZU23", [-18.27, -6.40, 0.00], 292.97],
    ["Land_fort_rampart", [4.43, 19.54, -0.05], 180.00],
    ["Land_BagBunker_Small_F", [11.36, 20.17, 0.00], 194.99],
    ["Land_fort_bagfence_corner", [22.52, 6.04, -0.00], 180.00],
    ["Land_fort_bagfence_long", [23.69, -0.63, 0.00], 270.00],
    ["Land_CamoNetVar_EAST", [15.91, -18.35, 0.00], 0.00],
    ["Land_fort_bagfence_long", [23.70, 2.38, 0.00], 269.99],
    [opfor_flag, [22.99, 4.88, -0.00], 0.00],
    [opfor_flag, [-13.97, -20.18, 0.00], 0.00],
    ["Land_fort_rampart", [16.69, 15.96, 0.00], 210.00],
    ["Land_CamoNetVar_EAST", [-20.20, 17.90, 0.00], 135.00],
    ["Land_BagBunker_Large_F", [-9.94, -25.32, 0.01], 0.00],
    [KP_liberation_ammo_crate, [-20.74, -17.89, 0.00], 48.47],
    [KP_liberation_ammo_crate, [-19.44, -19.45, 0.00], 48.47],
    [KP_liberation_supply_crate, [-18.98, 19.97, -0.00], 181.81],
    ["Land_fort_artillery_nest", [-22.32, 21.64, -0.08], 314.99],
    [KP_liberation_supply_crate, [-22.07, 16.96, 0.00], 99.02],
    [KP_liberation_ammo_crate, [-18.11, -21.16, 0.00], 48.45],
    ["Land_BagBunker_Large_F", [27.90, -6.50, 0.01], 269.99],
    ["Land_CamoNet_EAST", [-20.92, -19.01, -0.00], 224.99],
    ["Land_fort_rampart", [8.49, -25.15, -0.05], 311.90],
    ["Land_Tyres_F", [-17.62, 22.58, -0.00], 0.00],
    [KP_liberation_supply_crate, [-21.25, 19.22, 0.00], 132.91],
    ["Land_fort_rampart", [16.18, -21.63, -0.02], 0.00],
    ["Land_fort_rampart", [21.33, -16.73, -0.02], 270.00],
    ["Land_fort_rampart", [-26.72, 2.39, 0.03], 89.99],
    ["Land_GarbageWashingMachine_F", [22.04, -22.46, -0.00], 0.00],
    ["Land_fort_rampart", [-21.62, -20.03, 0.06], 45.00],
    ["Land_fort_bagfence_corner", [-32.36, -6.83, -0.00], 75.00],
    ["Land_fort_bagfence_corner", [-29.26, -16.22, 0.02], 344.99],
    ["Land_fort_bagfence_long", [-32.12, -10.07, 0.00], 75.00],
    ["Land_fort_bagfence_long", [-31.35, -12.98, 0.00], 75.04]
];

private _objectives_to_build = [
    [opfor_ammo_container, [-26.78, -10.84, 0.00], 254.34],
    [opfor_ammo_container, [-28.09, -6.99, 0.00], 254.35],
    [opfor_fuel_container, [-20.93, 3.44, 0.00], 181.05],
    [opfor_fuel_container, [-24.56, 3.35, 0.00], 181.05],
    [opfor_transport_truck, [9.68, 7.29, 0.00], 356.83],
    [opfor_transport_truck, [18.13, 7.83, 0.00], 356.83],
    [opfor_transport_truck, [13.90, 7.48, 0.00], 356.83],
    [opfor_mrap, [1.31, -19.82, 0.00], 180.29],
    [opfor_mrap, [-2.59, -19.92, -0.00], 180.29],
    [opfor_mrap_armed, [-8.41, 19.82, 0.00], 357.99],
    [opfor_mrap_armed, [-3.87, 20.04, 0.00], 357.99]
];

private _defenders_to_build = [
    [ opfor_engineer, [2.32, 3.25, 0], 10.12 ],
    [ opfor_engineer, [3.59, 3.89, 0], 288.05 ],
    [ opfor_engineer, [2.31, 4.93, 0], 158.22 ],
    [ opfor_rifleman, [3.96, -9.85, 0], 37.83 ],
    [ opfor_machinegunner, [-9.04, -11.04, 3.13], 48.56 ],
    [ opfor_team_leader, [-12.46, -12.21, 0.6], 288.05 ],
    [ opfor_aa, [-14.62, -9.64, 3.13], 335.85 ],
    [ opfor_sharpshooter, [17.7, 2.21, 4.35], 31.1 ],
    [ opfor_aa, [-7.46, -16.48, 3.09], 124.01 ],
    [ opfor_heavygunner, [18.14, -0.02, 4.35], 174.84 ],
    [ opfor_rifleman, [-13.89, -11.76, 0.6], 129.9 ],
    [ opfor_sentry, [-13.62, -13.03, 0.6], 53.89 ],
    [ opfor_sentry, [10.86, -15.42, 0], 348.81 ],
    [ opfor_sentry, [17.87, -6.07, 0.73], 294.41 ],
    [ opfor_rifleman, [12.59, -14.14, 0], 288.05 ],
    [ opfor_rifleman, [-10.49, -15.94, 0.6], 288.05 ],
    [ opfor_sentry, [-12.03, -15.74, 0.6], 105.44 ],
    [ opfor_sentry, [17.96, -8.4, 0.73], 294.41 ],
    [ opfor_sentry, [-2.5, 20.13, 0], 288.05 ],
    [ opfor_grenadier, [-5.17, 20.37, 0], 84.75 ],
    [ opfor_engineer, [-17.83, 11.21, 0], 288.05 ],
    [ opfor_at, [-13.21, -18.42, 3.13], 196.73 ],
    [ opfor_sentry, [-20.27, 11.9, 0], 112.14 ],
    [ opfor_sentry, [13.03, 19.64, 0], 348.81 ],
    [ opfor_rifleman, [14.76, 20.92, 0], 288.05 ]
];

private _base_corners = [
    [40, 40, 0],
    [40, -40, 0],
    [-40, -40, 0],
    [-40, 40, 0]
];

[_objects_to_build, _objectives_to_build, _defenders_to_build, _base_corners]