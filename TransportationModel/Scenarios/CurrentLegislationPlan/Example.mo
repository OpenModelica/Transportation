within TransportationModel.Scenarios.CurrentLegislationPlan;

model Example
  TransportationModel.Components.VehiclePool Petrolcars(InitialLevel = 3057530)  annotation(
    Placement(visible = true, transformation(origin = {-32, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TransportationModel.Components.VehiclePool Biocars(InitialLevel = 42463)  annotation(
    Placement(visible = true, transformation(origin = {-69, 91}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  TransportationModel.Components.VehiclePool DieselCars(InitialLevel = 1704457)  annotation(
    Placement(visible = true, transformation(origin = {-69, 29}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  TransportationModel.Components.VehiclePool PHeVCars(InitialLevel = 16664)  annotation(
    Placement(visible = true, transformation(origin = {-25, -11}, extent = {{-21, -21}, {21, 21}}, rotation = 0)));
  TransportationModel.Components.VehiclePool ElectricCars annotation(
    Placement(visible = true, transformation(origin = {-67, -45}, extent = {{-23, -23}, {23, 23}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic BioCarsRateLogic annotation(
    Placement(visible = true, transformation(origin = {-180, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PetrolCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/PetrolDepletionCombiTable.txt"), Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/PetrolCombiTable.txt"))  annotation(
    Placement(visible = true, transformation(origin = {-180, 70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic DieselCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/DieselDepletionCombiTable.txt"), Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/DieselCombiTable.txt"))  annotation(
    Placement(visible = true, transformation(origin = {-180, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.RateLogic PHeVCarRateLogic(Depletion = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource//PHeVDepletionCombiTable.txt"), Growth = Modelica.Utilities.Files.loadResource("modelica://TransportationModel/Resource/PHeVLogicCombiTable.txt"))  annotation(
    Placement(visible = true, transformation(origin = {-180, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.ElectricVehicleRateLogic ElectricCarRateLogic annotation(
    Placement(visible = true, transformation(origin = {-180, 10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum ElectricCarCompensationRate(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {-112, -42}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCars(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {40, 118}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.Interfaces.Bus TransportationHubBus annotation(
    Placement(visible = true, transformation(origin = {202, 2}, extent = {{-20, -20}, {20, 20}}, rotation = -90), iconTransformation(origin = {202, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression StartSimlation(y = time)  annotation(
    Placement(visible = true, transformation(origin = {-252, 46}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(BioCarsRateLogic.GrowthRate, Biocars.InGrowthRate) annotation(
    Line(points = {{-168, 97}, {-110, 97}, {-110, 94}, {-88, 94}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.DepletionRate, Biocars.InDepletionRate) annotation(
    Line(points = {{-168, 90}, {-128, 90}, {-128, 88}, {-88, 88}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthRate, Petrolcars.InGrowthRate) annotation(
    Line(points = {{-168, 77}, {-100, 77}, {-100, 72}, {-51, 72}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.DepletionRate, Petrolcars.InDepletionRate) annotation(
    Line(points = {{-168, 70}, {-109.5, 70}, {-109.5, 68}, {-51, 68}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.GrowthRate, DieselCars.InGrowthRate) annotation(
    Line(points = {{-168, 57}, {-100, 57}, {-100, 32}, {-88, 32}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.DepletionRate, DieselCars.InDepletionRate) annotation(
    Line(points = {{-168, 50}, {-125, 50}, {-125, 26}, {-88, 26}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.GrowthRate, PHeVCars.InGrowthRate) annotation(
    Line(points = {{-168, 37}, {-100, 37}, {-100, -8}, {-45, -8}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.DepletionRate, PHeVCars.InDepletionRate) annotation(
    Line(points = {{-168, 30}, {-100, 30}, {-100, -13}, {-45, -13}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.DepletionRate, ElectricCars.InDepletionRate) annotation(
    Line(points = {{-168, 4}, {-100, 4}, {-100, -48}, {-89, -48}}, color = {0, 0, 127}));
  connect(ElectricCarCompensationRate.y, ElectricCars.InGrowthRate) annotation(
    Line(points = {{-105, -42}, {-88, -42}}, color = {0, 0, 127}));
  connect(BioCarsRateLogic.GrowthToElectricVehicle, ElectricCarCompensationRate.u[1]) annotation(
    Line(points = {{-168, 82}, {-140, 82}, {-140, -42}, {-118, -42}}, color = {0, 0, 127}));
  connect(PetrolCarRateLogic.GrowthToElectricVehicle, ElectricCarCompensationRate.u[2]) annotation(
    Line(points = {{-168, 63}, {-140, 63}, {-140, -42}, {-118, -42}}, color = {0, 0, 127}));
  connect(DieselCarRateLogic.GrowthToElectricVehicle, ElectricCarCompensationRate.u[3]) annotation(
    Line(points = {{-168, 42}, {-140, 42}, {-140, -42}, {-118, -42}}, color = {0, 0, 127}));
  connect(PHeVCarRateLogic.GrowthToElectricVehicle, ElectricCarCompensationRate.u[4]) annotation(
    Line(points = {{-168, 22}, {-140, 22}, {-140, -42}, {-118, -42}}, color = {0, 0, 127}));
  connect(Biocars.VehicleNos, TotalCars.u[1]) annotation(
    Line(points = {{-50, 90}, {-4, 90}, {-4, 118}, {30, 118}}, color = {95, 0, 191}));
  connect(Petrolcars.VehicleNos, TotalCars.u[2]) annotation(
    Line(points = {{-13, 69}, {17, 69}, {17, 118}, {30, 118}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, TotalCars.u[3]) annotation(
    Line(points = {{-50, 28}, {0, 28}, {0, 118}, {30, 118}}, color = {95, 0, 191}));
  connect(PHeVCars.VehicleNos, TotalCars.u[4]) annotation(
    Line(points = {{-6, -12}, {0, -12}, {0, 118}, {30, 118}}, color = {95, 0, 191}));
  connect(ElectricCars.VehicleNos, TotalCars.u[5]) annotation(
    Line(points = {{-46, -46}, {0, -46}, {0, 118}, {30, 118}}, color = {95, 0, 191}));
  connect(TotalCars.y, Biocars.TotalVehicles) annotation(
    Line(points = {{52, 118}, {52, 40}, {0, 40}, {0, 86}, {-50, 86}}, color = {0, 0, 127}));
  connect(TotalCars.y, Petrolcars.TotalVehicles) annotation(
    Line(points = {{52, 118}, {52, 40}, {0, 40}, {0, 65}, {-13, 65}}, color = {0, 0, 127}));
  connect(TotalCars.y, DieselCars.TotalVehicles) annotation(
    Line(points = {{52, 118}, {52, 40}, {0, 40}, {0, 24}, {-50, 24}}, color = {0, 0, 127}));
  connect(TotalCars.y, PHeVCars.TotalVehicles) annotation(
    Line(points = {{52, 118}, {52, 40}, {0, 40}, {0, -16}, {-6, -16}}, color = {0, 0, 127}));
  connect(TotalCars.y, ElectricCars.TotalVehicles) annotation(
    Line(points = {{52, 118}, {52, 40}, {0, 40}, {0, -50}, {-46, -50}}, color = {0, 0, 127}));
  connect(DieselCars.VehicleNos, TransportationHubBus.S003_DieselCars) annotation(
    Line(points = {{-50, 28}, {0, 28}, {0, 86}, {202, 86}, {202, 2}}, color = {95, 0, 191}));
  connect(PHeVCars.VehicleNos, TransportationHubBus.S004_PHeVCars) annotation(
    Line(points = {{-6, -12}, {0, -12}, {0, 84}, {202, 84}, {202, 2}}, color = {0, 0, 127}));
  connect(ElectricCars.VehicleNos, TransportationHubBus.S005_ElectricCars) annotation(
    Line(points = {{-46, -46}, {0, -46}, {0, 82}, {202, 82}, {202, 2}}, color = {0, 0, 127}));
  connect(StartSimlation.y, BioCarsRateLogic.InputSimulationTime) annotation(
    Line(points = {{-240, 46}, {-212, 46}, {-212, 90}, {-192, 90}}, color = {0, 0, 127}));
  connect(StartSimlation.y, PetrolCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-240, 46}, {-212, 46}, {-212, 70}, {-192, 70}}, color = {0, 0, 127}));
  connect(StartSimlation.y, DieselCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-240, 46}, {-212, 46}, {-212, 50}, {-192, 50}}, color = {0, 0, 127}));
  connect(StartSimlation.y, PHeVCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-240, 46}, {-212, 46}, {-212, 30}, {-192, 30}}, color = {0, 0, 127}));
  connect(StartSimlation.y, ElectricCarRateLogic.InputSimulationTime) annotation(
    Line(points = {{-240, 46}, {-212, 46}, {-212, 10}, {-192, 10}}, color = {0, 0, 127}));
  connect(ElectricCarRateLogic.GrowthRate, ElectricCarCompensationRate.u[5]) annotation(
    Line(points = {{-168, 16}, {-140, 16}, {-140, -42}, {-118, -42}}, color = {0, 0, 127}));
  connect(Biocars.VehicleNos, TransportationHubBus.S001_BioGas) annotation(
    Line(points = {{-50, 90}, {202, 90}, {202, 2}}, color = {95, 0, 191}));
  connect(Petrolcars.VehicleNos, TransportationHubBus.S002_PetrolCars) annotation(
    Line(points = {{-13, 69}, {0, 69}, {0, 88}, {202, 88}, {202, 2}}, color = {95, 0, 191}));
  annotation(
    Diagram(graphics = {Line(origin = {-158, 36}, points = {{0, 0}})}, coordinateSystem(extent = {{-200, -100}, {200, 100}})));
end Example;
