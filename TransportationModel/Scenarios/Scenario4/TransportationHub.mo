within TransportationModel.Scenarios.Scenario4;

model TransportationHub
  extends TransportationModel.Icons.TransportationIcon;
  outer TransportationParameter TP;
  //  TP.flag1 ;
  TransportationModel.Interfaces.Bus VehiclesPoolBus annotation(
    Placement(visible = true, transformation(origin = {200, 0}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {110, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  //Cars
  TransportationModel.Components.VehiclePool PetrolCars(ConversionPercentage = TP.ConversionPercentageforPetrolCar, ConversionYear = TP.ConversionYearforPetrolCar, InitialLevel = TP.InitialLevelofPetrolCar, Trigger = TP.PetrolCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-135, 117}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.VehiclePool DieselCars(ConversionPercentage = TP.ConversionPercentageforDieselCar, ConversionYear = TP.ConversionYearforDieselCar, InitialLevel = TP.InitialLevelofDieselCar, Trigger = TP.DieselCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-146, 96}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  TransportationModel.Components.VehiclePool PHeVCars(ConversionPercentage = TP.ConversionPercentageforPHeVCar, ConversionYear = TP.ConversionYearforPHeVCar, InitialLevel = TP.InitialLevelofPHeVCar, Trigger = TP.PHeVCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-131, 77}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.ElectricalVehiclePool ElectricCars(InitialLevel = TP.InitialLevelofEV) annotation(
    Placement(visible = true, transformation(origin = {-140, 58}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  //Cars Rate Equations
  TransportationModel.LogicBox.RateLogic BioCarsRateLogic(CombitableFlag = TP.CarBiogasRateLogicFlag, Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/BioCarsDepletionRate.txt"), FossilBanYear = TP.BiogasCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/BioCarsGrowthRate.txt")) annotation(
    Placement(visible = true, transformation(origin = {-210, 138}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PetrolCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/PetrolCarsDepletionRate.txt"), FossilBanYear = TP.PetrolCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/PetrolCarsGrowthRate.txt"), CombitableFlag = TP.CarPetrolRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-210, 116}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic DieselCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/DieselCarsDepletionRate.txt"), FossilBanYear = TP.DieselCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/DieselCarsGrowthRate.txt"), CombitableFlag = TP.CarDieselRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-210, 96}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PHeVCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/PHeVCarsDepletionRate.txt"), FossilBanYear = TP.PHeVCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/PHeVCarsGrowthRate.txt"), CombitableFlag = TP.CarPHeVRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-210, 76}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum GrowthinElectric_Cars_AfterFossilBan(nu = 9) annotation(
    Placement(visible = true, transformation(origin = {-166, 74}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic ElectricCarRateLogic(Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/ElectricCarsGrowthRate.txt"), depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/ElectricCarsDepletionRate.txt"), CombitableFlag = TP.CarElectricRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-210, 56}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  //Light Truck
  TransportationModel.Components.TruckPool LightPetrolTrucks(ConversionPercentage = TP.ConversionPercentageforLightPetrolTruck, ConversionYear = TP.ConversionYearforLightPetrolTruck, InitialLevel = TP.InitialLevelofLightPetrolTruck, Trigger = TP.LightPetrolTruck_flag) annotation(
    Placement(visible = true, transformation(origin = {-135, 31}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.TruckPool LightDieselTrucks(ConversionPercentage = TP.ConversionPercentageforLightDieselTruck, ConversionYear = TP.ConversionYearforLightDieselTruck, InitialLevel = TP.InitialLevelofLightDieselTruck, Trigger = TP.LightDieselTruck_flag) annotation(
    Placement(visible = true, transformation(origin = {-94, 10}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  TransportationModel.Components.TruckPool LightPHeVTrucks(ConversionPercentage = TP.ConversionPercentageforLightPHeVTruck, ConversionYear = TP.ConversionYearforLightPHeVTruck, InitialLevel = TP.InitialLevelofLightPHeVTruck, Trigger = TP.LightPHeVTruck_flag) annotation(
    Placement(visible = true, transformation(origin = {-126, -8}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  TransportationModel.Components.ElectricTruckPool LightElectricTruck(InitialLevel = TP.InitialLevelofLightElectricTruck) annotation(
    Placement(visible = true, transformation(origin = {-124, -46}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  TransportationModel.Components.TruckPool LightBioGasTrucks(ConversionPercentage = TP.ConversionPercentageforLightBioTruck, ConversionYear = TP.ConversionYearforLightBioTruck, InitialLevel = TP.InitialLevelofLightBiogasTruck, Trigger = TP.LightBiogasTruck_flag) annotation(
    Placement(visible = true, transformation(origin = {-92, -26}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  //Light Truck Equations
  TransportationModel.LogicBox.RateLogic LightPetrolTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightPetrolTruckDepletionRate.txt"), FossilBanYear = TP.LightPetrolTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightPetrolTruckGrowthRate.txt"), CombitableFlag = TP.LightTruckPetrolRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, 37}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic LightDieselTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightDieselTruckDepletionRate.txt"), FossilBanYear = TP.LightDieselTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightDieselTruckGrowthRate.txt"), CombitableFlag = TP.LightTruckDieselRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, 17}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic LightPHeVTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightPHeVTruckDepletionRate.txt"), FossilBanYear = TP.LightPHeVTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightPHeVTruckGrowthRate.txt"), CombitableFlag = TP.LightTruckPHeVRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -3}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic LightBioGasRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightBiogasTruckDepletionRate.txt"), FossilBanYear = TP.LightBioGasTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightBiogasTruckGrowthRate.txt"), CombitableFlag = TP.LightTruckBiogasRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -23}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic LightElectricTruckRateLogic(Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightElectricTruckGrowthRate.txt"), depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/LightElectricTruckDepletionRate.txt"), CombitableFlag = TP.LightTruckElectricRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -43}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum GrowthinElectric_L_TruckAfterFossilBan(nu = 9) annotation(
    Placement(visible = true, transformation(origin = {-160, -40}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  //Heavy Trucks
  TransportationModel.Components.TruckPool HeavyPetrolTruck(ConversionPercentage = TP.ConversionPercentageforHeavyPetrolTruck, ConversionYear = TP.ConversionYearforHeavyPetrolTruck, InitialLevel = TP.InitialLevelofHeavyPetrolTruck, Trigger = TP.HeavyTruckPetrol_flag) annotation(
    Placement(visible = true, transformation(origin = {-89, -73}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.TruckPool HeavyDieselTruck(ConversionPercentage = TP.ConversionPercentageforHeavyDieselTruck, ConversionYear = TP.ConversionYearforHeavyDieselTruck, InitialLevel = TP.InitialLevelofHeavyDieselTruck, Trigger = TP.HeavyTruckDiesel_flag) annotation(
    Placement(visible = true, transformation(origin = {-125, -87}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.TruckPool HeavyHydrogenTruck(ConversionPercentage = TP.ConversionPercentageforHeavyHydrogenTruck, ConversionYear = TP.ConversionYearforHeavyHydrogenTruck, InitialLevel = TP.InitialLevelofHeavyHydrogenTruck, Trigger = TP.HeavyTruckHydrogen_flag) annotation(
    Placement(visible = true, transformation(origin = {-79, -103}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.TruckPool HeavyBioGasTruck(ConversionPercentage = TP.ConversionPercentageforHeavyBioTruck, ConversionYear = TP.ConversionYearforHeavyBioTruck, InitialLevel = TP.InitialLevelofHeavyBiogasTruck, Trigger = TP.HeavyTruckBiogas_flag) annotation(
    Placement(visible = true, transformation(origin = {-123, -121}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.ElectricTruckPool HeavyElectricTruck(InitialLevel = TP.InitialLevelofHeavyElectricTruck) annotation(
    Placement(visible = true, transformation(origin = {-93, -137}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  //Heavy Truck Equations
  TransportationModel.LogicBox.RateLogic HeavyPetrolTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyPetrolTruckDepletionRate.txt"), FossilBanYear = TP.HeavyPetrolTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyPetrolTruckGrowthRate.txt"), CombitableFlag = TP.HeavyTruckPetrolRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -75}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic HeavyDieselTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyDieselTruckDepletionRate.txt"), FossilBanYear = TP.HeavyDieselTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyDieselTruckGrowthRate.txt"), CombitableFlag = TP.HeavyTruckDieselRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -91}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic HeavyHydrogenTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyHydrogenTruckDepletionRate.txt"), FossilBanYear = TP.HeavyHydrogenTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyHydrogenTruckGrowthRate.txt"), CombitableFlag = TP.HeavyTruckHydrogenRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -107}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic HeavyBioGasTruckRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyBioGasTruckDepletionRate.txt"), FossilBanYear = TP.HeavyBiogasTruckBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyBioGasTruckGrowthRate.txt"), CombitableFlag = TP.HeavyTruckBiogasRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -123}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic HeavyElectricTuckRateLogic(Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyElectricTruckGrowthRate.txt"), depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HeavyElectricTruckDepletionRate.txt"), CombitableFlag = TP.HeavyTruckElectricRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-211, -139}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum GrowthinElectric_H_TruckAfterFossilBan(nu = 9) annotation(
    Placement(visible = true, transformation(origin = {-150, -134}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  //Total Vehicles
  Modelica.Blocks.Math.MultiSum TotalHeavyTrucks(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {8, 156}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalBuses(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {122, 170}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalLightTrucks(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-46, 164}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCars(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-92, 158}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //Buses
  TransportationModel.Components.BusPool DieselBus(ConversionPercentage = TP.ConversionPercentageforDieselBus, ConversionYear = TP.ConversionYearforDieselBus, InitialLevel = TP.InitialLevelofDieselBus, Trigger = TP.DieselBus_flag) annotation(
    Placement(visible = true, transformation(origin = {79, 27}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  TransportationModel.Components.BusPool GasBus(ConversionPercentage = TP.ConversionPercentageforGasBus, ConversionYear = TP.ConversionYearforGasBus, InitialLevel = TP.InitialLevelofGasBus, Trigger = TP.GasBus_flag) annotation(
    Placement(visible = true, transformation(origin = {79, -11}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  TransportationModel.Components.BusPool HydrogenBus(ConversionPercentage = TP.ConversionPercentageforHydrogenBus, ConversionYear = TP.ConversionYearforHydrogenBus, InitialLevel = TP.InitialLevelofHydrogenBus, Trigger = TP.HydrogenBus_flag) annotation(
    Placement(visible = true, transformation(origin = {79, -51}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  TransportationModel.Components.ElectricBusPool ElectricBus(InitialLevel = TP.InitialLevelofElectricBus) annotation(
    Placement(visible = true, transformation(origin = {79, -85}, extent = {{-19, -19}, {19, 19}}, rotation = 0)));
  //Buses Rate Equations
  TransportationModel.LogicBox.RateLogic DieselBusRateLogic(CombitableFlag = TP.DieselBusRateLogicFlag, Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/DieselBusDepletionRate.txt"), FossilBanYear = TP.DieselBusBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/DieselBusGrowthRate.txt"), NewDepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewDieselBusDepletionRate.txt"), NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewDieselBusGrowthRate.txt")) annotation(
    Placement(visible = true, transformation(origin = {-211, -159}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic GasBusRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/GasBusDepletionRate.txt"), FossilBanYear = TP.GasBusBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/GasBusGrowthRate.txt"), NewDepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewGasBusDepletionRate.txt"), NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewGasBusGrowthRate.txt"), CombitableFlag = TP.GasBusRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-171, -179}, extent = {{-7, -7}, {7, 7}}, rotation = 90)));
  TransportationModel.LogicBox.RateLogic HydrogenBusRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HydrogenBusDepletionRate.txt"), FossilBanYear = TP.HydrogenBusBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/HydrogenBusGrowthRate.txt"), NewDepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewHydrogenBusDepletionRate.txt"), NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewHydrogenBusGrowthRate.txt"), CombitableFlag = TP.HydrogenBusRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-135, -179}, extent = {{-7, -7}, {7, 7}}, rotation = 90)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic ElectricBusRateLogic(Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/ElectricalBusGrowthRate.txt"), NewGrowth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewElectricalBusGrowthRate.txt"), Newdepletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/NewElectricalBusDepletionRate.txt"), depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case4/ElectricalBusDepletionRate.txt"), CombitableFlag = TP.ElectricBusRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-90, -178}, extent = {{-8, -8}, {8, 8}}, rotation = 90)));
  Modelica.Blocks.Math.MultiSum multiSum1(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {-81, -59}, extent = {{3, -3}, {-3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum2(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {-67, -149}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum3(nu = 3) annotation(
    Placement(visible = true, transformation(origin = {119, -97}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme BioCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 142}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum DepletionInCars(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-166, 64}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme PetrolCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 122}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme DieselCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 98}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme PHeVCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 82}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {-88, 46}, extent = {{2, -2}, {-2, 2}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum DeleltionInLightTruck(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-160, -48}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme LightPetrolTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 36}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme LightDieselconversionProgramme2 annotation(
    Placement(visible = true, transformation(origin = {-180, 16}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme LightPHeVTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, 0}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme LightBioTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-180, -20}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme HeavyPetrolTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-174, -72}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum DepletionInHeavyTruck(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-150, -142}, extent = {{-2, -2}, {2, 2}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme HeavyDieselTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-174, -88}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme HeavyHydrogenTruckconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-174, -104}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme conversionProgramme8 annotation(
    Placement(visible = true, transformation(origin = {-174, -118}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme DieselBusconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {36, 28}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme GasBusconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {34, -6}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme conversionProgramme annotation(
    Placement(visible = true, transformation(origin = {38, -44}, extent = {{-4, -4}, {4, 4}}, rotation = 0)));
  Components.VehiclePool BioCars(ConversionPercentage = TP.ConversionPercentageforBioCar, ConversionYear = TP.ConversionYearforBioCar, InitialLevel = TP.InitialLevelofBiogasCars, Trigger = TP.BiogasCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-143, 137}, extent = {{-13, -13}, {13, 13}}, rotation = 0)));
protected
  Modelica.Blocks.Math.MultiSum GrowthinElectricBusesAfterFossilBan(nu = 7) annotation(
    Placement(visible = true, transformation(origin = {45, -71}, extent = {{-5, -5}, {5, 5}}, rotation = -90)));
  Modelica.Blocks.Sources.RealExpression StartSimulationTime(y = time) annotation(
    Placement(visible = true, transformation(origin = {-294, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum DepletionInBus(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {45, -101}, extent = {{-5, -5}, {5, 5}}, rotation = -90)));
equation
  connect(TotalCars.y, PetrolCars.TotalVehicles) annotation(
    Line(points = {{-80, 158}, {-72, 158}, {-72, 113}, {-121, 113}}, color = {0, 0, 127}));
  connect(TotalCars.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{-80, 158}, {-72, 158}, {-72, 92.5}, {-133, 92.5}}, color = {0, 0, 127}));
  connect(TotalCars.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{-80, 158}, {-72, 158}, {-72, 73}, {-117, 73}}, color = {0, 0, 127}));
  connect(TotalCars.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{-80, 158}, {-72, 158}, {-72, 54}, {-125, 54}}, color = {0, 0, 127}));
  connect(LightElectricTruckRateLogic.GrowthRate, GrowthinElectric_L_TruckAfterFossilBan.u[1]) annotation(
    Line(points = {{-203, -39}, {-182.5, -39}, {-182.5, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightPetrolTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_L_TruckAfterFossilBan.u[2]) annotation(
    Line(points = {{-203, 32}, {-196.6, 32}, {-196.6, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightDieselTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_L_TruckAfterFossilBan.u[3]) annotation(
    Line(points = {{-203, 12}, {-196.6, 12}, {-196.6, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightPHeVTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_L_TruckAfterFossilBan.u[4]) annotation(
    Line(points = {{-203, -8}, {-196.6, -8}, {-196.6, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightBioGasRateLogic.GrowthToElectricVehicle, GrowthinElectric_L_TruckAfterFossilBan.u[5]) annotation(
    Line(points = {{-203, -28}, {-196.6, -28}, {-196.6, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.VehicleNos, TotalLightTrucks.u[1]) annotation(
    Line(points = {{-121, 31}, {-56, 31}, {-56, 164}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.VehicleNos, TotalLightTrucks.u[2]) annotation(
    Line(points = {{-81, 10}, {-56, 10}, {-56, 164}}, color = {95, 0, 191}));
  connect(LightPHeVTrucks.VehicleNos, TotalLightTrucks.u[3]) annotation(
    Line(points = {{-113, -8}, {-56, -8}, {-56, 164}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.VehicleNos, TotalLightTrucks.u[4]) annotation(
    Line(points = {{-79, -26}, {-56, -26}, {-56, 164}}, color = {0, 0, 127}));
  connect(LightElectricTruck.VehicleNos, TotalLightTrucks.u[5]) annotation(
    Line(points = {{-111, -47}, {-56, -47}, {-56, 164}}, color = {95, 0, 191}));
  connect(TotalLightTrucks.y, LightPetrolTrucks.TotalVehicles) annotation(
    Line(points = {{-34, 164}, {-34, 27}, {-121, 27}}, color = {0, 0, 127}));
  connect(TotalLightTrucks.y, LightPHeVTrucks.TotalVehicles) annotation(
    Line(points = {{-34, 164}, {-34, -11.5}, {-113, -11.5}}, color = {0, 0, 127}));
  connect(TotalLightTrucks.y, LightBioGasTrucks.TotalVehicles) annotation(
    Line(points = {{-34, 164}, {-34, -29.5}, {-79, -29.5}}, color = {0, 0, 127}));
  connect(TotalLightTrucks.y, LightElectricTruck.TotalVehicles) annotation(
    Line(points = {{-34, 164}, {-34, -49.5}, {-111, -49.5}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.VehicleNos, VehiclesPoolBus.S006_LightPetrolTrucks) annotation(
    Line(points = {{-121, 31}, {-16, 31}, {-16, 130}, {200, 130}, {200, 0}}, color = {255, 0, 0}));
  connect(TotalLightTrucks.y, LightDieselTrucks.TotalVehicles) annotation(
    Line(points = {{-34, 164}, {-34, 6.5}, {-81, 6.5}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.VehicleNos, VehiclesPoolBus.S007_LightDieselTrucks) annotation(
    Line(points = {{-81, 10}, {-16, 10}, {-16, 126}, {200, 126}, {200, 0}}, color = {255, 0, 0}));
  connect(LightPHeVTrucks.VehicleNos, VehiclesPoolBus.S008_LightPHeVTrucks) annotation(
    Line(points = {{-113, -8}, {-16, -8}, {-16, 122}, {200, 122}, {200, 0}}, color = {255, 0, 0}));
  connect(LightBioGasTrucks.VehicleNos, VehiclesPoolBus.S009_LightBioGasTrucks) annotation(
    Line(points = {{-79, -26}, {-16, -26}, {-16, 118}, {200, 118}, {200, 0}}, color = {255, 0, 0}));
  connect(LightElectricTruck.VehicleNos, VehiclesPoolBus.S010_LightElectricTrucks) annotation(
    Line(points = {{-111, -47}, {-16, -47}, {-16, 114}, {200, 114}, {200, 0}}, color = {255, 0, 0}));
  connect(TotalHeavyTrucks.y, HeavyPetrolTruck.TotalVehicles) annotation(
    Line(points = {{20, 156}, {20, -77}, {-75, -77}}, color = {0, 0, 127}));
  connect(TotalHeavyTrucks.y, HeavyDieselTruck.TotalVehicles) annotation(
    Line(points = {{20, 156}, {20, -91}, {-111, -91}}, color = {0, 0, 127}));
  connect(TotalHeavyTrucks.y, HeavyHydrogenTruck.TotalVehicles) annotation(
    Line(points = {{20, 156}, {20, -107}, {-65, -107}}, color = {0, 0, 127}));
  connect(TotalHeavyTrucks.y, HeavyBioGasTruck.TotalVehicles) annotation(
    Line(points = {{20, 156}, {20, -125}, {-109, -125}}, color = {0, 0, 127}));
  connect(TotalHeavyTrucks.y, HeavyElectricTruck.TotalVehicles) annotation(
    Line(points = {{20, 156}, {20, -141}, {-79, -141}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruck.VehicleNos, VehiclesPoolBus.S011_HeavyPetrolTruck) annotation(
    Line(points = {{-75, -73}, {-12, -73}, {-12, 106}, {200, 106}, {200, 0}}, color = {0, 49, 71}));
  connect(HeavyDieselTruck.VehicleNos, VehiclesPoolBus.S012_HeavyDieselTruck) annotation(
    Line(points = {{-111, -87}, {-12, -87}, {-12, 102}, {200, 102}, {200, 0}}, color = {0, 49, 71}));
  connect(HeavyHydrogenTruck.VehicleNos, VehiclesPoolBus.S013_HeavyHydrogenTruck) annotation(
    Line(points = {{-65, -103}, {-12, -103}, {-12, 96}, {200, 96}, {200, 0}}, color = {0, 49, 71}));
  connect(HeavyBioGasTruck.VehicleNos, VehiclesPoolBus.S014_HeavyBioGasTruck) annotation(
    Line(points = {{-109, -121}, {-12, -121}, {-12, 92}, {200, 92}, {200, 0}}, color = {0, 49, 71}));
  connect(HeavyElectricTruck.VehicleNos, VehiclesPoolBus.S015_HeavyElectricTruck) annotation(
    Line(points = {{-79, -138}, {-12, -138}, {-12, 88}, {200, 88}, {200, 0}}, color = {0, 49, 71}));
  connect(DieselBus.VehicleNos, TotalBuses.u[1]) annotation(
    Line(points = {{100, 30}, {104, 30}, {104, 170}, {112, 170}}, color = {0, 0, 127}));
  connect(TotalBuses.y, DieselBus.TotalVehicles) annotation(
    Line(points = {{134, 170}, {140, 170}, {140, 26}, {100, 26}}, color = {0, 0, 127}));
  connect(GasBus.VehicleNos, TotalBuses.u[2]) annotation(
    Line(points = {{100, -8}, {104, -8}, {104, 170}, {112, 170}}, color = {95, 0, 191}));
  connect(HydrogenBus.VehicleNos, TotalBuses.u[3]) annotation(
    Line(points = {{100, -48}, {104, -48}, {104, 170}, {112, 170}}, color = {95, 0, 191}));
  connect(ElectricBus.VehicleNos, TotalBuses.u[4]) annotation(
    Line(points = {{100, -83}, {104, -83}, {104, 170}, {112, 170}}, color = {95, 0, 191}));
  connect(GrowthinElectricBusesAfterFossilBan.y, ElectricBus.InGrowthRate) annotation(
    Line(points = {{45, -77}, {52, -77}, {52, -84}, {58, -84}}, color = {0, 0, 127}));
  connect(TotalBuses.y, GasBus.TotalVehicles) annotation(
    Line(points = {{134, 170}, {140, 170}, {140, -12}, {100, -12}}, color = {0, 0, 127}));
  connect(TotalBuses.y, HydrogenBus.TotalVehicles) annotation(
    Line(points = {{134, 170}, {140, 170}, {140, -52}, {100, -52}}, color = {0, 0, 127}));
  connect(TotalBuses.y, ElectricBus.TotalVehicles) annotation(
    Line(points = {{134, 170}, {140, 170}, {140, -86}, {100, -86}}, color = {0, 0, 127}));
  connect(DieselBus.VehicleNos, VehiclesPoolBus.S016_DieselBus) annotation(
    Line(points = {{100, 30}, {112, 30}, {112, 66}, {200, 66}, {200, 0}}, color = {0, 255, 255}));
  connect(GasBus.VehicleNos, VehiclesPoolBus.S017_GasBus) annotation(
    Line(points = {{100, -8}, {112, -8}, {112, 64}, {200, 64}, {200, 0}}, color = {0, 255, 255}));
  connect(HydrogenBus.VehicleNos, VehiclesPoolBus.S018_HydrogenBus) annotation(
    Line(points = {{100, -48}, {112, -48}, {112, 62}, {200, 62}, {200, 0}}, color = {0, 255, 255}));
  connect(ElectricBus.VehicleNos, VehiclesPoolBus.S019_ElectricBus) annotation(
    Line(points = {{100, -82}, {112, -82}, {112, 60}, {200, 60}, {200, 0}}, color = {0, 255, 255}));
  connect(StartSimulationTime.y, BioCarsRateLogic.InputSimulationTime) annotation(
    Line(points = {{-283, 0}, {-260, 0}, {-260, 138}, {-220, 138}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, PetrolCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-283, 0}, {-260, 0}, {-260, 116}, {-220, 116}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, DieselCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-283, 0}, {-260, 0}, {-260, 96}, {-220, 96}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, PHeVCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, 76}, {-220, 76}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, ElectricCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, 56}, {-220, 56}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, LightPetrolTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, 38}, {-220, 38}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, LightDieselTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, 18}, {-220, 18}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, LightPHeVTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -3}, {-219, -3}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, LightBioGasRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -22}, {-220, -22}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, LightElectricTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -42}, {-220, -42}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HeavyPetrolTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -74}, {-220, -74}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HeavyDieselTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -90}, {-220, -90}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HeavyHydrogenTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -106}, {-220, -106}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HeavyBioGasTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -122}, {-220, -122}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HeavyElectricTuckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -138}, {-220, -138}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, DieselBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -159}, {-219, -159}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, GasBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -188}, {-171, -188}, {-171, -187}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, HydrogenBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -188}, {-135, -188}, {-135, -187}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, ElectricBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-282, 0}, {-260, 0}, {-260, -188}, {-90, -188}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, VehiclesPoolBus.S002_PetrolCars) annotation(
    Line(points = {{-121, 117}, {200, 117}, {200, 0}}, color = {170, 0, 0}));
  connect(DieselCars.VehicleNos, VehiclesPoolBus.S003_DieselCars) annotation(
    Line(points = {{-133, 96}, {200, 96}, {200, 0}}, color = {170, 0, 0}));
  connect(PHeVCars.VehicleNos, VehiclesPoolBus.S004_PHeVCars) annotation(
    Line(points = {{-117, 77}, {200, 77}, {200, 0}}, color = {170, 0, 0}));
  connect(LightPetrolTrucks.ToEV, multiSum1.u[1]) annotation(
    Line(points = {{-120, 29}, {-66, 29}, {-66, -59}, {-78, -59}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.ToEV, multiSum1.u[2]) annotation(
    Line(points = {{-80, 8}, {-66, 8}, {-66, -59}, {-78, -59}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.ToEV, multiSum1.u[3]) annotation(
    Line(points = {{-112, -10}, {-66, -10}, {-66, -59}, {-78, -59}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.ToEV, multiSum1.u[4]) annotation(
    Line(points = {{-78, -28}, {-66, -28}, {-66, -59}, {-78, -59}}, color = {0, 0, 127}));
  connect(multiSum1.y, LightElectricTruck.FromFossilVehicle) annotation(
    Line(points = {{-85, -59}, {-134, -59}, {-134, -51}}, color = {0, 0, 127}));
  connect(DieselBus.ToEV, multiSum3.u[1]) annotation(
    Line(points = {{98, 24}, {132, 24}, {132, -96}, {124, -96}}, color = {0, 0, 127}));
  connect(GasBus.ToEV, multiSum3.u[2]) annotation(
    Line(points = {{98, -14}, {132, -14}, {132, -96}, {124, -96}}, color = {0, 0, 127}));
  connect(HydrogenBus.ToEV, multiSum3.u[3]) annotation(
    Line(points = {{98, -54}, {132, -54}, {132, -96}, {124, -96}}, color = {0, 0, 127}));
  connect(multiSum3.y, ElectricBus.FromFossilVehicle) annotation(
    Line(points = {{114, -96}, {66, -96}, {66, -92}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruck.ToEV, multiSum2.u[1]) annotation(
    Line(points = {{-74, -75}, {-56, -75}, {-56, -149}, {-62, -149}}, color = {0, 0, 127}));
  connect(HeavyDieselTruck.ToEV, multiSum2.u[2]) annotation(
    Line(points = {{-110, -89}, {-56, -89}, {-56, -149}, {-62, -149}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruck.ToEV, multiSum2.u[3]) annotation(
    Line(points = {{-64, -105}, {-56, -105}, {-56, -149}, {-62, -149}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruck.ToEV, multiSum2.u[4]) annotation(
    Line(points = {{-108, -123}, {-56, -123}, {-56, -149}, {-62, -149}}, color = {0, 0, 127}));
  connect(multiSum2.y, HeavyElectricTruck.FromFossilVehicle) annotation(
    Line(points = {{-73, -149}, {-104, -149}, {-104, -143}}, color = {0, 0, 127}));
  connect(ElectricCars.VehicleNos, VehiclesPoolBus.S005_ElectricCars) annotation(
    Line(points = {{-125, 57}, {200, 57}, {200, 0}}, color = {170, 0, 0}));
  connect(PetrolCars.VehicleNos, TotalCars.u[1]) annotation(
    Line(points = {{-121, 117}, {-112, 117}, {-112, 158}, {-102, 158}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, TotalCars.u[2]) annotation(
    Line(points = {{-133, 96}, {-112, 96}, {-112, 158}, {-102, 158}}, color = {0, 0, 127}));
  connect(PHeVCars.VehicleNos, TotalCars.u[3]) annotation(
    Line(points = {{-117, 77}, {-112, 77}, {-112, 158}, {-102, 158}}, color = {0, 0, 127}));
  connect(ElectricCars.VehicleNos, TotalCars.u[4]) annotation(
    Line(points = {{-125, 57}, {-112, 57}, {-112, 158}, {-102, 158}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.GrowthRate, BioCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-200, 144}, {-190.5, 144}, {-190.5, 145}, {-185, 145}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.DepletionRate, BioCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-200, 138}, {-189.5, 138}, {-189.5, 139}, {-185, 139}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[1]) annotation(
    Line(points = {{-200, 132}, {-186, 132}, {-186, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(GrowthinElectric_Cars_AfterFossilBan.y, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-164, 74}, {-160, 74}, {-160, 60}, {-155, 60}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[2]) annotation(
    Line(points = {{-176, 140}, {-172, 140}, {-172, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[1]) annotation(
    Line(points = {{-176, 138}, {-172, 138}, {-172, 64}, {-168, 64}}, color = {0, 0, 127}));
  connect(DepletionInCars.y, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-164, 64}, {-162, 64}, {-162, 56}, {-155, 56}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.DepletionRate, DepletionInCars.u[2]) annotation(
    Line(points = {{-200, 52}, {-174, 52}, {-174, 64}, {-168, 64}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.GrowthRate, GrowthinElectric_Cars_AfterFossilBan.u[3]) annotation(
    Line(points = {{-200, 60}, {-186, 60}, {-186, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthRate, PetrolCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-200, 122}, {-194, 122}, {-194, 125}, {-185, 125}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.DepletionRate, PetrolCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-200, 116}, {-192, 116}, {-192, 119}, {-185, 119}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.VehicleGrowhRate, PetrolCars.InGrowthRate) annotation(
    Line(points = {{-176, 125}, {-166, 125}, {-166, 119}, {-149, 119}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.VehicleDepletionRate, PetrolCars.InDepletionRate) annotation(
    Line(points = {{-176, 124}, {-166, 124}, {-166, 115}, {-149, 115}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[4]) annotation(
    Line(points = {{-176, 120}, {-176, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[3]) annotation(
    Line(points = {{-176, 118}, {-176, 64}, {-168, 64}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[5]) annotation(
    Line(points = {{-200, 110}, {-186, 110}, {-186, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.GrowthRate, DieselCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-200, 102}, {-192, 102}, {-192, 101}, {-185, 101}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.DepletionRate, DieselCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-200, 96}, {-192, 96}, {-192, 95}, {-185, 95}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.VehicleGrowhRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-176, 101}, {-166.5, 101}, {-166.5, 98}, {-159, 98}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.VehicleDepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-176, 100}, {-170, 100}, {-170, 94}, {-159, 94}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[6]) annotation(
    Line(points = {{-176, 96}, {-172, 96}, {-172, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[4]) annotation(
    Line(points = {{-176, 94}, {-172, 94}, {-172, 64}, {-168, 64}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.GrowthRate, PHeVCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-200, 82}, {-188, 82}, {-188, 85}, {-185, 85}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.DepletionRate, PHeVCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-200, 76}, {-190, 76}, {-190, 79}, {-185, 79}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[7]) annotation(
    Line(points = {{-200, 70}, {-186, 70}, {-186, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.VehicleGrowhRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-176, 85}, {-166, 85}, {-166, 79}, {-145, 79}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.VehicleDepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-176, 84}, {-166, 84}, {-166, 75}, {-145, 75}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[8]) annotation(
    Line(points = {{-176, 80}, {-172, 80}, {-172, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[5]) annotation(
    Line(points = {{-176, 78}, {-172, 78}, {-172, 64}, {-168, 64}}, color = {0, 0, 127}));
  connect(PetrolCars.ToEV, multiSum.u[1]) annotation(
    Line(points = {{-119, 115}, {-70, 115}, {-70, 46}, {-86, 46}}, color = {0, 0, 127}));
  connect(DieselCars.ToEV, multiSum.u[2]) annotation(
    Line(points = {{-132, 94}, {-70, 94}, {-70, 46}, {-86, 46}}, color = {0, 0, 127}));
  connect(PHeVCars.ToEV, multiSum.u[3]) annotation(
    Line(points = {{-115, 75}, {-70, 75}, {-70, 46}, {-86, 46}}, color = {0, 0, 127}));
  connect(LightElectricTruckRateLogic.DepletionRate, DeleltionInLightTruck.u[1]) annotation(
    Line(points = {{-202, -48}, {-162, -48}}, color = {0, 0, 127}));
  connect(LightPetrolTrucks.VehicleNos, LightPetrolTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-120, 32}, {-116, 32}, {-116, 40}, {-168, 40}, {-168, 36}, {-176, 36}}, color = {95, 0, 191}));
  connect(LightPetrolTruckconversionProgramme.VehicleGrowhRate, LightPetrolTrucks.InGrowthRate) annotation(
    Line(points = {{-176, 40}, {-162, 40}, {-162, 32}, {-150, 32}}, color = {0, 0, 127}));
  connect(LightPetrolTruckconversionProgramme.VehicleDepletionRate, LightPetrolTrucks.InDepletionRate) annotation(
    Line(points = {{-176, 38}, {-162, 38}, {-162, 30}, {-150, 30}}, color = {0, 0, 127}));
  connect(GrowthinElectric_L_TruckAfterFossilBan.y, LightElectricTruck.InGrowthRate) annotation(
    Line(points = {{-158, -40}, {-150, -40}, {-150, -44}, {-138, -44}}, color = {0, 0, 127}));
  connect(DeleltionInLightTruck.y, LightElectricTruck.InDepletionRate) annotation(
    Line(points = {{-158, -48}, {-138, -48}}, color = {0, 0, 127}));
  connect(LightPetrolTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_L_TruckAfterFossilBan.u[6]) annotation(
    Line(points = {{-176, 34}, {-172, 34}, {-172, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightPetrolTruckconversionProgramme.ToElectricVehicleDepletion, DeleltionInLightTruck.u[2]) annotation(
    Line(points = {{-176, 32}, {-172, 32}, {-172, -48}, {-162, -48}}, color = {0, 0, 127}));
  connect(LightPetrolTruckRateLogic.GrowthRate, LightPetrolTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 42}, {-196, 42}, {-196, 40}, {-184, 40}}, color = {0, 0, 127}));
  connect(LightPetrolTruckRateLogic.DepletionRate, LightPetrolTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, 36}, {-192, 36}, {-192, 32}, {-184, 32}}, color = {0, 0, 127}));
  connect(LightDieselTrucks.VehicleNos, LightDieselconversionProgramme2.VehicleInput) annotation(
    Line(points = {{-80, 10}, {-76, 10}, {-76, 16}, {-176, 16}}, color = {0, 0, 127}));
  connect(LightDieselconversionProgramme2.VehicleGrowhRate, LightDieselTrucks.InGrowthRate) annotation(
    Line(points = {{-176, 20}, {-160, 20}, {-160, 12}, {-108, 12}}, color = {0, 0, 127}));
  connect(LightDieselconversionProgramme2.VehicleDepletionRate, LightDieselTrucks.InDepletionRate) annotation(
    Line(points = {{-176, 18}, {-160, 18}, {-160, 8}, {-108, 8}}, color = {0, 0, 127}));
  connect(LightDieselconversionProgramme2.ToElectricVehicleGrowth, GrowthinElectric_L_TruckAfterFossilBan.u[7]) annotation(
    Line(points = {{-176, 14}, {-172, 14}, {-172, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightDieselconversionProgramme2.ToElectricVehicleDepletion, DeleltionInLightTruck.u[3]) annotation(
    Line(points = {{-176, 12}, {-172, 12}, {-172, -48}, {-162, -48}}, color = {0, 0, 127}));
  connect(LightDieselTruckRateLogic.GrowthRate, LightDieselconversionProgramme2.GrowthRate) annotation(
    Line(points = {{-202, 22}, {-192, 22}, {-192, 20}, {-184, 20}}, color = {0, 0, 127}));
  connect(LightDieselTruckRateLogic.DepletionRate, LightDieselconversionProgramme2.DepletionRate) annotation(
    Line(points = {{-202, 16}, {-192, 16}, {-192, 12}, {-184, 12}}, color = {0, 0, 127}));
  connect(LightPHeVTrucks.VehicleNos, LightPHeVTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-112, -8}, {-110, -8}, {-110, 0}, {-176, 0}}, color = {95, 0, 191}));
  connect(LightPHeVTruckconversionProgramme.VehicleGrowhRate, LightPHeVTrucks.InGrowthRate) annotation(
    Line(points = {{-176, 4}, {-162, 4}, {-162, -6}, {-140, -6}}, color = {0, 0, 127}));
  connect(LightPHeVTruckconversionProgramme.VehicleDepletionRate, LightPHeVTrucks.InDepletionRate) annotation(
    Line(points = {{-176, 2}, {-162, 2}, {-162, -10}, {-140, -10}}, color = {0, 0, 127}));
  connect(LightPHeVTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_L_TruckAfterFossilBan.u[8]) annotation(
    Line(points = {{-176, -2}, {-172, -2}, {-172, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightPHeVTruckconversionProgramme.ToElectricVehicleDepletion, DeleltionInLightTruck.u[4]) annotation(
    Line(points = {{-176, -4}, {-172, -4}, {-172, -48}, {-162, -48}}, color = {0, 0, 127}));
  connect(LightPHeVTruckRateLogic.GrowthRate, LightPHeVTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 2}, {-193, 2}, {-193, 4}, {-184, 4}}, color = {0, 0, 127}));
  connect(LightPHeVTruckRateLogic.DepletionRate, LightPHeVTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -4}, {-184, -4}}, color = {0, 0, 127}));
  connect(LightBioGasTrucks.VehicleNos, LightBioTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-78, -26}, {-72, -26}, {-72, -20}, {-176, -20}}, color = {0, 0, 127}));
  connect(LightBioTruckconversionProgramme.VehicleGrowhRate, LightBioGasTrucks.InGrowthRate) annotation(
    Line(points = {{-176, -16}, {-162, -16}, {-162, -24}, {-106, -24}}, color = {0, 0, 127}));
  connect(LightBioTruckconversionProgramme.VehicleDepletionRate, LightBioGasTrucks.InDepletionRate) annotation(
    Line(points = {{-176, -18}, {-162, -18}, {-162, -28}, {-106, -28}}, color = {0, 0, 127}));
  connect(LightBioGasRateLogic.GrowthRate, LightBioTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, -18}, {-186, -18}, {-186, -16}, {-184, -16}}, color = {0, 0, 127}));
  connect(LightBioGasRateLogic.DepletionRate, LightBioTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -24}, {-184, -24}}, color = {0, 0, 127}));
  connect(LightBioTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_L_TruckAfterFossilBan.u[9]) annotation(
    Line(points = {{-176, -22}, {-172, -22}, {-172, -40}, {-162, -40}}, color = {0, 0, 127}));
  connect(LightBioTruckconversionProgramme.ToElectricVehicleDepletion, DeleltionInLightTruck.u[5]) annotation(
    Line(points = {{-176, -24}, {-172, -24}, {-172, -48}, {-162, -48}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, PetrolCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-121, 117}, {-116, 117}, {-116, 122}, {-175, 122}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, DieselCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-133, 96}, {-126, 96}, {-126, 104}, {-168, 104}, {-168, 98}, {-176, 98}}, color = {95, 0, 191}));
  connect(PHeVCars.VehicleNos, PHeVCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-117, 77}, {-112, 77}, {-112, 82}, {-175, 82}}, color = {95, 0, 191}));
  connect(ElectricCars.FromFossilVehicles, multiSum.y) annotation(
    Line(points = {{-151, 52}, {-151, 46}, {-90, 46}}, color = {0, 0, 127}));
  connect(GrowthinElectric_H_TruckAfterFossilBan.y, HeavyElectricTruck.InGrowthRate) annotation(
    Line(points = {{-148, -134}, {-135, -134}, {-135, -136}, {-108, -136}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_H_TruckAfterFossilBan.u[1]) annotation(
    Line(points = {{-203, -80}, {-194, -80}, {-194, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_H_TruckAfterFossilBan.u[2]) annotation(
    Line(points = {{-203, -96}, {-194, -96}, {-194, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_H_TruckAfterFossilBan.u[3]) annotation(
    Line(points = {{-203, -112}, {-194, -112}, {-194, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruckRateLogic.GrowthToElectricVehicle, GrowthinElectric_H_TruckAfterFossilBan.u[4]) annotation(
    Line(points = {{-203, -128}, {-194, -128}, {-194, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyElectricTuckRateLogic.GrowthRate, GrowthinElectric_H_TruckAfterFossilBan.u[5]) annotation(
    Line(points = {{-203, -135}, {-177.5, -135}, {-177.5, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckRateLogic.GrowthRate, HeavyPetrolTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, -70}, {-191, -70}, {-191, -68}, {-178, -68}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckRateLogic.DepletionRate, HeavyPetrolTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -76}, {-178, -76}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruck.VehicleNos, HeavyPetrolTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-74, -72}, {-170, -72}}, color = {95, 0, 191}));
  connect(HeavyPetrolTruckconversionProgramme.VehicleGrowhRate, HeavyPetrolTruck.InGrowthRate) annotation(
    Line(points = {{-170, -68}, {-108, -68}, {-108, -72}, {-104, -72}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckconversionProgramme.VehicleDepletionRate, HeavyPetrolTruck.InDepletionRate) annotation(
    Line(points = {{-170, -70}, {-108, -70}, {-108, -74}, {-104, -74}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_H_TruckAfterFossilBan.u[6]) annotation(
    Line(points = {{-170, -74}, {-160, -74}, {-160, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyElectricTuckRateLogic.DepletionRate, DepletionInHeavyTruck.u[1]) annotation(
    Line(points = {{-202, -144}, {-160, -144}, {-160, -142}, {-152, -142}}, color = {0, 0, 127}));
  connect(DepletionInHeavyTruck.y, HeavyElectricTruck.InDepletionRate) annotation(
    Line(points = {{-148, -142}, {-136, -142}, {-136, -138}, {-108, -138}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruckconversionProgramme.ToElectricVehicleDepletion, DepletionInHeavyTruck.u[2]) annotation(
    Line(points = {{-170, -76}, {-160, -76}, {-160, -142}, {-152, -142}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckRateLogic.GrowthRate, HeavyDieselTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, -86}, {-179, -86}, {-179, -85}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckRateLogic.DepletionRate, HeavyDieselTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -92}, {-191, -92}, {-191, -91}, {-179, -91}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckconversionProgramme.VehicleGrowhRate, HeavyDieselTruck.InGrowthRate) annotation(
    Line(points = {{-170, -85}, {-156, -85}, {-156, -86}, {-140, -86}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckconversionProgramme.VehicleDepletionRate, HeavyDieselTruck.InDepletionRate) annotation(
    Line(points = {{-170, -86}, {-156, -86}, {-156, -88}, {-140, -88}}, color = {0, 0, 127}));
  connect(HeavyDieselTruck.VehicleNos, HeavyDieselTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-110, -86}, {-108, -86}, {-108, -88}, {-169, -88}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_H_TruckAfterFossilBan.u[7]) annotation(
    Line(points = {{-170, -90}, {-160, -90}, {-160, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyDieselTruckconversionProgramme.ToElectricVehicleDepletion, DepletionInHeavyTruck.u[3]) annotation(
    Line(points = {{-170, -92}, {-160, -92}, {-160, -142}, {-152, -142}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruck.VehicleNos, HeavyHydrogenTruckconversionProgramme.VehicleInput) annotation(
    Line(points = {{-65, -103}, {-64, -103}, {-64, -104}, {-169, -104}}, color = {95, 0, 191}));
  connect(HeavyHydrogenTruckconversionProgramme.VehicleGrowhRate, HeavyHydrogenTruck.InGrowthRate) annotation(
    Line(points = {{-170, -100}, {-133, -100}, {-133, -101}, {-93, -101}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckconversionProgramme.VehicleDepletionRate, HeavyHydrogenTruck.InDepletionRate) annotation(
    Line(points = {{-170, -102}, {-133, -102}, {-133, -105}, {-93, -105}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_H_TruckAfterFossilBan.u[8]) annotation(
    Line(points = {{-170, -106}, {-160, -106}, {-160, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckconversionProgramme.ToElectricVehicleDepletion, DepletionInHeavyTruck.u[4]) annotation(
    Line(points = {{-170, -108}, {-160, -108}, {-160, -142}, {-152, -142}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckRateLogic.GrowthRate, HeavyHydrogenTruckconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, -102}, {-191, -102}, {-191, -100}, {-178, -100}}, color = {0, 0, 127}));
  connect(HeavyHydrogenTruckRateLogic.DepletionRate, HeavyHydrogenTruckconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -108}, {-178, -108}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruck.VehicleNos, conversionProgramme8.VehicleInput) annotation(
    Line(points = {{-108, -120}, {-102, -120}, {-102, -118}, {-170, -118}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruckRateLogic.GrowthRate, conversionProgramme8.GrowthRate) annotation(
    Line(points = {{-202, -118}, {-192, -118}, {-192, -114}, {-178, -114}}, color = {0, 0, 127}));
  connect(HeavyBioGasTruckRateLogic.DepletionRate, conversionProgramme8.DepletionRate) annotation(
    Line(points = {{-202, -124}, {-192, -124}, {-192, -122}, {-178, -122}}, color = {0, 0, 127}));
  connect(conversionProgramme8.VehicleGrowhRate, HeavyBioGasTruck.InGrowthRate) annotation(
    Line(points = {{-170, -114}, {-160, -114}, {-160, -120}, {-138, -120}}, color = {0, 0, 127}));
  connect(conversionProgramme8.VehicleDepletionRate, HeavyBioGasTruck.InDepletionRate) annotation(
    Line(points = {{-170, -116}, {-160, -116}, {-160, -122}, {-138, -122}}, color = {0, 0, 127}));
  connect(conversionProgramme8.ToElectricVehicleGrowth, GrowthinElectric_H_TruckAfterFossilBan.u[9]) annotation(
    Line(points = {{-170, -120}, {-160, -120}, {-160, -134}, {-152, -134}}, color = {0, 0, 127}));
  connect(conversionProgramme8.ToElectricVehicleDepletion, DepletionInHeavyTruck.u[5]) annotation(
    Line(points = {{-170, -122}, {-160, -122}, {-160, -142}, {-152, -142}}, color = {0, 0, 127}));
  connect(DepletionInBus.y, ElectricBus.InDepletionRate) annotation(
    Line(points = {{45, -107}, {58, -107}, {58, -88}, {62, -88}}, color = {0, 0, 127}));
  connect(DieselBus.VehicleNos, DieselBusconversionProgramme.VehicleInput) annotation(
    Line(points = {{98, 28}, {102, 28}, {102, 44}, {52, 44}, {52, 28}, {41, 28}}, color = {0, 0, 127}));
  connect(DieselBusRateLogic.GrowthRate, DieselBusconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, -154}, {24, -154}, {24, 31}, {31, 31}}, color = {0, 0, 127}));
  connect(DieselBusRateLogic.DepletionRate, DieselBusconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, -160}, {24, -160}, {24, 25}, {31, 25}}, color = {0, 0, 127}));
  connect(DieselBusconversionProgramme.VehicleGrowhRate, DieselBus.InGrowthRate) annotation(
    Line(points = {{40, 31}, {54, 31}, {54, 30}, {62, 30}}, color = {0, 0, 127}));
  connect(DieselBusconversionProgramme.VehicleDepletionRate, DieselBus.InDepletionRate) annotation(
    Line(points = {{40, 30}, {54, 30}, {54, 24}, {62, 24}}, color = {0, 0, 127}));
  connect(DieselBusconversionProgramme.ToElectricVehicleGrowth, GrowthinElectricBusesAfterFossilBan.u[1]) annotation(
    Line(points = {{40, 26}, {50, 26}, {50, -56}, {46, -56}, {46, -66}}, color = {0, 0, 127}));
  connect(DieselBusconversionProgramme.ToElectricVehicleDepletion, DepletionInBus.u[1]) annotation(
    Line(points = {{40, 24}, {50, 24}, {50, -96}, {45, -96}}, color = {0, 0, 127}));
  connect(DieselBusRateLogic.GrowthToElectricVehicle, GrowthinElectricBusesAfterFossilBan.u[2]) annotation(
    Line(points = {{-202, -164}, {24, -164}, {24, -56}, {46, -56}, {46, -66}}, color = {0, 0, 127}));
  connect(GasBus.VehicleNos, GasBusconversionProgramme.VehicleInput) annotation(
    Line(points = {{98, -10}, {102, -10}, {102, -6}, {39, -6}}, color = {95, 0, 191}));
  connect(GasBusRateLogic.GrowthRate, GasBusconversionProgramme.GrowthRate) annotation(
    Line(points = {{-176, -171}, {-176, -154}, {24, -154}, {24, -3}, {29, -3}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.DepletionRate, GasBusconversionProgramme.DepletionRate) annotation(
    Line(points = {{-171, -171}, {-171, -160}, {24, -160}, {24, -9}, {29, -9}}, color = {0, 0, 127}));
  connect(GasBusconversionProgramme.VehicleGrowhRate, GasBus.InGrowthRate) annotation(
    Line(points = {{38, -3}, {50, -3}, {50, -8}, {62, -8}}, color = {0, 0, 127}));
  connect(GasBusconversionProgramme.VehicleDepletionRate, GasBus.InDepletionRate) annotation(
    Line(points = {{38, -4}, {50, -4}, {50, -14}, {62, -14}}, color = {0, 0, 127}));
  connect(GasBusconversionProgramme.ToElectricVehicleGrowth, GrowthinElectricBusesAfterFossilBan.u[3]) annotation(
    Line(points = {{38, -8}, {46, -8}, {46, -66}}, color = {0, 0, 127}));
  connect(GasBusconversionProgramme.ToElectricVehicleDepletion, DepletionInBus.u[2]) annotation(
    Line(points = {{38, -10}, {50, -10}, {50, -86}, {45, -86}, {45, -96}}, color = {0, 0, 127}));
  connect(ElectricBusRateLogic.GrowthRate, GrowthinElectricBusesAfterFossilBan.u[4]) annotation(
    Line(points = {{-94, -168}, {-94, -154}, {24, -154}, {24, -56}, {46, -56}, {46, -66}}, color = {0, 0, 127}));
  connect(HydrogenBusRateLogic.GrowthRate, conversionProgramme.GrowthRate) annotation(
    Line(points = {{-140, -170}, {-140, -154}, {24, -154}, {24, -40}, {34, -40}}, color = {0, 0, 127}));
  connect(conversionProgramme.VehicleGrowhRate, HydrogenBus.InGrowthRate) annotation(
    Line(points = {{42, -40}, {50, -40}, {50, -48}, {62, -48}}, color = {0, 0, 127}));
  connect(conversionProgramme.VehicleDepletionRate, HydrogenBus.InDepletionRate) annotation(
    Line(points = {{42, -42}, {46, -42}, {46, -54}, {62, -54}}, color = {0, 0, 127}));
  connect(conversionProgramme.ToElectricVehicleGrowth, GrowthinElectricBusesAfterFossilBan.u[5]) annotation(
    Line(points = {{42, -46}, {46, -46}, {46, -66}}, color = {0, 0, 127}));
  connect(conversionProgramme.ToElectricVehicleDepletion, DepletionInBus.u[3]) annotation(
    Line(points = {{42, -48}, {50, -48}, {50, -86}, {45, -86}, {45, -96}}, color = {0, 0, 127}));
  connect(HydrogenBusRateLogic.DepletionRate, conversionProgramme.DepletionRate) annotation(
    Line(points = {{-134, -170}, {-136, -170}, {-136, -160}, {24, -160}, {24, -48}, {34, -48}}, color = {0, 0, 127}));
  connect(HydrogenBus.VehicleNos, conversionProgramme.VehicleInput) annotation(
    Line(points = {{98, -50}, {100, -50}, {100, -44}, {42, -44}}, color = {0, 0, 127}));
  connect(HydrogenBusRateLogic.GrowthToElectricVehicle, GrowthinElectricBusesAfterFossilBan.u[6]) annotation(
    Line(points = {{-130, -170}, {-130, -164}, {24, -164}, {24, -56}, {46, -56}, {46, -66}}, color = {0, 0, 127}));
  connect(ElectricBusRateLogic.DepletionRate, DepletionInBus.u[4]) annotation(
    Line(points = {{-86, -168}, {-84, -168}, {-84, -160}, {24, -160}, {24, -56}, {50, -56}, {50, -86}, {46, -86}, {46, -96}}, color = {0, 0, 127}));
  connect(HeavyPetrolTruck.VehicleNos, TotalHeavyTrucks.u[1]) annotation(
    Line(points = {{-74, -72}, {-18, -72}, {-18, 156}, {-2, 156}}, color = {95, 0, 191}));
  connect(HeavyDieselTruck.VehicleNos, TotalHeavyTrucks.u[2]) annotation(
    Line(points = {{-110, -86}, {-18, -86}, {-18, 156}, {-2, 156}}, color = {95, 0, 191}));
  connect(HeavyHydrogenTruck.VehicleNos, TotalHeavyTrucks.u[3]) annotation(
    Line(points = {{-64, -102}, {-18, -102}, {-18, 156}, {-2, 156}}, color = {95, 0, 191}));
  connect(HeavyBioGasTruck.VehicleNos, TotalHeavyTrucks.u[4]) annotation(
    Line(points = {{-108, -120}, {-18, -120}, {-18, 156}, {-2, 156}}, color = {95, 0, 191}));
  connect(HeavyElectricTruck.VehicleNos, TotalHeavyTrucks.u[5]) annotation(
    Line(points = {{-78, -138}, {-18, -138}, {-18, 156}, {-2, 156}}, color = {95, 0, 191}));
  connect(DieselCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[9]) annotation(
    Line(points = {{-200, 90}, {-186, 90}, {-186, 74}, {-168, 74}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.GrowthToElectricVehicle, GrowthinElectricBusesAfterFossilBan.u[7]) annotation(
    Line(points = {{-166, -170}, {-166, -164}, {24, -164}, {24, -56}, {46, -56}, {46, -66}}, color = {0, 0, 127}));
  connect(BioCars.VehicleNos, BioCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-131, 137}, {-126, 137}, {-126, 142}, {-175, 142}}, color = {95, 0, 191}));
  connect(BioCars.ToEV, multiSum.u[4]) annotation(
    Line(points = {{-130, 136}, {-70, 136}, {-70, 46}, {-86, 46}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.VehicleDepletionRate, BioCars.InDepletionRate) annotation(
    Line(points = {{-176, 144}, {-170, 144}, {-170, 136}, {-155, 136}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.VehicleGrowhRate, BioCars.InGrowthRate) annotation(
    Line(points = {{-176, 145}, {-170, 145}, {-170, 139}, {-155, 139}}, color = {0, 0, 127}));
  connect(BioCars.VehicleNos, TotalCars.u[5]) annotation(
    Line(points = {{-131, 137}, {-112, 137}, {-112, 158}, {-102, 158}}, color = {0, 0, 127}));
  connect(BioCars.VehicleNos, VehiclesPoolBus.S001_BioCars) annotation(
    Line(points = {{-131, 137}, {200, 137}, {200, 0}}, color = {170, 0, 0}));
  connect(TotalCars.y, BioCars.TotalVehicles) annotation(
    Line(points = {{-80, 158}, {-72, 158}, {-72, 134}, {-131, 134}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-220, -190}, {220, 190}}, initialScale = 0.1, grid = {0.5, 0.5})),
    Icon(graphics = {Text(origin = {0, -119}, extent = {{-100, 19}, {100, -19}}, textString = "%name%", fontSize = 8)}));
end TransportationHub;
