within TransportationModel.Scenarios.CurrentLegislationPlan;

model Example2
  Interfaces.Bus TransportationHub annotation(
    Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 0}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Interfaces.Bus DisplayHub annotation(
    Placement(visible = true, transformation(origin = {100, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {100, -2}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalVehicle(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {-6, 62}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum TotalCO2(nu = 5)  annotation(
    Placement(visible = true, transformation(origin = {-6, -44}, extent = {{-6, -6}, {6, 6}}, rotation = 0)));
equation
  connect(TransportationHub, DisplayHub) annotation(
    Line(points = {{-100, 0}, {100, 0}, {100, -2}}, thickness = 0.5));
  connect(TransportationHub.S002_PetrolCars, TotalVehicle.u[1]) annotation(
    Line(points = {{-100, 0}, {-98, 0}, {-98, 62}, {-12, 62}}));
  connect(TransportationHub.S003_DieselCars, TotalVehicle.u[2]) annotation(
    Line(points = {{-100, 0}, {-96, 0}, {-96, 62}, {-12, 62}}));
  connect(TransportationHub.S004_PHeVCars, TotalVehicle.u[3]) annotation(
    Line(points = {{-100, 0}, {-94, 0}, {-94, 62}, {-12, 62}}));
  connect(TransportationHub.S005_ElectricCars, TotalVehicle.u[4]) annotation(
    Line(points = {{-100, 0}, {-92, 0}, {-92, 62}, {-12, 62}}));
  connect(TransportationHub.S001_BioGas, TotalCO2.u[1]) annotation(
    Line(points = {{-100, 0}, {-100, -44}, {-12, -44}}));
  connect(TransportationHub.S002_PetrolCars, TotalCO2.u[2]) annotation(
    Line(points = {{-100, 0}, {-98, 0}, {-98, -44}, {-12, -44}}));
  connect(TransportationHub.S003_DieselCars, TotalCO2.u[3]) annotation(
    Line(points = {{-100, 0}, {-96, 0}, {-96, -44}, {-12, -44}}));
  connect(TransportationHub.S004_PHeVCars, TotalCO2.u[4]) annotation(
    Line(points = {{-100, 0}, {-94, 0}, {-94, -44}, {-12, -44}}));
  connect(TransportationHub.S005_ElectricCars, TotalCO2.u[5]) annotation(
    Line(points = {{-100, 0}, {-92, 0}, {-92, -44}, {-12, -44}}));
  connect(TotalVehicle.y, DisplayHub.S006) annotation(
    Line(points = {{2, 62}, {100, 62}, {100, -2}}, color = {0, 0, 127}));
  connect(TotalCO2.y, DisplayHub.S007_CO2) annotation(
    Line(points = {{2, -44}, {100, -44}, {100, -2}}, color = {0, 0, 127}));
  connect(TransportationHub.S001_BioGas, TotalVehicle.u[5]) annotation(
    Line(points = {{-100, 0}, {-100, 62}, {-12, 62}}));
protected
end Example2;
