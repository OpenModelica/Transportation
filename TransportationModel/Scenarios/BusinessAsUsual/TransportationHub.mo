within TransportationModel.Scenarios.BusinessAsUsual;


model TransportationHub
  extends TransportationModel.Icons.TransportationIcon;
  outer TransportationModel.TransportationRecords.TransportationParameter_S1 TP;
 
  Modelica.Blocks.Sources.RealExpression SimulationYear(y = time) annotation(
    Placement(visible = true, transformation(origin = {-821.5, 18}, extent = {{-34.5, -27}, {34.5, 27}}, rotation = 0)));
 
  TransportationModel.Interfaces.Bus VehiclesPoolBus annotation(
    Placement(visible = true, transformation(origin = {598, -31}, extent = {{-55, -49}, {55, 49}}, rotation = -90), iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 
  TransportationModel.Components.TruckPool LightTruck(InitialLevel = TP.InitialLevelofLightTruck) annotation(
    Placement(visible = true, transformation(origin = {-332.5, -122.5}, extent = {{-35.5, -35.5}, {35.5, 35.5}}, rotation = 0)));
  
  TransportationModel.Components.TruckPool HeavyTruck(InitialLevel = TP.InitialLevelofHeavyTruck) annotation(
    Placement(visible = true, transformation(origin = {-158, -80}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 
  TransportationModel.Components.BusPool DieselBus(InitialLevel = TP.InitialLevelofDieselBus) annotation(
    Placement(visible = true, transformation(origin = {302, 163}, extent = {{-72, -72}, {72, 72}}, rotation = 0)));
 
  TransportationModel.Components.BusPool GasBus(InitialLevel = TP.InitialLevelofGasBus) annotation(
    Placement(visible = true, transformation(origin = {307.5, -66.5}, extent = {{-75.5, -75.5}, {75.5, 75.5}}, rotation = 0)));
  
  TransportationModel.Components.TruckPool LightTruckElectric(InitialLevel = TP.InitialLevelofLightElectricTruck)  annotation(
    Placement(visible = true, transformation(origin = {-321, -29}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
 
  TransportationModel.Components.TruckPool HeavyTruckElectrical(InitialLevel = TP.InitialLevelofHeavyElectricTruck) annotation(
    Placement(visible = true, transformation(origin = {-160.5, -163.5}, extent = {{-33.5, -33.5}, {33.5, 33.5}}, rotation = 0)));
  
  TransportationModel.Components.BusPool ElectricalBus(InitialLevel = TP.InitialLevelofElectricBus) annotation(
    Placement(visible = true, transformation(origin = {304, 55}, extent = {{-76, -76}, {76, 76}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic PetrolRateLogic(redeclare Utilites.PetrolLogicCombitable LogicCombitable, redeclare Utilites.PetrolCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear4 = TP.BiogasCarBanYear, CarBanYear = TP.PetrolCarBanYear,CarBanYear1 = TP.PetrolCarBanYear, CarBanYear2 = TP.PetrolCarBanYear,CarBanYear3 = TP.PHeVCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-574, 249}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic DieselRateLogic(redeclare Utilites.DieselLogicCombitable LogicCombitable, redeclare Utilites.DieselCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData,redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear = TP.DieselCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-574.5, 215.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic PHeVRateLogic(redeclare Utilites.PHeVLogicCombitable LogicCombitable,redeclare Utilites.PHeVCarDepletionCombiTable DepletionLogicCombitable, redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanBiogasData, redeclare Utilites.DummyCombitable AfterBanPHeVData, CarBanYear = TP.PHeVCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.PHeVCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-573, 176}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic ElectricRateLogic(redeclare Utilites.PetrolLogicCombitable AfterBanPetrolData, redeclare Utilites.DieselLogicCombitable AfterBanDieselData,redeclare Utilites.PHeVLogicCombitable AfterBanPHeVData,redeclare Utilites.BiogasCarsCombitable AfterBanBiogasData, CarBanYear = TP.ElectricCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.DieselCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-574.5, 132.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic BiogasCarsRateLogic(redeclare Utilites.BiogasCarsCombitable LogicCombitable, redeclare Utilites.BiogasCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData,CarBanYear = TP.BiogasCarBanYear, CarBanYear2 = TP.DieselCarBanYear,CarBanYear1 = TP.PetrolCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-576, 288}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
 
 TransportationModel.Components.VehiclePool PetrolCars(InitialLevel = TP.InitialLevelofPetrolCar)  annotation(
    Placement(visible = true, transformation(origin = {-466.5, 264.5}, extent = {{-45.5, -45.5}, {45.5, 45.5}}, rotation = 0)));
 TransportationModel.Components.VehiclePool DieselCars(InitialLevel = TP.InitialLevelofDieselCar)  annotation(
    Placement(visible = true, transformation(origin = {-383, 210}, extent = {{-46, -46}, {46, 46}}, rotation = 0)));
 TransportationModel.Components.VehiclePool PHeVCars(InitialLevel = TP.InitialLevelofPHeVCar)  annotation(
    Placement(visible = true, transformation(origin = {-283, 157}, extent = {{-41, -41}, {41, 41}}, rotation = 0)));
 TransportationModel.Components.VehiclePool ElectricCars(InitialLevel = TP.InitialLevelofEV)  annotation(
    Placement(visible = true, transformation(origin = {-207, 106}, extent = {{-44, -44}, {44, 44}}, rotation = 0)));

 TransportationModel.Components.BusPool HydrogenBus(InitialLevel = TP.InitialLevelofPetrolBus) annotation(
    Placement(visible = true, transformation(origin = {312.5, -176.5}, extent = {{-74.5, -74.5}, {74.5, 74.5}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic LightTruckElectricRateLogic(redeclare Utilites.LightDieselTruckCombiTable AfterBanDieselData, redeclare Utilites.LightTruckCombiTable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, redeclare Utilites.LightElectricTruckCombiTable LogicCombitable, redeclare Utilites.LightElectricTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.LightElectricTruckBanYear,CarBanYear1 = TP.LightTruckBanYear, CarBanYear2 = TP.LightDieselTruckBanYear,CarBanYear3 = TP.PHeVLightTruckBanYear, CarBanYear4 = TP.BiogasCarBanYear, DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan, GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-570.5, 88.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic LightTruckRateLogic(redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanPetrolData,redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanBiogasData, redeclare Utilites.LightTruckCombiTable LogicCombitable, redeclare Utilites.LightTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.LightTruckBanYear,CarBanYear1 = TP.LightTruckBanYear, CarBanYear2 = TP.LightDieselTruckBanYear, CarBanYear3 = TP.LightPHeVTruckBanYear, CarBanYear4 = TP.LightTruckBiogasBanYear, DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572, 16}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));

 TransportationModel.LogicBox.TransportationRateLogic HeavyTruckRateLogic(redeclare Utilites.HeavyTruckCombiTable LogicCombitable, redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear1 = TP.HeavyTruckBanYear, CarBanYear2 = TP.DieselHeavyTruckBanYear, CarBanYear3 = TP.HeavyHydrogenTruckBanYear, CarBanYear4 = TP.BiogasHeavyTruckBanYear, redeclare Utilites.HeavyTruckDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.HeavyTruckBanYear, DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-571.5, 53.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 

 TransportationModel.LogicBox.TransportationRateLogic HeavyTruckElectricRateLogic(redeclare Utilites.HeavyTruckDieselCombiTable AfterBanDieselData, redeclare Utilites.HeavyTruckCombiTable AfterBanPetrolData, redeclare Utilites.HeavyTruckHydrogenCombiTable AfterBanPHeVData, redeclare Utilites.HeavyBioGasTruckCombiTable AfterBanBiogasData, redeclare Utilites.HeavyTruckElectricCombiTable LogicCombitable, redeclare Utilites.HeavyTruckElectricDepletionCombiTable DepletionLogicCombitable,CarBanYear = TP.HeavyElectricTruckBanYear,CarBanYear1 = TP.HeavyTruckBanYear, CarBanYear2 = TP.DieselHeavyTruckBanYear,CarBanYear3 = TP.HeavyHydrogenTruckBanYear, CarBanYear4 = TP.BiogasHeavyTruckBanYear, DepletionRateofVehicleAfterBan = TP.DepletionRateofPHeVCarsAfterBan, GrowthRateofVehicleAfterBan = TP.GrowthRateofPHeVCarsAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-570, -118}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic DieselBusRateLogic(redeclare Utilites.DieselBusCombiTable LogicCombitable, redeclare Utilites.DieselBusDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear1 = TP.HyrogenBusBanYear, CarBanYear2 = TP.DieselBusBanYear, CarBanYear3 = TP.GasBusBanYear, CarBanYear4 = TP.BiogasBusBanYear, CarBanYear = TP.DieselBusBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofDieselBusAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofDieselBusAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-574, -25}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic ElectricalBusRateLogic(redeclare Utilites.ElectricalBusCombiTable LogicCombitable, redeclare Utilites.ElectricalBusDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.PetrolBusCombiTable AfterBanPetrolData, redeclare Utilites.DieselBusCombiTable AfterBanDieselData, redeclare Utilites.GasBusCombiTable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear1 = TP.HyrogenBusBanYear, CarBanYear2 = TP.DieselBusBanYear, CarBanYear3 = TP.GasBusBanYear, CarBanYear4 = TP.BiogasBusBanYear, CarBanYear = TP.ElectricBusBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofElectricBusAfterBan,GrowthRateofVehicleAfterBan = TP.GrowthRateofElectricBusAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-570, -70}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
 
 TransportationModel.LogicBox.TransportationRateLogic GasBusRateLogic(redeclare Utilites.GasBusCombiTable LogicCombitable, redeclare Utilites.GasBusDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear1 = TP.HyrogenBusBanYear, CarBanYear2 = TP.DieselBusBanYear, CarBanYear3 = TP.GasBusBanYear, CarBanYear4 = TP.BiogasBusBanYear, CarBanYear = TP.GasBusBanYear, DepletionRateofVehicleAfterBan = TP.DepletionRateofGasBusAfterBan ,GrowthRateofVehicleAfterBan = TP.GrowthRateofGasBusAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-572, -162}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));

 TransportationModel.LogicBox.TransportationRateLogic PetrolBusRateLogic(redeclare Utilites.PetrolBusCombiTable LogicCombitable, redeclare Utilites.PetrolBusDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear1 = TP.HyrogenBusBanYear, CarBanYear2 = TP.DieselBusBanYear, CarBanYear3 = TP.GasBusBanYear, CarBanYear4 = TP.BiogasBusBanYear, CarBanYear = TP.HyrogenBusBanYear,DepletionRateofVehicleAfterBan = TP.DepletionRateofHygrogenBusAfterBan, GrowthRateofVehicleAfterBan = TP.GrowthRateofHydrogenBusAfterBan) annotation(
    Placement(visible = true, transformation(origin = {-573.5, -200.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));

 Modelica.Blocks.Math.MultiSum TotalTruckAggregator(nu = 4)  annotation(
    Placement(visible = true, transformation(origin = {31, 355}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalBusAggregator(nu = 4)  annotation(
    Placement(visible = true, transformation(origin = {500, 355}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalCarAggregator(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-314, 382}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
 TransportationModel.Components.VehiclePool BioCars(InitialLevel = 42463)  annotation(
    Placement(visible = true, transformation(origin = {-144, 50}, extent = {{-48, -48}, {48, 48}}, rotation = 0)));
equation
 connect(LightTruckElectric.VehicleNos, VehiclesPoolBus.S007_LightTruckElectric) annotation(
    Line(points = {{-282, -29}, {-44, -29}, {-44, 268}, {598, 268}, {598, -31}}, color = {95, 0, 191}));
 connect(LightTruck.VehicleNos, VehiclesPoolBus.S008_LightTruck) annotation(
    Line(points = {{-293, -122.5}, {-43, -122.5}, {-43, 266}, {598, 266}, {598, -31}}, color = {95, 0, 191}));
 connect(HeavyTruck.VehicleNos, VehiclesPoolBus.S009_HeavyTruck) annotation(
    Line(points = {{-117, -80}, {165, -80}, {165, 270}, {598, 270}, {598, -31}}, color = {95, 0, 191}));
 connect(HeavyTruckElectrical.VehicleNos, VehiclesPoolBus.S010_HeavyTruckElectric) annotation(
    Line(points = {{-123, -163.5}, {166, -163.5}, {166, 269}, {598, 269}, {598, -31}}, color = {0, 0, 127}));
  connect(DieselBus.VehicleNos, VehiclesPoolBus.S011_DieselBus) annotation(
    Line(points = {{382, 163}, {410, 163}, {410, 266}, {598, 266}, {598, -31}}, color = {95, 0, 191}));
  connect(ElectricalBus.VehicleNos, VehiclesPoolBus.S012_ElectricBus) annotation(
    Line(points = {{388, 55}, {410, 55}, {410, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
  connect(GasBus.VehicleNos, VehiclesPoolBus.S013_GasBus) annotation(
    Line(points = {{391, -66.5}, {411, -66.5}, {411, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
 connect(SimulationYear.y, ElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 133}, {-592, 133}}, color = {0, 0, 127}));
 connect(SimulationYear.y, PHeVRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 176}, {-590, 176}}, color = {0, 0, 127}));
 connect(SimulationYear.y, DieselRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 216}, {-591, 216}}, color = {0, 0, 127}));
 connect(SimulationYear.y, PetrolRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 249}, {-591, 249}}, color = {0, 0, 127}));
 connect(DieselCars.VehicleNos, VehiclesPoolBus.S002_Diesel) annotation(
    Line(points = {{-339, 208}, {-44, 208}, {-44, 282}, {598, 282}, {598, -31}}, color = {95, 0, 191}));
 connect(PHeVCars.VehicleNos, VehiclesPoolBus.S003_PHeV) annotation(
    Line(points = {{-244, 155}, {-43, 155}, {-43, 283}, {598, 283}, {598, -31}}, color = {95, 0, 191}));
 connect(ElectricCars.VehicleNos, VehiclesPoolBus.S004_Electric) annotation(
    Line(points = {{-165, 104}, {-43, 104}, {-43, 283}, {598, 283}, {598, -31}}, color = {95, 0, 191}));
  connect(HydrogenBus.VehicleNos, VehiclesPoolBus.S014_PetrolBus) annotation(
    Line(points = {{395, -176.5}, {412, -176.5}, {412, 265}, {598, 265}, {598, -31}}, color = {95, 0, 191}));
 connect(PetrolRateLogic.GrowthRate, PetrolCars.InGrowthRate) annotation(
    Line(points = {{-557, 257}, {-555.5, 257}, {-555.5, 270}, {-509, 270}}, color = {0, 0, 127}));
 connect(PetrolRateLogic.DepletionRate, PetrolCars.InDepletionRate) annotation(
    Line(points = {{-557, 241}, {-531.5, 241}, {-531.5, 259}, {-509, 259}}, color = {0, 0, 127}));
 connect(DieselRateLogic.GrowthRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-558, 224}, {-492.5, 224}, {-492.5, 216}, {-426, 216}}, color = {0, 0, 127}));
 connect(DieselRateLogic.DepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-558, 207}, {-492, 207}, {-492, 205}, {-426, 205}}, color = {0, 0, 127}));
 connect(PHeVRateLogic.GrowthRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-556, 184}, {-446, 184}, {-446, 173}, {-337, 173}, {-337, 162}, {-322, 162}}, color = {0, 0, 127}));
 connect(PHeVRateLogic.DepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-556, 168}, {-439.5, 168}, {-439.5, 152}, {-322, 152}}, color = {0, 0, 127}));
 connect(ElectricRateLogic.GrowthRate, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-557, 141}, {-402, 141}, {-402, 111}, {-248, 111}}, color = {0, 0, 127}));
 connect(ElectricRateLogic.DepletionRate, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-557, 124}, {-402, 124}, {-402, 101}, {-248, 101}}, color = {0, 0, 127}));
 connect(LightTruckElectricRateLogic.GrowthRate, LightTruckElectric.InGrowthRate) annotation(
    Line(points = {{-553, 97}, {-429, 97}, {-429, -25.5}, {-359.5, -25.5}}, color = {0, 0, 127}));
 connect(LightTruckElectricRateLogic.DepletionRate, LightTruckElectric.InDepletionRate) annotation(
    Line(points = {{-553, 80}, {-429, 80}, {-429, -33}, {-359.5, -33}}, color = {0, 0, 127}));
 connect(SimulationYear.y, LightTruckElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 89}, {-588, 89}}, color = {0, 0, 127}));
 connect(SimulationYear.y, HeavyTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, 54}, {-589, 54}}, color = {0, 0, 127}));
 connect(HeavyTruckRateLogic.GrowthRate, HeavyTruck.InGrowthRate) annotation(
    Line(points = {{-554, 62}, {-430, 62}, {-430, -76}, {-199, -76}}, color = {0, 0, 127}));
 connect(HeavyTruckRateLogic.DepletionRate, HeavyTruck.InDepletionRate) annotation(
    Line(points = {{-554, 45}, {-376.5, 45}, {-376.5, -84}, {-199, -84}}, color = {0, 0, 127}));
 connect(SimulationYear.y, LightTruckRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-687, 18}, {-687, 16}, {-590, 16}}, color = {0, 0, 127}));
 connect(LightTruckRateLogic.GrowthRate, LightTruck.InGrowthRate) annotation(
    Line(points = {{-554, 25}, {-464, 25}, {-464, -119}, {-372, -119}}, color = {0, 0, 127}));
 connect(LightTruckRateLogic.DepletionRate, LightTruck.InDepletionRate) annotation(
    Line(points = {{-554, 7}, {-466, 7}, {-466, -126}, {-372, -126}}, color = {0, 0, 127}));
 connect(HeavyTruckElectricRateLogic.GrowthRate, HeavyTruckElectrical.InGrowthRate) annotation(
    Line(points = {{-552, -109}, {-430, -109}, {-430, -160}, {-197, -160}}, color = {0, 0, 127}));
 connect(HeavyTruckElectricRateLogic.DepletionRate, HeavyTruckElectrical.InDepletionRate) annotation(
    Line(points = {{-552, -127}, {-430, -127}, {-430, -167}, {-197, -167}}, color = {0, 0, 127}));
 connect(DieselBusRateLogic.GrowthRate, DieselBus.InGrowthRate) annotation(
    Line(points = {{-556, -16}, {-430, -16}, {-430, -227}, {165, -227}, {165, 170}, {223, 170}}, color = {0, 0, 127}));
 connect(DieselBusRateLogic.DepletionRate, DieselBus.InDepletionRate) annotation(
    Line(points = {{-556, -34}, {-430, -34}, {-430, -227}, {165, -227}, {165, 155}, {223, 155}}, color = {0, 0, 127}));
  connect(ElectricalBusRateLogic.GrowthRate, ElectricalBus.InGrowthRate) annotation(
    Line(points = {{-552, -61}, {-430, -61}, {-430, -227}, {167, -227}, {167, 63}, {220, 63}}, color = {0, 0, 127}));
  connect(ElectricalBusRateLogic.DepletionRate, ElectricalBus.InDepletionRate) annotation(
    Line(points = {{-552, -79}, {-430, -79}, {-430, -226}, {164, -226}, {164, 47}, {220, 47}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.GrowthRate, GasBus.InGrowthRate) annotation(
    Line(points = {{-554, -153}, {-430, -153}, {-430, -227}, {162, -227}, {162, -59}, {224, -59}}, color = {0, 0, 127}));
  connect(GasBusRateLogic.DepletionRate, GasBus.InDepletionRate) annotation(
    Line(points = {{-554, -171}, {-430, -171}, {-430, -227}, {167, -227}, {167, -75}, {224, -75}}, color = {0, 0, 127}));
 connect(PetrolBusRateLogic.GrowthRate, HydrogenBus.InGrowthRate) annotation(
    Line(points = {{-557, -192}, {167, -192}, {167, -169}, {231, -169}}, color = {0, 0, 127}));
 connect(PetrolBusRateLogic.DepletionRate, HydrogenBus.InDepletionRate) annotation(
    Line(points = {{-557, -209}, {-430, -209}, {-430, -229}, {166, -229}, {166, -185}, {231, -185}}, color = {0, 0, 127}));
 connect(SimulationYear.y, HeavyTruckElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, -118}, {-588, -118}}, color = {0, 0, 127}));
 connect(SimulationYear.y, DieselBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, -25}, {-592, -25}}, color = {0, 0, 127}));
 connect(SimulationYear.y, ElectricalBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, -70}, {-588, -70}}, color = {0, 0, 127}));
 connect(SimulationYear.y, GasBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, -162}, {-590, -162}}, color = {0, 0, 127}));
 connect(SimulationYear.y, PetrolBusRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-686, 18}, {-686, -200}, {-590, -200}}, color = {0, 0, 127}));
 connect(LightTruckElectric.VehicleNos, TotalTruckAggregator.u[1]) annotation(
    Line(points = {{-282, -29}, {-44, -29}, {-44, 355}, {-6, 355}}, color = {0, 0, 127}));
 connect(HeavyTruck.VehicleNos, TotalTruckAggregator.u[2]) annotation(
    Line(points = {{-117, -80}, {-42, -80}, {-42, 355}, {-6, 355}}, color = {95, 0, 191}));
 connect(LightTruck.VehicleNos, TotalTruckAggregator.u[3]) annotation(
    Line(points = {{-293, -122.5}, {-41, -122.5}, {-41, 355}, {-6, 355}}, color = {0, 0, 127}));
 connect(HeavyTruckElectrical.VehicleNos, TotalTruckAggregator.u[4]) annotation(
    Line(points = {{-123, -163.5}, {-41, -163.5}, {-41, 355}, {-6, 355}}, color = {0, 0, 127}));
 connect(TotalTruckAggregator.y, LightTruckElectric.TotalVehicles) annotation(
    Line(points = {{74, 355}, {165, 355}, {165, -37}, {-282, -37}}, color = {0, 0, 127}));
 connect(TotalTruckAggregator.y, HeavyTruck.TotalVehicles) annotation(
    Line(points = {{74, 355}, {166, 355}, {166, -89}, {-117, -89}}, color = {0, 0, 127}));
 connect(TotalTruckAggregator.y, LightTruck.TotalVehicles) annotation(
    Line(points = {{74, 355}, {163, 355}, {163, -131}, {-293, -131}}, color = {0, 0, 127}));
 connect(TotalTruckAggregator.y, HeavyTruckElectrical.TotalVehicles) annotation(
    Line(points = {{74, 355}, {163, 355}, {163, -172}, {-123, -172}}, color = {0, 0, 127}));
  connect(DieselBus.VehicleNos, TotalBusAggregator.u[1]) annotation(
    Line(points = {{382, 163}, {409, 163}, {409, 355}, {463, 355}}, color = {95, 0, 191}));
  connect(ElectricalBus.VehicleNos, TotalBusAggregator.u[2]) annotation(
    Line(points = {{388, 55}, {412, 55}, {412, 355}, {463, 355}}, color = {0, 0, 127}));
  connect(GasBus.VehicleNos, TotalBusAggregator.u[3]) annotation(
    Line(points = {{391, -66}, {412, -66}, {412, 355}, {463, 355}}, color = {95, 0, 191}));
  connect(HydrogenBus.VehicleNos, TotalBusAggregator.u[4]) annotation(
    Line(points = {{395, -176.5}, {411, -176.5}, {411, 355}, {463, 355}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, DieselBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {598, 355}, {598, 149}, {382, 149}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, ElectricalBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 40}, {388, 40}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, GasBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 41}, {415, 41}, {415, -82}, {391, -82}}, color = {0, 0, 127}));
  connect(TotalBusAggregator.y, HydrogenBus.TotalVehicles) annotation(
    Line(points = {{543, 355}, {599, 355}, {599, 35}, {395, 35}, {395, -191}}, color = {0, 0, 127}));
 connect(PetrolCars.VehicleNos, VehiclesPoolBus.S001_Petrol) annotation(
    Line(points = {{-423, 262}, {598, 262}, {598, -31}}, color = {95, 0, 191}));
 connect(PetrolCars.VehicleNos, TotalCarAggregator.u[1]) annotation(
    Line(points = {{-423, 262}, {-401, 262}, {-401, 382}, {-351, 382}}, color = {95, 0, 191}));
 connect(DieselCars.VehicleNos, TotalCarAggregator.u[2]) annotation(
    Line(points = {{-339, 208}, {-322, 208}, {-322, 280}, {-402, 280}, {-402, 382}, {-351, 382}}, color = {0, 0, 127}));
 connect(PHeVCars.VehicleNos, TotalCarAggregator.u[3]) annotation(
    Line(points = {{-244, 155}, {-226, 155}, {-226, 279}, {-398, 279}, {-398, 382}, {-351, 382}}, color = {95, 0, 191}));
 connect(ElectricCars.VehicleNos, TotalCarAggregator.u[4]) annotation(
    Line(points = {{-165, 104}, {-159, 104}, {-159, 279}, {-398, 279}, {-398, 382}, {-351, 382}}, color = {95, 0, 191}));
 connect(TotalCarAggregator.y, PetrolCars.TotalVehicles) annotation(
    Line(points = {{-271, 382}, {-241, 382}, {-241, 253}, {-423, 253}}, color = {0, 0, 127}));
 connect(TotalCarAggregator.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{-271, 382}, {-221, 382}, {-221, 198.5}, {-339, 198.5}}, color = {0, 0, 127}));
 connect(TotalCarAggregator.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{-271, 382}, {-167, 382}, {-167, 147}, {-244, 147}}, color = {0, 0, 127}));
 connect(TotalCarAggregator.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{-271, 382}, {-148, 382}, {-148, 95}, {-165, 95}}, color = {0, 0, 127}));
 connect(SimulationYear.y, BiogasCarsRateLogic.InputSimulationTime) annotation(
    Line(points = {{-784, 18}, {-687, 18}, {-687, 288}, {-593, 288}}, color = {0, 0, 127}));
 connect(BiogasCarsRateLogic.GrowthRate, BioCars.InGrowthRate) annotation(
    Line(points = {{-559, 296}, {-525, 296}, {-525, 56}, {-189, 56}}, color = {0, 0, 127}));
 connect(BiogasCarsRateLogic.DepletionRate, BioCars.InDepletionRate) annotation(
    Line(points = {{-559, 280}, {-524, 280}, {-524, 45}, {-189, 45}}, color = {0, 0, 127}));
 connect(BioCars.VehicleNos, TotalCarAggregator.u[5]) annotation(
    Line(points = {{-98, 48}, {-70, 48}, {-70, 262}, {-398, 262}, {-398, 382}, {-351, 382}}, color = {95, 0, 191}));
 connect(BioCars.VehicleNos, VehiclesPoolBus.S015_BioCars) annotation(
    Line(points = {{-98, 48}, {-70, 48}, {-70, 268}, {598, 268}, {598, -31}}, color = {95, 0, 191}));
 connect(TotalCarAggregator.y, BioCars.TotalVehicles) annotation(
    Line(points = {{-271, 382}, {-147, 382}, {-147, 107}, {-78, 107}, {-78, 38}, {-98, 38}}, color = {0, 0, 127}));
protected
  annotation(
    Diagram(coordinateSystem(grid = {1, 1}, extent = {{-600, -300}, {600, 300}})),
    Icon(coordinateSystem(grid = {1, 1})));


end TransportationHub;
