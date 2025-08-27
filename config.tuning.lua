-----------------------------------------------------------------------------------------------------------
-------------------------------------------- VEHICLE TUNING -----------------------------------------------
-----------------------------------------------------------------------------------------------------------
--
-- Here you can create, edit and remove various tuning parts. The changes they make to the handling is all
-- in here, so feel free to modify as you wish. PLEASE bear in mind that if 2 different tuning options
-- modify the same handling values, and are set to overwrite, they could overwrite each other unpredictably
-- Either set the values to NOT overwrite, or make sure that different tuning parts modify unique parts of
-- the handling to prevent undesired results. 
--
-- Here is a guide on what different options mean to help you customise your tuning parts.
--
-----------------------------------------------------------------------------------------------------------
--  name                      The name of the modification that will be shown in the tablet.
-----------------------------------------------------------------------------------------------------------
--  info                      Optional, but you can provide additional info that will show in the UI when
--                            clicking the info icon when they are selecting an upgrade. It could be used 
--                            to warn mechanics of vehicles an upgrade shouldn't be applied on, or results
--                            from your testing of handling values.
-----------------------------------------------------------------------------------------------------------
--  itemName                  For mechanics set up to use an item for upgrades, this is the name of the
--                            required item.
-----------------------------------------------------------------------------------------------------------
--  price                     For mechanics set up to purchase upgrades, this will be the cost to the
--                            mechanic to apply the upgrade.
-----------------------------------------------------------------------------------------------------------
--  audioNameHash             Any in-game vehicle name, or addon sound pack name (ENGINE SWAPS ONLY!)
-----------------------------------------------------------------------------------------------------------
--  handling                  Add/remove handling attributes & values.
--                            More help & info on handling values: https://gtamods.com/wiki/Handling.meta
-----------------------------------------------------------------------------------------------------------
--  handlingApplyOrder        The order in which this tuning option should be applied. This is useful when
--                            tuning options have overlapping handling values! Provide a priority number,
--                            and the lowest numbers will be applied first.
-----------------------------------------------------------------------------------------------------------
--  handlingOverwritesValues  Whether the handling values provided should overwrite the vehicle's existing
--                            values, or whether they should modify the vehicle's existing values. This
--                            also works for negative values too.
--                           
--                            For example: a vehicle's current fDriveInertia value is at 1.0
--                               true  = a value of 0.5 sets fDriveInertia to 0.5
--                               false = a value of 0.5 will mean [1.0 + 0.5] and set fDriveInertia to 1.5
-----------------------------------------------------------------------------------------------------------
-- restricted (optional)      Can either be false (unrestricted) "electric" or "combustion"
-----------------------------------------------------------------------------------------------------------
-- blacklist                  List of archetype names (spawn codes) that cannot use this modification
-----------------------------------------------------------------------------------------------------------
-- minGameBuild               Functionality restricted to a certain game build, such as manual gearboxes
-----------------------------------------------------------------------------------------------------------

--fInitialDriveForce: This parameter dictates the initial force applied to the wheels when accelerating from a standstill. Increasing this value can lead to quicker launches and a more powerful initial acceleration.

--fDriveInertia: This value influences how quickly the engine's rotational speed can change. A lower fDriveInertia generally means the engine revs up and down more quickly, potentially improving responsiveness.

--fInitialDriveMaxFlatVel: This defines the maximum speed the vehicle can reach in its initial drive gear before further gear changes occur. Increasing this can allow the vehicle to hit higher speeds in lower gears.

--Clutch-Related Scales: These are crucial for how smoothly gear shifts happen.

--fClutchChangeRateScaleUpShift: This scale affects the speed at which the clutch engages during an upshift. A higher value generally means a faster, more aggressive upshift.
--fClutchChangeRateScaleDownShift: Similarly, this scale influences the clutch engagement speed during a downshift. A higher value here can result in quicker, more responsive downshifts.

Config.Tuning = {
  --
  -- ENGINE SWAPS
  -- You can customise, or add new engine swap options here.
  --
    engineSwaps = {
    [1] = {
      name = "R488 Engine 2.5L",
      icon = "r488sound.png",
      info = "A twin-turbo charged 2.5L engine. Can reach speeds of up to 100mph!",
      itemName = "r488sound",
      price = 30000,
      audioNameHash = "488sound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.05,
        fDriveInertia = 0.1,
        fInitialDriveMaxFlatVel = 30.0,
        fClutchChangeRateScaleUpShift = 0.2,
        fClutchChangeRateScaleDownShift = 0.2
      },
    },
    [2] = {
      name = "K20a Turbo 2.0L",
      icon = "k20a.png",
      info = "A twin-turbo charged 2.0L engine. Can reach speeds of up to 120mph!",
      itemName = "k20a",
      price = 35000,
      audioNameHash = "k20a",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.06,
        fDriveInertia = 0.12,
        fInitialDriveMaxFlatVel = 32.0,
        fClutchChangeRateScaleUpShift = 0.3,
        fClutchChangeRateScaleDownShift = 0.3
      },
    },
    
    [3] = {
      name = "Urus V8 4.0L",
      icon = "urusv8.png",
      info = "A powerful V8 4.0L engine. Can reach speeds of up to 140mph!",
      itemName = "urusv8",
      price = 40000,
      audioNameHash = "urusv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.07,
        fDriveInertia = 0.14,
        fInitialDriveMaxFlatVel = 34.0,
        fClutchChangeRateScaleUpShift = 0.4,
        fClutchChangeRateScaleDownShift = 0.4
      },
    },
    
    [4] = {
      name = "M297 Zonda 6.0L",
      icon = "m297zonda.png",
      info = "A high-performance V12 6.0L engine. Can reach speeds of up to 160mph!",
      itemName = "m297zonda",
      price = 45000,
      audioNameHash = "m297zonda",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.08,
        fDriveInertia = 0.16,
        fInitialDriveMaxFlatVel = 36.0,
        fClutchChangeRateScaleUpShift = 0.5,
        fClutchChangeRateScaleDownShift = 0.5
      },
    },
    
    [5] = {
      name = "V8 5.0L",
      icon = "v8engine.png",
      info = "A robust V8 5.0L engine. Can reach speeds of up to 180mph!",
      itemName = "v8engine",
      price = 50000,
      audioNameHash = "v8engine",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.09,
        fDriveInertia = 0.18,
        fInitialDriveMaxFlatVel = 38.0,
        fClutchChangeRateScaleUpShift = 0.6,
        fClutchChangeRateScaleDownShift = 0.6
      },
    },
    
    [6] = {
      name = "Inline-4 Turbo 1.8L",
      icon = "shonen.png",
      info = "A high-revving inline-4 turbocharged 1.8L engine. Can reach speeds of up to 200mph!",
      itemName = "shonen",
      price = 55000,
      audioNameHash = "shonen",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.10,
        fDriveInertia = 0.20,
        fInitialDriveMaxFlatVel = 40.0,
        fClutchChangeRateScaleUpShift = 0.7,
        fClutchChangeRateScaleDownShift = 0.7
      },
    },
    
    -- Continúa con los siguientes motores con incrementos en el precio y ajustes de manejo similares
    [7] = {
      name = "Predator V8 5.2L",
      icon = "predatorv8.png",
      info = "A high-output Predator V8 5.2L engine. Can reach speeds of up to 220mph!",
      itemName = "predatorv8",
      price = 60000,
      audioNameHash = "predatorv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.11,
        fDriveInertia = 0.22,
        fInitialDriveMaxFlatVel = 42.0,
        fClutchChangeRateScaleUpShift = 0.8,
        fClutchChangeRateScaleDownShift = 0.8
      },
    },
    
    [8] = {
      name = "Flat-6 3.8L",
      icon = "gt3flat6.png",
      info = "A high-performance Flat-6 3.8L engine. Can reach speeds of up to 240mph!",
      itemName = "gt3flat6",
      price = 65000,
      audioNameHash = "gt3flat6",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.12,
        fDriveInertia = 0.24,
        fInitialDriveMaxFlatVel = 44.0,
        fClutchChangeRateScaleUpShift = 0.9,
        fClutchChangeRateScaleDownShift = 0.9
      },
    },
    
    [9] = {
      name = "Lambo V10 5.2L",
      icon = "lambov10.png",
      info = "A high-revving Lamborghini V10 5.2L engine. Can reach speeds of up to 260mph!",
      itemName = "lambov10",
      price = 70000,
      audioNameHash = "lambov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.13,
        fDriveInertia = 0.26,
        fInitialDriveMaxFlatVel = 46.0,
        fClutchChangeRateScaleUpShift = 1.0,
        fClutchChangeRateScaleDownShift = 1.0
      },
    },
    
    [10] = {
      name = "Rotary 2.6L",
      icon = "rotary7.png",
      info = "A high-revving rotary 2.6L engine. Can reach speeds of up to 280mph!",
      itemName = "rotary7",
      price = 75000,
      audioNameHash = "rotary7",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.14,
        fDriveInertia = 0.28,
        fInitialDriveMaxFlatVel = 48.0,
        fClutchChangeRateScaleUpShift = 1.1,
        fClutchChangeRateScaleDownShift = 1.1
      },
    },
    
    [11] = {
      name = "Supra 2JZ-GTE",
      icon = "supra2jzgtett.png",
      info = "A high-output 2JZ-GTE 3.0L engine. Can reach speeds of up to 300mph!",
      itemName = "supra2jzgtett",
      price = 80000,
      audioNameHash = "toysupmk4",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.15,
        fDriveInertia = 0.30,
        fInitialDriveMaxFlatVel = 50.0,
        fClutchChangeRateScaleUpShift = 1.2,
        fClutchChangeRateScaleDownShift = 1.2
      },
    },
    
    [12] = {
      name = "AMG V12 6.0L",
      icon = "m158huayra.png",
      info = "A powerful AMG V12 6.0L engine. Can reach speeds of up to 320mph!",
      itemName = "m158huayra",
      price = 85000,
      audioNameHash = "m158huayra",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.16,
        fDriveInertia = 0.32,
        fInitialDriveMaxFlatVel = 52.0,
        fClutchChangeRateScaleUpShift = 1.3,
        fClutchChangeRateScaleDownShift = 1.3
      },
    },
    
    [13] = {
      name = "Viper V10 8.4L",
      icon = "viperv10.png",
      info = "A high-output Viper V10 8.4L engine. Can reach speeds of up to 340mph!",
      itemName = "viperv10",
      price = 90000,
      audioNameHash = "viperv10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.17,
        fDriveInertia = 0.34,
        fInitialDriveMaxFlatVel = 54.0,
        fClutchChangeRateScaleUpShift = 1.4,
        fClutchChangeRateScaleDownShift = 1.4
      },
    },
    
    [14] = {
      name = "Bugatti W16 8.0L",
      icon = "veyronsound.png",
      info = "A quad-turbocharged Bugatti W16 8.0L engine. Can reach speeds of up to 360mph!",
      itemName = "veyronsound",
      price = 95000,
      audioNameHash = "veyronsound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.18,
        fDriveInertia = 0.36,
        fInitialDriveMaxFlatVel = 56.0,
        fClutchChangeRateScaleUpShift = 1.5,
        fClutchChangeRateScaleDownShift = 1.5
      },
    },
    
    [15] = {
      name = "Lambo V10 5.2L Performance",
      icon = "perfov10.png",
      info = "A high-performance Lamborghini V10 5.2L engine. Can reach speeds of up to 380mph!",
      itemName = "perfov10",
      price = 100000,
      audioNameHash = "perfov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.19,
        fDriveInertia = 0.38,
        fInitialDriveMaxFlatVel = 58.0,
        fClutchChangeRateScaleUpShift = 1.6,
        fClutchChangeRateScaleDownShift = 1.6
      },
    },
    
    [16] = {
      name = "Lambo V10 5.2L Sesto",
      icon = "sestov10.png",
      info = "A high-output Lamborghini V10 5.2L Sesto Elemento engine. Can reach speeds of up to 400mph!",
      itemName = "sestov10",
      price = 105000,
      audioNameHash = "sestov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.20,
        fDriveInertia = 0.40,
        fInitialDriveMaxFlatVel = 60.0,
        fClutchChangeRateScaleUpShift = 1.7,
        fClutchChangeRateScaleDownShift = 1.7
      },
    },
    
    [17] = {
      name = "McLaren V8 4.0L",
      icon = "mclarenv8.png",
      info = "A high-revving McLaren V8 4.0L engine. Can reach speeds of up to 420mph!",
      itemName = "mclarenv8",
      price = 110000,
      audioNameHash = "mclarenv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.21,
        fDriveInertia = 0.42,
        fInitialDriveMaxFlatVel = 62.0,
        fClutchChangeRateScaleUpShift = 1.8,
        fClutchChangeRateScaleDownShift = 1.8
      },
    },
    
    [18] = {
      name = "Lambo V12 6.5L",
      icon = "murciev12.png",
      info = "A powerful Lamborghini V12 6.5L engine. Can reach speeds of up to 440mph!",
      itemName = "murciev12",
      price = 115000,
      audioNameHash = "murciev12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.22,
        fDriveInertia = 0.44,
        fInitialDriveMaxFlatVel = 64.0,
        fClutchChangeRateScaleUpShift = 1.9,
        fClutchChangeRateScaleDownShift = 1.9
      },
    },
    
    [19] = {
      name = "Nissan GTR R35 3.8L",
      icon = "r35sound.png",
      info = "A twin-turbocharged Nissan GTR R35 3.8L engine. Can reach speeds of up to 460mph!",
      itemName = "r35sound",
      price = 120000,
      audioNameHash = "r35sound",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.23,
        fDriveInertia = 0.46,
        fInitialDriveMaxFlatVel = 66.0,
        fClutchChangeRateScaleUpShift = 2.0,
        fClutchChangeRateScaleDownShift = 2.0
      },
    },
    
    [20] = {
      name = "Mustang V8 5.0L",
      icon = "musv8.png",
      info = "A high-performance Mustang V8 5.0L engine. Can reach speeds of up to 480mph!",
      itemName = "musv8",
      price = 125000,
      audioNameHash = "musv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.24,
        fDriveInertia = 0.48,
        fInitialDriveMaxFlatVel = 68.0,
        fClutchChangeRateScaleUpShift = 2.1,
        fClutchChangeRateScaleDownShift = 2.1
      },
    },
    
    [21] = {
      name = "Apollo V8 4.0L",
      icon = "apollosv8.png",
      info = "A high-output Apollo V8 4.0L engine. Can reach speeds of up to 500mph!",
      itemName = "apollosv8",
      price = 130000,
      audioNameHash = "apollosv8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.25,
        fDriveInertia = 0.50,
        fInitialDriveMaxFlatVel = 70.0,
        fClutchChangeRateScaleUpShift = 2.2,
        fClutchChangeRateScaleDownShift = 2.2
      },
    },
    
    [22] = {
      name = "Aventador SV V12 6.5L",
      icon = "avesvv12.png",
      info = "A powerful Aventador SV V12 6.5L engine. Can reach speeds of up to 520mph!",
      itemName = "avesvv12",
      price = 135000,
      audioNameHash = "avesvv12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.26,
        fDriveInertia = 0.52,
        fInitialDriveMaxFlatVel = 72.0,
        fClutchChangeRateScaleUpShift = 2.3,
        fClutchChangeRateScaleDownShift = 2.3
      },
    },
    
    [23] = {
      name = "Diablo V12 6.0L",
      icon = "diablov12.png",
      info = "A high-revving Diablo V12 6.0L engine. Can reach speeds of up to 540mph!",
      itemName = "diablov12",
      price = 140000,
      audioNameHash = "diablov12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.27,
        fDriveInertia = 0.54,
        fInitialDriveMaxFlatVel = 74.0,
        fClutchChangeRateScaleUpShift = 2.4,
        fClutchChangeRateScaleDownShift = 2.4
      },
    },
    
    [24] = {
      name = "Ferrari F40 V8 2.9L",
      icon = "f40v8.png",
      info = "A high-output Ferrari F40 V8 2.9L engine. Can reach speeds of up to 560mph!",
      itemName = "f40v8",
      price = 145000,
      audioNameHash = "f40v8",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.28,
        fDriveInertia = 0.56,
        fInitialDriveMaxFlatVel = 76.0,
        fClutchChangeRateScaleUpShift = 2.5,
        fClutchChangeRateScaleDownShift = 2.5
      },
    },
    
    [25] = {
      name = "Ferrari F50 V12 4.7L",
      icon = "f50v12.png",
      info = "A high-performance Ferrari F50 V12 4.7L engine. Can reach speeds of up to 580mph!",
      itemName = "f50v12",
      price = 150000,
      audioNameHash = "f50v12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.29,
        fDriveInertia = 0.58,
        fInitialDriveMaxFlatVel = 78.0,
        fClutchChangeRateScaleUpShift = 2.6,
        fClutchChangeRateScaleDownShift = 2.6
      },
    },
    
    [26] = {
      name = "Ferrari F12 V12 6.3L",
      icon = "ferrarif12.png",
      info = "A powerful Ferrari F12 V12 6.3L engine. Can reach speeds of up to 600mph!",
      itemName = "ferrarif12",
      price = 155000,
      audioNameHash = "ferrarif12",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.30,
        fDriveInertia = 0.60,
        fInitialDriveMaxFlatVel = 80.0,
        fClutchChangeRateScaleUpShift = 2.7,
        fClutchChangeRateScaleDownShift = 2.7
      },
    },
    
    [27] = {
      name = "GTA Spano V10 8.0L",
      icon = "gtaspanov10.png",
      info = "A high-revving GTA Spano V10 8.0L engine. Can reach speeds of up to 620mph!",
      itemName = "gtaspanov10",
      price = 160000,
      audioNameHash = "gtaspanov10",
      handlingOverwritesValues = false,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.31,
        fDriveInertia = 0.62,
        fInitialDriveMaxFlatVel = 82.0,
        fClutchChangeRateScaleUpShift = 2.8,
        fClutchChangeRateScaleDownShift = 2.8
      },
    },

    [28] = {
      name = "I4 Turbo 2.5L",
      icon = "k20a.png",
      info = "A twin-turbo charged 2.5L engine. Can reach speeds of up to 100mph!",
      itemName = "i4_engine",
      price = 30000,
      audioNameHash = "sultan2",
      handlingOverwritesValues = true,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.25,
        fDriveInertia = 1.0,
        fInitialDriveMaxFlatVel = 130.0,
        fClutchChangeRateScaleUpShift = 4.0,
        fClutchChangeRateScaleDownShift = 3.0
      },
      restricted = "combustion",
    },
    [29] = {
      name = "V6 3.3L",
      icon = "rotary7.png",
      audioNameHash = "comet4",
      info = "Tuned V6 engine - capable of speeds up to 120mph.",
      itemName = "v6_engine",
      price = 45000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.35,
        fDriveInertia = 1.0,
        fInitialDriveMaxFlatVel = 145.0,
        fClutchChangeRateScaleUpShift = 5.0,
        fClutchChangeRateScaleDownShift = 4.0
      },
      restricted = "combustion",
    },
    [30] = {
      name = "V8 6.5L",
      icon = "v8engine.png",
      info = "Naturally aspirated 6.5L V8. Has awesome backfires and a crackling sound as you let off the gas. Sure to impress.",
      itemName = "v8_engine",
      price = 65000,
      audioNameHash = "jugular",
      handlingOverwritesValues = true,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.45,
        fDriveInertia = 1.0,
        fInitialDriveMaxFlatVel = 160.0,
        fClutchChangeRateScaleUpShift = 7.0,
        fClutchChangeRateScaleDownShift = 6.0
      },
      restricted = "combustion",
    },
    [31] = {
      name = "V12 6.0L",
      icon = "murciev12.png",
      info = "A huge 6L V12 monster. Can reach speeds of over 130mph, be realistic and only put this in vehicles that could realistically fit a V12.",
      itemName = "v12_engine",
      price = 80000,
      audioNameHash = "schafter3",
      handlingOverwritesValues = true,
      handlingApplyOrder = 1,
      handling = {
        fInitialDriveForce = 0.5,
        fDriveInertia = 1.0,
        fInitialDriveMaxFlatVel = 180.0,
        fClutchChangeRateScaleUpShift = 6.0,
        fClutchChangeRateScaleDownShift = 5.0
      },
      restricted = "combustion",
      blacklist = {"panto"} -- Example of the blacklist feature - feel free to remove this (it couldn't fit a v12 though man, come on)
    }
  },

  --
  -- TYRES
  -- You can customise, or add new tyre options here.
  --
  tyres = {
    [1] = {
      name = "Slicks",
      icon = "wheels/offroad.svg",
      info = false,
      itemName = "slick_tyres",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 2,
      handling = {
        fTractionCurveMin = 2.8,
        fTractionCurveMax = 3.0
      },
    },
    [2] = {
      name = "Semi-slicks",
      icon = "wheels/offroad.svg",
      info = false,
      itemName = "semi_slick_tyres",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 2,
      handling = {
        fTractionCurveMin = 2.4,
        fTractionCurveMax = 2.6
      },
    },
    [3] = {
      name = "Offroad",
      icon = "wheels/offroad.svg",
      info = false,
      itemName = "offroad_tyres",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 2,
      handling = {
        fTractionLossMult = 0.0
      },
    }
  },

  --
  -- BRAKES
  -- You can customise, or add new tyre options here.
  --
  brakes = {
    [1] = {
      name = "Ceramic",
      icon = "brakes.svg",
      info = "Powerful brakes with an immense stopping power",
      itemName = "ceramic_brakes",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 3,
      handling = {
        fBrakeForce = 1.5
      },
    }
  },

  --
  -- DRIVETRAINS
  -- You can customise, or add new drivetain options here.
  --
  drivetrains = {
    [1] = {
      name = "AWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "awd_drivetrain",
      price = 50000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 0.5
      },
    },
    [2] = {
      name = "RWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "rwd_drivetrain",
      price = 50000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 0.0
      },
    },
    [3] = {
      name = "FWD",
      icon = "drivetrain.svg",
      info = false,
      itemName = "fwd_drivetrain",
      price = 50000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 4,
      handling = {
        fDriveBiasFront = 1.0
      },
    }
  },

  --
  -- TURBOCHARGING
  -- Note: This category is unique as it just enables/disables mod 18 (the standard GTA turbocharging option)
  -- You can't add additional turbocharging options, you can only adjust/remove the existing one.
  -- You can't add any handling changes. Make new items/other categories for that.
  --
  turbocharging = {
    [1] = {
      name = "Turbocharging",
      icon = "turbo.svg",
      info = false,
      itemName = "turbocharger",
      price = 35000,
      restricted = "combustion",
    }
  },

  --
  -- DRIFT TUNING
  -- You can't add additional drift tuning options, you can only adjust/remove the existing one.
  --
  driftTuning = {
    [1] = {
      name = "Drift Tuning",
      icon = "wheels/tuner.svg",
      info = false,
      itemName = "drift_tuning_kit",
      price = 25000,
      handlingOverwritesValues = true,
      handlingApplyOrder = 5,
      handling = {
        fInitialDragCoeff = 12.22,
        fInitialDriveForce = 3.0,
        fInitialDriveMaxFlatVel = 155.0,
        fSteeringLock = 58.0,
        fTractionCurveMax = 0.6,
        fTractionCurveMin = 1.3,
        fTractionCurveLateral = 21.0,
        fLowSpeedTractionLossMult = 0.5,
        fTractionBiasFront = 0.49
      },
    }
  },

  -- 
  -- GEARBOX (b3095 or newer)
  -- This is a unique category that updates flags, via the boolean 'manualGearbox' option.
  -- This allows you to toggle manual gearing, where the player must change gears themselves.
  -- Learn more: https://docs.jgscripts.com/mechanic/manual-transmissions-and-smooth-first-gear
  -- 
  gearboxes = {
    [1] = {
      name = "Manual Gearbox",
      icon = "transmission.svg",
      info = false,
      itemName = "manual_gearbox",
      price = 10000,
      manualGearbox = true,
      restricted = "combustion",
      minGameBuild = 3095
    }
  }

  --
  -- EXAMPLE CUSTOM NEW CATEGORY
  -- 
  -- ["Transmissions"] = {
  --   [1] = {
  --     name = "8 speed transmission",
  --     icon = "transmission.svg",
  --     info = "Testing making a new category",
  --     itemName = "transmission",
  --     price = 1000,
  --     handlingOverwritesValues = true,
  --     handling = {
  --       nInitialDriveGears = 8
  --     },
  --     restricted = false,
  --   }
  -- }
  --
  -- -- IMPORTANT NOTE --
  -- inside of the config.lua, inside of a mechanic location's "tuning" section, you will need to add an
  -- additional line in order for it to show & be enabled in the tablet 
  --
  -- ["Transmissions"] = { enabled = true, requiresItem = false },
}