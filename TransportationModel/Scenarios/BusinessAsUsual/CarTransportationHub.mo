within TransportationModel.Scenarios.BusinessAsUsual;

model CarTransportationHub
outer TransportationModel.TransportationRecords.TransportationParameter_S1 TP;

 TransportationModel.LogicBox.TransportationRateLogic PetrolRateLogic(redeclare Utilites.PetrolLogicCombitable LogicCombitable, redeclare Utilites.PetrolCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData, redeclare Utilites.DummyCombitable AfterBanBiogasData, CarBanYear = TP.PetrolCarBanYear,CarBanYear1 = TP.PetrolCarBanYear, CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-66, 41}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic DieselRateLogic(redeclare Utilites.DieselLogicCombitable LogicCombitable, redeclare Utilites.DieselCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData,redeclare Utilites.DummyCombitable AfterBanBiogasData, redeclare Utilites.DummyCombitable AfterBanPHeVData, CarBanYear = TP.DieselCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-66.5, 7.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  
  TransportationModel.LogicBox.TransportationRateLogic PHeVRateLogic(redeclare Utilites.PHeVLogicCombitable LogicCombitable,redeclare Utilites.PHeVCarDepletionCombiTable DepletionLogicCombitable, redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanBiogasData, redeclare Utilites.DummyCombitable AfterBanPHeVData, CarBanYear = TP.PHeVCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-67, -28}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic ElectricRateLogic(CarBanYear = TP.ElectricCarBanYear, CarBanYear1 = TP.PetrolCarBanYear,CarBanYear2 = TP.DieselCarBanYear,CarBanYear3 = TP.DieselCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-66.5, -71.5}, extent = {{-14.5, -14.5}, {14.5, 14.5}}, rotation = 0)));
 
  TransportationModel.LogicBox.TransportationRateLogic BiogasCarsRateLogic(redeclare Utilites.BiogasCarsCombitable LogicCombitable, redeclare Utilites.BiogasCarDepletionCombiTable DepletionLogicCombitable,redeclare Utilites.DummyCombitable AfterBanPetrolData, redeclare Utilites.DummyCombitable AfterBanDieselData, redeclare Utilites.DummyCombitable AfterBanPHeVData,redeclare Utilites.DummyCombitable AfterBanBiogasData,CarBanYear = TP.BiogasCarBanYear, CarBanYear2 = TP.DieselCarBanYear,CarBanYear1 = TP.PetrolCarBanYear,CarBanYear3 = TP.PHeVCarBanYear, CarBanYear4 = TP.BiogasCarBanYear) annotation(
    Placement(visible = true, transformation(origin = {-66, 80}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
 
 TransportationModel.Components.VehiclePool PetrolCars(InitialLevel = TP.InitialLevelofPetrolCar) annotation(
    Placement(visible = true, transformation(origin = {8, 36}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 TransportationModel.Components.VehiclePool DieselCars(InitialLevel = TP.InitialLevelofDieselCar) annotation(
    Placement(visible = true, transformation(origin = {10, 2}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
 TransportationModel.Components.VehiclePool PHeVCars(InitialLevel = TP.InitialLevelofPHeVCar) annotation(
    Placement(visible = true, transformation(origin = {9, -33}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
 TransportationModel.Components.VehiclePool BiogasCars(InitialLevel = TP.InitialLevelofBiogasCars) annotation(
    Placement(visible = true, transformation(origin = {9, 75}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
 TransportationModel.Components.VehiclePool ElectricCars(InitialLevel = TP.InitialLevelofEV) annotation(
    Placement(visible = true, transformation(origin = {10, -78}, extent = {{-24, -24}, {24, 24}}, rotation = 0)));
 TransportationModel.Interfaces.Bus CarTransportationHub annotation(
    Placement(visible = true, transformation(origin = {224, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
 Modelica.Blocks.Math.MultiSum TotalCars(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {150, 110}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
 Modelica.Blocks.Sources.RealExpression realExpression(y = time)  annotation(
    Placement(visible = true, transformation(origin = {-194, -14}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
 connect(BiogasCarsRateLogic.GrowthRate, BiogasCars.InGrowthRate) annotation(
    Line(points = {{-49, 88}, {-26, 88}, {-26, 78}, {-10, 78}}, color = {0, 0, 127}));
 connect(BiogasCarsRateLogic.DepletionRate, BiogasCars.InDepletionRate) annotation(
    Line(points = {{-49, 72}, {-10, 72}}, color = {0, 0, 127}));
 connect(PetrolRateLogic.GrowthRate, PetrolCars.InGrowthRate) annotation(
    Line(points = {{-49, 49}, {-36, 49}, {-36, 38}, {-10, 38}}, color = {0, 0, 127}));
 connect(PetrolRateLogic.DepletionRate, PetrolCars.InDepletionRate) annotation(
    Line(points = {{-49, 33}, {-36, 33}, {-36, 34}, {-10, 34}}, color = {0, 0, 127}));
 connect(DieselRateLogic.GrowthRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-50, 16}, {-36, 16}, {-36, 4}, {-10, 4}}, color = {0, 0, 127}));
 connect(DieselRateLogic.DepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-50, -1}, {-36, -1}, {-36, 0}, {-10, 0}}, color = {0, 0, 127}));
 connect(PHeVRateLogic.GrowthRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-50, -20}, {-34, -20}, {-34, -30}, {-13, -30}}, color = {0, 0, 127}));
 connect(PHeVRateLogic.DepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-50, -36}, {-13, -36}}, color = {0, 0, 127}));
 connect(ElectricRateLogic.GrowthRate, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-49, -63}, {-32, -63}, {-32, -76}, {-12, -76}}, color = {0, 0, 127}));
 connect(ElectricRateLogic.DepletionRate, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-49, -80}, {-12, -80}}, color = {0, 0, 127}));
 connect(BiogasCars.VehicleNos, CarTransportationHub.S001_BioCars) annotation(
    Line(points = {{28, 74}, {224, 74}, {224, 0}}, color = {95, 0, 191}));
 connect(PetrolCars.VehicleNos, CarTransportationHub.S002_PetrolCars) annotation(
    Line(points = {{28, 36}, {224, 36}, {224, 0}}, color = {95, 0, 191}));
 connect(DieselCars.VehicleNos, CarTransportationHub.S003_DieselCars) annotation(
    Line(points = {{30, 0}, {224, 0}}, color = {95, 0, 191}));
 connect(PHeVCars.VehicleNos, CarTransportationHub.S004_PHeVCars) annotation(
    Line(points = {{30, -34}, {224, -34}, {224, 0}}, color = {95, 0, 191}));
 connect(ElectricCars.VehicleNos, CarTransportationHub.S005_EVCars) annotation(
    Line(points = {{32, -80}, {224, -80}, {224, 0}}, color = {0, 0, 127}));
 connect(realExpression.y, BiogasCarsRateLogic.InputSimulationTime) annotation(
    Line(points = {{-182, -14}, {-150, -14}, {-150, 80}, {-83, 80}}, color = {0, 0, 127}));
 connect(realExpression.y, PetrolRateLogic.InputSimulationTime) annotation(
    Line(points = {{-182, -14}, {-150, -14}, {-150, 41}, {-83, 41}}, color = {0, 0, 127}));
 connect(realExpression.y, DieselRateLogic.InputSimulationTime) annotation(
    Line(points = {{-182, -14}, {-150, -14}, {-150, 8}, {-83, 8}}, color = {0, 0, 127}));
 connect(realExpression.y, PHeVRateLogic.InputSimulationTime) annotation(
    Line(points = {{-182, -14}, {-150, -14}, {-150, -28}, {-84, -28}}, color = {0, 0, 127}));
 connect(realExpression.y, ElectricRateLogic.InputSimulationTime) annotation(
    Line(points = {{-182, -14}, {-150, -14}, {-150, -71}, {-84, -71}}, color = {0, 0, 127}));
 connect(BiogasCars.VehicleNos, TotalCars.u[1]) annotation(
    Line(points = {{28, 74}, {40, 74}, {40, 110}, {140, 110}}, color = {95, 0, 191}));
 connect(PetrolCars.VehicleNos, TotalCars.u[2]) annotation(
    Line(points = {{28, 36}, {60, 36}, {60, 110}, {140, 110}}, color = {0, 0, 127}));
 connect(DieselCars.VehicleNos, TotalCars.u[3]) annotation(
    Line(points = {{30, 0}, {80, 0}, {80, 110}, {140, 110}}, color = {0, 0, 127}));
 connect(PHeVCars.VehicleNos, TotalCars.u[4]) annotation(
    Line(points = {{30, -34}, {100, -34}, {100, 110}, {140, 110}}, color = {95, 0, 191}));
 connect(ElectricCars.VehicleNos, TotalCars.u[5]) annotation(
    Line(points = {{32, -80}, {120, -80}, {120, 110}, {140, 110}}, color = {95, 0, 191}));
 connect(TotalCars.y, BiogasCars.TotalVehicles) annotation(
    Line(points = {{162, 110}, {180, 110}, {180, 70}, {28, 70}}, color = {0, 0, 127}));
 connect(TotalCars.y, PetrolCars.TotalVehicles) annotation(
    Line(points = {{162, 110}, {180, 110}, {180, 32}, {28, 32}}, color = {0, 0, 127}));
 connect(TotalCars.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{162, 110}, {180, 110}, {180, -4}, {30, -4}}, color = {0, 0, 127}));
 connect(TotalCars.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{162, 110}, {180, 110}, {180, -38}, {30, -38}}, color = {0, 0, 127}));
 connect(TotalCars.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{162, 110}, {180, 110}, {180, -84}, {32, -84}}, color = {0, 0, 127}));
end CarTransportationHub;
