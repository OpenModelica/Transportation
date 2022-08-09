within TransportationModel.Scenarios.CurrentLegislationPlan;

model EnvironmentHub
  extends TransportationModel.Icons.EnvironmentIcon;
  outer TransportationModel.TransportationRecords.TransportationParameter_S2 TP;
 
  TransportationModel.Interfaces.Bus TransportationHubPort annotation(
    Placement(visible = true, transformation(origin = {-98, 11}, extent = {{-20, -20}, {20, 20}}, rotation = 90), iconTransformation(origin = {-100, 2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  TransportationModel.Interfaces.Bus DisplayHubPort annotation(
    Placement(visible = true, transformation(origin = {100, 11}, extent = {{-20, 20}, {20, -20}}, rotation = 90), iconTransformation(origin = {98, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalVehicles(nu = 12) annotation(
    Placement(visible = true, transformation(origin = {-8, 82}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCO2(nu = 12) annotation(
    Placement(visible = true, transformation(origin = {-7, -56}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PetrolEmission(k = TP.AverageKMCarRuns * TP.PetrolCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, 4}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselEmission(k = TP.DieselCarCO2EmissionperYear * TP.AverageKMCarRuns)  annotation(
    Placement(visible = true, transformation(origin = {-67, -6}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain PHeVEmission(k = TP.AverageKMCarRuns * TP.PHeVCarCO2MultiplicationFactor * TP.DieselCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, -14}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricalCarsEmission(k = TP.ElectricCarCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-67, -22}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightElectricTruckEmission(k = TP.LightElectricTruckCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, -30}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain LightTruckEmission(k = TP.LightTruckCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-67, -38}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyTruckEmission(k = TP.HeavyTruckCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, -47}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HeavyElectricTruckEmission(k = TP.HeavyElectricTruckCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-67, -56}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain DieselBusEmission(k = TP.DieselBusCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, -64}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain ElectricBusEmission(k = TP.ElectricBusCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-66.5, -72.5}, extent = {{-3.5, -3.5}, {3.5, 3.5}}, rotation = 0)));
  Modelica.Blocks.Math.Gain GasBusEmission(k = TP.GasBusCO2EmissionperYear)  annotation(
    Placement(visible = true, transformation(origin = {-57, -84}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
  Modelica.Blocks.Math.Gain HydrogenBus(k = TP.PetrolBusCO2EmissionperYear) annotation(
    Placement(visible = true, transformation(origin = {-67, -94}, extent = {{-3, -3}, {3, 3}}, rotation = 0)));
equation
//Total Vehicles
  connect(TransportationHubPort.S001_Petrol, TotalVehicles.u[1]) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, 82}, {-18, 82}}));
  connect(TransportationHubPort.S002_Diesel, TotalVehicles.u[2]) annotation(
    Line(points = {{-98, 11}, {-98, 82}, {-18, 82}}));
  connect(TransportationHubPort.S003_PHeV, TotalVehicles.u[3]) annotation(
    Line(points = {{-98, 11}, {-96, 11}, {-96, 82}, {-18, 82}}));
  connect(TransportationHubPort.S004_Electric, TotalVehicles.u[4]) annotation(
    Line(points = {{-98, 11}, {-94, 11}, {-94, 82}, {-18, 82}}));
  connect(TransportationHubPort.S008_LightTruck, TotalVehicles.u[5]) annotation(
    Line(points = {{-98, 11}, {-92, 11}, {-92, 82}, {-18, 82}}));
  connect(TransportationHubPort.S007_LightTruckElectric, TotalVehicles.u[6]) annotation(
    Line(points = {{-98, 11}, {-90, 11}, {-90, 82}, {-18, 82}}));
  connect(TransportationHubPort.S009_HeavyTruck, TotalVehicles.u[7]) annotation(
    Line(points = {{-98, 11}, {-88, 11}, {-88, 82}, {-18, 82}}));
  connect(TransportationHubPort.S010_HeavyTruckElectric, TotalVehicles.u[8]) annotation(
    Line(points = {{-98, 11}, {-86, 11}, {-86, 82}, {-18, 82}}));
  connect(TransportationHubPort.S011_DieselBus, TotalVehicles.u[9]) annotation(
    Line(points = {{-98, 11}, {-84, 11}, {-84, 82}, {-18, 82}}));
  connect(TransportationHubPort.S012_ElectricBus, TotalVehicles.u[10]) annotation(
    Line(points = {{-98, 11}, {-82, 11}, {-82, 82}, {-18, 82}}));
  connect(TransportationHubPort.S013_GasBus, TotalVehicles.u[11]) annotation(
    Line(points = {{-98, 11}, {-80, 11}, {-80, 82}, {-18, 82}}));
  connect(TotalVehicles.y, DisplayHubPort.S005_TotalVehicles) annotation(
    Line(points = {{3.7, 82}, {99.7, 82}, {99.7, 11}}, color = {0, 0, 127}));
//CO2
  connect(TransportationHubPort.S001_Petrol, PetrolEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, 4}, {-61, 4}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S002_Diesel, DieselEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -6}, {-71, -6}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S003_PHeV, PHeVEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -14}, {-61, -14}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S004_Electric, ElectricalCarsEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -22}, {-71, -22}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S007_LightTruckElectric, LightElectricTruckEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -30}, {-61, -30}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S009_HeavyTruck, HeavyTruckEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -47}, {-61, -47}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S011_DieselBus, DieselBusEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -64}, {-61, -64}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S012_ElectricBus, ElectricBusEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -72.5}, {-71, -72.5}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S013_GasBus, GasBusEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -84}, {-61, -84}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S008_LightTruck, LightTruckEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -38}, {-71, -38}}, color = {0, 0, 127}));
  connect(TotalCO2.y, DisplayHubPort.S006_TotalCO2) annotation(
    Line(points = {{5, -56}, {99.7, -56}, {99.7, 11}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S010_HeavyTruckElectric, HeavyElectricTruckEmission.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -56}, {-71, -56}}, color = {0, 0, 127}));
 connect(TransportationHubPort.S014_PetrolBus, HydrogenBus.u) annotation(
    Line(points = {{-98, 11}, {-100, 11}, {-100, -94}, {-71, -94}}, color = {0, 0, 127}));
  connect(TransportationHubPort.S014_PetrolBus, TotalVehicles.u[12]) annotation(
    Line(points = {{-98, 11}, {-78, 11}, {-78, 82}, {-18, 82}}));
  connect(TransportationHubPort, DisplayHubPort) annotation(
    Line(points = {{-98, 11}, {100, 11}}, thickness = 0.5));
 connect(PetrolEmission.y, TotalCO2.u[1]) annotation(
    Line(points = {{-54, 4}, {-28, 4}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(DieselEmission.y, TotalCO2.u[2]) annotation(
    Line(points = {{-64, -6}, {-28, -6}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(PHeVEmission.y, TotalCO2.u[3]) annotation(
    Line(points = {{-54, -14}, {-28, -14}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(ElectricalCarsEmission.y, TotalCO2.u[4]) annotation(
    Line(points = {{-64, -22}, {-28, -22}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(LightElectricTruckEmission.y, TotalCO2.u[5]) annotation(
    Line(points = {{-54, -30}, {-28, -30}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(LightTruckEmission.y, TotalCO2.u[6]) annotation(
    Line(points = {{-64, -38}, {-28, -38}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(HeavyTruckEmission.y, TotalCO2.u[7]) annotation(
    Line(points = {{-54, -47}, {-28, -47}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(HeavyElectricTruckEmission.y, TotalCO2.u[8]) annotation(
    Line(points = {{-64, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(DieselBusEmission.y, TotalCO2.u[9]) annotation(
    Line(points = {{-54, -64}, {-28, -64}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(ElectricBusEmission.y, TotalCO2.u[10]) annotation(
    Line(points = {{-63, -72}, {-28, -72}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(GasBusEmission.y, TotalCO2.u[11]) annotation(
    Line(points = {{-54, -84}, {-28, -84}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
 connect(HydrogenBus.y, TotalCO2.u[12]) annotation(
    Line(points = {{-64, -94}, {-28, -94}, {-28, -56}, {-17, -56}}, color = {0, 0, 127}));
  annotation(
    Diagram(coordinateSystem(grid = {1, 1})));
end EnvironmentHub;
