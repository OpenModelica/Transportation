within TransportationModel.Scenarios.BusinessAsUsual;

model CarEnvironmentHub
  outer TransportationModel.TransportationRecords.TransportationParameter_S1 TP;
  TransportationModel.Interfaces.Bus TransportationHubBus annotation(
    Placement(visible = true, transformation(origin = {-102, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-102, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Interfaces.Bus DisplayHub annotation(
    Placement(visible = true, transformation(origin = {98, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {98, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalVehicles(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {0, 62}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Math.Gain BiogasEmission(k = TP.BiogasCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-76, -18}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PetrolEmission(k = TP.AverageKMCarRuns * TP.PetrolCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-46, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselEmission(k = TP.DieselCarCO2EmissionperYear * TP.AverageKMCarRuns)  annotation(
    Placement(visible = true, transformation(origin = {-76, -54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PHeVEmission(k = TP.AverageKMCarRuns * TP.PHeVCarCO2MultiplicationFactor * TP.DieselCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-46, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain EVEmission(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {-76, -90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum totalCO2(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {0, -46}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
equation
  connect(TransportationHubBus.S001_BioCars, TotalVehicles.u[1]) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, 62}, {-6, 62}}));
  connect(TransportationHubBus.S002_PetrolCars, TotalVehicles.u[2]) annotation(
    Line(points = {{-102, 0}, {-98, 0}, {-98, 62}, {-6, 62}}));
  connect(TransportationHubBus.S003_DieselCars, TotalVehicles.u[3]) annotation(
    Line(points = {{-102, 0}, {-96, 0}, {-96, 62}, {-6, 62}}));
  connect(TransportationHubBus.S004_PHeVCars, TotalVehicles.u[4]) annotation(
    Line(points = {{-102, 0}, {-94, 0}, {-94, 62}, {-6, 62}}));
  connect(TransportationHubBus.S005_EVCars, TotalVehicles.u[5]) annotation(
    Line(points = {{-102, 0}, {-92, 0}, {-92, 62}, {-6, 62}}));
  connect(TotalVehicles.y, DisplayHub.S006_TotalCars) annotation(
    Line(points = {{8, 62}, {98, 62}, {98, 0}}, color = {0, 0, 127}));
  connect(TransportationHubBus, DisplayHub) annotation(
    Line(points = {{-102, 0}, {98, 0}}, thickness = 0.5));
  connect(TransportationHubBus.S001_BioCars, BiogasEmission.u) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, -18}, {-88, -18}}, color = {0, 0, 127}));
  connect(TransportationHubBus.S002_PetrolCars, PetrolEmission.u) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, -30}, {-58, -30}}, color = {0, 0, 127}));
  connect(TransportationHubBus.S003_DieselCars, DieselEmission.u) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, -54}, {-88, -54}}, color = {0, 0, 127}));
  connect(TransportationHubBus.S004_PHeVCars, PHeVEmission.u) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, -70}, {-58, -70}}, color = {0, 0, 127}));
  connect(TransportationHubBus.S005_EVCars, EVEmission.u) annotation(
    Line(points = {{-102, 0}, {-100, 0}, {-100, -90}, {-88, -90}}, color = {0, 0, 127}));
  connect(BiogasEmission.y, totalCO2.u[1]) annotation(
    Line(points = {{-64, -18}, {-18, -18}, {-18, -46}, {-6, -46}}, color = {0, 0, 127}));
  connect(PetrolEmission.y, totalCO2.u[2]) annotation(
    Line(points = {{-34, -30}, {-18, -30}, {-18, -46}, {-6, -46}}, color = {0, 0, 127}));
  connect(DieselEmission.y, totalCO2.u[3]) annotation(
    Line(points = {{-64, -54}, {-18, -54}, {-18, -46}, {-6, -46}}, color = {0, 0, 127}));
  connect(PHeVEmission.y, totalCO2.u[4]) annotation(
    Line(points = {{-34, -70}, {-18, -70}, {-18, -46}, {-6, -46}}, color = {0, 0, 127}));
  connect(EVEmission.y, totalCO2.u[5]) annotation(
    Line(points = {{-64, -90}, {-18, -90}, {-18, -46}, {-6, -46}}, color = {0, 0, 127}));
  connect(totalCO2.y, DisplayHub.S007_TotalCO2) annotation(
    Line(points = {{8, -46}, {98, -46}, {98, 0}}, color = {0, 0, 127}));
end CarEnvironmentHub;
