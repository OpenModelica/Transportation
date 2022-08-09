within TransportationModel.Scenarios.Scenario1;

model TransportationHub_1
  extends TransportationModel.Icons.TransportationIcon;
  outer TransportationParameter TP;
  //  TP.flag1 ;
  TransportationModel.Interfaces.Bus VehiclesPoolBus annotation(
    Placement(visible = true, transformation(origin = {196, 42}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {110, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 90)));
  //Cars
  TransportationModel.Components.VehiclePool BioCars(ConversionPercentage = TP.ConversionPercentageforBioCar, ConversionYear = TP.ConversionYearforBioCar, InitialLevel = TP.InitialLevelofBiogasCars, Trigger = TP.BiogasCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-72, 126}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  TransportationModel.Components.VehiclePool PetrolCars(ConversionPercentage = TP.ConversionPercentageforPetrolCar, ConversionYear = TP.ConversionYearforPetrolCar, InitialLevel = TP.InitialLevelofPetrolCar, Trigger = TP.PetrolCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-99, 87}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.VehiclePool DieselCars(ConversionPercentage = TP.ConversionPercentageforDieselCar, ConversionYear = TP.ConversionYearforDieselCar, InitialLevel = TP.InitialLevelofDieselCar, Trigger = TP.DieselCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-124, 54}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  TransportationModel.Components.VehiclePool PHeVCars(ConversionPercentage = TP.ConversionPercentageforPHeVCar, ConversionYear = TP.ConversionYearforPHeVCar, InitialLevel = TP.InitialLevelofPHeVCar, Trigger = TP.PHeVCars_flag) annotation(
    Placement(visible = true, transformation(origin = {-99, 13}, extent = {{-15, -15}, {15, 15}}, rotation = 0)));
  TransportationModel.Components.ElectricalVehiclePool ElectricCars(InitialLevel = TP.InitialLevelofEV) annotation(
    Placement(visible = true, transformation(origin = {-72, -16}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  //Cars Rate Equations
  TransportationModel.LogicBox.RateLogic BioCarsRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/BioCarsDepletionRate.txt"), FossilBanYear = TP.BiogasCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/BioCarsGrowthRate.txt"), CombitableFlag = TP.CarBiogasRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-212, 132}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PetrolCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolCarsDepletionRate.txt"), FossilBanYear = TP.PetrolCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PetrolCarsGrowthRate.txt"), CombitableFlag = TP.CarPetrolRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-212, 94}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic DieselCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/DieselCarsDepletionRate.txt"), FossilBanYear = TP.DieselCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/DieselCarsGrowthRate.txt"), CombitableFlag = TP.CarDieselRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-212, 52}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PHeVCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PHeVCarsDepletionRate.txt"), FossilBanYear = TP.PHeVCarBanYear, Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/PHeVCarsGrowthRate.txt"), CombitableFlag = TP.CarPHeVRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-212, 10}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum GrowthinElectric_Cars_AfterFossilBan(nu = 9) annotation(
    Placement(visible = true, transformation(origin = {-118, -42}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic ElectricCarRateLogic(Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/ElectricCarsGrowthRate.txt"), depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/Case1/ElectricCarsDepletionRate.txt"), CombitableFlag = TP.CarElectricRateLogicFlag) annotation(
    Placement(visible = true, transformation(origin = {-212, -32}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  //Light Truck
  //Light Truck Equations
  //Heavy Trucks
  //Heavy Truck Equations
  //Total Vehicles
  Modelica.Blocks.Math.MultiSum TotalCars(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {28, 166}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  //Buses
  //Buses Rate Equations
  TransportationModel.LogicBox.ConversionProgramme BioCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-165, 135}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum DepletionInCars(nu = 5) annotation(
    Placement(visible = true, transformation(origin = {-118, -66}, extent = {{-8, -8}, {8, 8}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme PetrolCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-165, 103}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme DieselCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-165, 65}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  TransportationModel.LogicBox.ConversionProgramme PHeVCarsconversionProgramme annotation(
    Placement(visible = true, transformation(origin = {-165, 25}, extent = {{-7, -7}, {7, 7}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum(nu = 4) annotation(
    Placement(visible = true, transformation(origin = {-49, -57}, extent = {{5, -5}, {-5, 5}}, rotation = 0)));
protected
  Modelica.Blocks.Sources.RealExpression StartSimulationTime(y = time) annotation(
    Placement(visible = true, transformation(origin = {-325, 52}, extent = {{-23, -12}, {23, 12}}, rotation = 0)));
equation
  connect(BioCars.VehicleNos, VehiclesPoolBus.S001_BioCars) annotation(
    Line(points = {{-57, 126}, {196, 126}, {196, 42}}, color = {170, 0, 0}));
  connect(PetrolCars.VehicleNos, VehiclesPoolBus.S002_PetrolCars) annotation(
    Line(points = {{-85, 87}, {196, 87}, {196, 42}}, color = {170, 0, 0}));
  connect(DieselCars.VehicleNos, VehiclesPoolBus.S003_DieselCars) annotation(
    Line(points = {{-111, 54}, {196, 54}, {196, 42}}, color = {170, 0, 0}));
  connect(PHeVCars.VehicleNos, VehiclesPoolBus.S004_PHeVCars) annotation(
    Line(points = {{-85, 13}, {196, 13}, {196, 42}}, color = {170, 0, 0}));
  connect(ElectricCars.VehicleNos, VehiclesPoolBus.S005_ElectricCars) annotation(
    Line(points = {{-57, -17}, {196, -17}, {196, 42}}, color = {170, 0, 0}));
  connect(BioCarsRateLogic.GrowthRate, BioCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 138}, {-187, 138}, {-187, 140}, {-174, 140}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.DepletionRate, BioCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, 132}, {-188, 132}, {-188, 130}, {-174, 130}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[1]) annotation(
    Line(points = {{-202, 126}, {-188, 126}, {-188, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(BioCars.ToEV, multiSum.u[1]) annotation(
    Line(points = {{-55, 124}, {-36, 124}, {-36, -57}, {-44, -57}}, color = {0, 0, 127}));
  connect(PetrolCars.ToEV, multiSum.u[2]) annotation(
    Line(points = {{-83, 85}, {-36, 85}, {-36, -57}, {-44, -57}}, color = {0, 0, 127}));
  connect(DieselCars.ToEV, multiSum.u[3]) annotation(
    Line(points = {{-110, 52}, {-36, 52}, {-36, -57}, {-44, -57}}, color = {0, 0, 127}));
  connect(PHeVCars.ToEV, multiSum.u[4]) annotation(
    Line(points = {{-84, 12}, {-36, 12}, {-36, -57}, {-44, -57}}, color = {0, 0, 127}));
  connect(multiSum.y, ElectricCars.FromFossilVehicles) annotation(
    Line(points = {{-55, -57}, {-83, -57}, {-83, -22}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[2]) annotation(
    Line(points = {{-202, 88}, {-188, 88}, {-188, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[3]) annotation(
    Line(points = {{-202, 46}, {-188, 46}, {-188, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.GrowthToElectricVehicle, GrowthinElectric_Cars_AfterFossilBan.u[4]) annotation(
    Line(points = {{-202, 4}, {-188, 4}, {-188, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.GrowthRate, GrowthinElectric_Cars_AfterFossilBan.u[5]) annotation(
    Line(points = {{-202, -28}, {-188, -28}, {-188, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, ElectricCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-300, 52}, {-262, 52}, {-262, -32}, {-222, -32}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, BioCarsRateLogic.InputSimulationTime) annotation(
    Line(points = {{-300, 52}, {-262, 52}, {-262, 132}, {-222, 132}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, PetrolCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-300, 52}, {-262, 52}, {-262, 94}, {-222, 94}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, DieselCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-300, 52}, {-222, 52}}, color = {0, 0, 127}));
  connect(StartSimulationTime.y, PHeVCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-300, 52}, {-262, 52}, {-262, 10}, {-222, 10}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthRate, PetrolCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 100}, {-188, 100}, {-188, 108}, {-174, 108}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.DepletionRate, PetrolCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, 94}, {-188, 94}, {-188, 98}, {-174, 98}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, PetrolCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-84, 88}, {-78, 88}, {-78, 102}, {-157, 102}, {-157, 103}}, color = {95, 0, 191}));
  connect(DieselCars.VehicleNos, DieselCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-111, 54}, {-110, 54}, {-110, 65}, {-157, 65}}, color = {95, 0, 191}));
  connect(DieselCarRateLogic.GrowthRate, DieselCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 58}, {-188, 58}, {-188, 70}, {-174, 70}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.DepletionRate, DieselCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, 52}, {-188, 52}, {-188, 60}, {-174, 60}}, color = {0, 0, 127}));
  connect(PHeVCars.VehicleNos, PHeVCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-84, 14}, {-74, 14}, {-74, 24}, {-154, 24}, {-154, 25}, {-157, 25}}, color = {95, 0, 191}));
  connect(PHeVCarRateLogic.GrowthRate, PHeVCarsconversionProgramme.GrowthRate) annotation(
    Line(points = {{-202, 16}, {-188, 16}, {-188, 30}, {-174, 30}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.DepletionRate, PHeVCarsconversionProgramme.DepletionRate) annotation(
    Line(points = {{-202, 10}, {-188, 10}, {-188, 20}, {-174, 20}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.DepletionRate, DepletionInCars.u[1]) annotation(
    Line(points = {{-202, -36}, {-188, -36}, {-188, -66}, {-126, -66}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[6]) annotation(
    Line(points = {{-158, 132}, {-150, 132}, {-150, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[7]) annotation(
    Line(points = {{-158, 100}, {-150, 100}, {-150, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[8]) annotation(
    Line(points = {{-158, 62}, {-150, 62}, {-150, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.ToElectricVehicleGrowth, GrowthinElectric_Cars_AfterFossilBan.u[9]) annotation(
    Line(points = {{-157, 21.5}, {-150, 21.5}, {-150, -42}, {-126, -42}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[2]) annotation(
    Line(points = {{-158, 18}, {-150, 18}, {-150, -66}, {-126, -66}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[3]) annotation(
    Line(points = {{-158, 58}, {-150, 58}, {-150, -66}, {-126, -66}}, color = {0, 0, 127}));
  connect(BioCars.VehicleNos, BioCarsconversionProgramme.VehicleInput) annotation(
    Line(points = {{-57, 126}, {-46, 126}, {-46, 136}, {-156, 136}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[4]) annotation(
    Line(points = {{-158, 96}, {-150, 96}, {-150, -66}, {-126, -66}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.ToElectricVehicleDepletion, DepletionInCars.u[5]) annotation(
    Line(points = {{-158, 128}, {-150, 128}, {-150, -66}, {-126, -66}}, color = {0, 0, 127}));
  connect(GrowthinElectric_Cars_AfterFossilBan.y, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-109, -42}, {-98, -42}, {-98, -14}, {-88, -14}}, color = {0, 0, 127}));
  connect(DepletionInCars.y, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-108, -66}, {-98, -66}, {-98, -18}, {-88, -18}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.VehicleGrowhRate, BioCars.InGrowthRate) annotation(
    Line(points = {{-158, 142}, {-112, 142}, {-112, 128}, {-87, 128}}, color = {0, 0, 127}));
  connect(BioCarsconversionProgramme.VehicleDepletionRate, BioCars.InDepletionRate) annotation(
    Line(points = {{-158, 138}, {-112, 138}, {-112, 124}, {-87, 124}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.VehicleGrowhRate, PetrolCars.InGrowthRate) annotation(
    Line(points = {{-158, 110}, {-124, 110}, {-124, 88}, {-114, 88}}, color = {0, 0, 127}));
  connect(PetrolCarsconversionProgramme.VehicleDepletionRate, PetrolCars.InDepletionRate) annotation(
    Line(points = {{-158, 106}, {-124, 106}, {-124, 86}, {-114, 86}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.VehicleGrowhRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-158, 72}, {-142, 72}, {-142, 56}, {-138, 56}}, color = {0, 0, 127}));
  connect(DieselCarsconversionProgramme.VehicleDepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-158, 68}, {-142, 68}, {-142, 52}, {-138, 52}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.VehicleGrowhRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-158, 32}, {-124, 32}, {-124, 14}, {-114, 14}}, color = {0, 0, 127}));
  connect(PHeVCarsconversionProgramme.VehicleDepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-158, 28}, {-124, 28}, {-124, 12}, {-114, 12}}, color = {0, 0, 127}));
  connect(BioCars.VehicleNos, TotalCars.u[1]) annotation(
    Line(points = {{-56, 126}, {-10, 126}, {-10, 166}, {18, 166}}, color = {0, 0, 127}));
  connect(TotalCars.y, BioCars.TotalVehicles) annotation(
    Line(points = {{40, 166}, {58, 166}, {58, 122}, {-56, 122}}, color = {0, 0, 127}));
  connect(PetrolCars.VehicleNos, TotalCars.u[2]) annotation(
    Line(points = {{-84, 88}, {-10, 88}, {-10, 166}, {18, 166}}, color = {0, 0, 127}));
  connect(TotalCars.y, PetrolCars.TotalVehicles) annotation(
    Line(points = {{40, 166}, {58, 166}, {58, 84}, {-84, 84}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, TotalCars.u[3]) annotation(
    Line(points = {{-110, 54}, {-10, 54}, {-10, 166}, {18, 166}}, color = {95, 0, 191}));
  connect(TotalCars.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{40, 166}, {58, 166}, {58, 50}, {-110, 50}}, color = {0, 0, 127}));
  connect(PHeVCars.VehicleNos, TotalCars.u[4]) annotation(
    Line(points = {{-84, 14}, {-10, 14}, {-10, 166}, {18, 166}}, color = {0, 0, 127}));
  connect(TotalCars.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{40, 166}, {58, 166}, {58, 10}, {-84, 10}}, color = {0, 0, 127}));
  connect(ElectricCars.VehicleNos, TotalCars.u[5]) annotation(
    Line(points = {{-56, -16}, {-10, -16}, {-10, 166}, {18, 166}}, color = {95, 0, 191}));
  connect(TotalCars.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{40, 166}, {58, 166}, {58, -20}, {-56, -20}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(extent = {{-220, -190}, {220, 190}}, initialScale = 0.1, grid = {0.5, 0.5})),
    Icon(graphics = {Text(origin = {0, -119}, extent = {{-100, 19}, {100, -19}}, textString = "%name%", fontSize = 8)}));
end TransportationHub_1;
