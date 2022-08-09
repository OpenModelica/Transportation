within TransportationModel.Components;

model ElectricBusPool
  extends TransportationModel.Icons.BusIcons;
  
  SystemDynamics.Rates.Rate_1 GenerationRate annotation(
    Placement(visible = true, transformation(origin = {-57, 16}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  SystemDynamics.Sources.Source source annotation(
    Placement(visible = true, transformation(origin = {-100, 16}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Sources.Sink sink annotation(
    Placement(visible = true, transformation(origin = {89, 17}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  TransportationModel.Interfaces.SignalOutPort VehicleNos annotation(
    Placement(visible = true, transformation(origin = {0, -4}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {95, -5}, extent = {{5, -5}, {-5, 5}}, rotation = 180)));
  Modelica.Blocks.Interfaces.RealOutput InGrowthRate annotation(
    Placement(visible = true, transformation(origin = {98, -37}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput InDepletionRate annotation(
    Placement(visible = true, transformation(origin = {98, -59}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, -11}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Levels.Level VehicleLevel(x0 = InitialLevel) annotation(
    Placement(visible = true, transformation(origin = {1.5, 51.5}, extent = {{-20.5, -20.5}, {20.5, 20.5}}, rotation = 0)));
  SystemDynamics.Rates.Rate_1 DepletionRate annotation(
    Placement(visible = true, transformation(origin = {59.5, 16.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput TotalVehicles annotation(
    Placement(visible = true, transformation(origin = {-1, -89}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {95, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  parameter Real InitialLevel;

  SystemDynamics.Auxiliary.Prod_2 prod_2 annotation(
    Placement(visible = true, transformation(origin = {-58, -71}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Auxiliary.Prod_2 prod_21 annotation(
    Placement(visible = true, transformation(origin = {60, -72}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput FromFossilVehicle annotation(
    Placement(visible = true, transformation(origin = {-92, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {-71, -39}, extent = {{10, -10}, {-10, 10}}, rotation = -90)));
  Modelica.Blocks.Math.MultiSum multiSum(nu = 2)  annotation(
    Placement(visible = true, transformation(origin = {-57, -28}, extent = {{-6, -6}, {6, 6}}, rotation = 90)));
equation
  InGrowthRate = prod_2.u1;
  InDepletionRate = prod_21.u1;
  
  connect(source.MassInPort1, GenerationRate.y) annotation(
    Line(points = {{-89, 16}, {-64, 16}}, color = {0, 0, 127}));
  connect(DepletionRate.y1, sink.MassInPort1) annotation(
    Line(points = {{66.25, 16.5}, {77.75, 16.5}, {77.75, 17}, {78, 17}}, color = {95, 0, 191}));
  connect(GenerationRate.y1, VehicleLevel.u1) annotation(
    Line(points = {{-50, 16}, {-36, 16}, {-36, 51.5}, {-21, 51.5}}, color = {95, 0, 191}));
  connect(VehicleLevel.y3, VehicleNos) annotation(
    Line(points = {{1.5, 38}, {1.5, -2}, {0, -2}, {0, -4}}, color = {0, 0, 127}));
  connect(VehicleLevel.u2, DepletionRate.y) annotation(
    Line(points = {{24, 51.5}, {31, 51.5}, {31, 17}, {53, 17}}, color = {0, 0, 127}));
  connect(TotalVehicles, prod_21.u2) annotation(
    Line(points = {{-1, -89}, {-1, -72}, {53, -72}}, color = {0, 0, 127}));
  connect(TotalVehicles, prod_2.u2) annotation(
    Line(points = {{-1, -89}, {-1, -71}, {-51, -71}}, color = {0, 0, 127}));
  connect(prod_21.y, DepletionRate.u) annotation(
    Line(points = {{60, -65}, {60, 2}}, color = {0, 0, 127}));
  connect(multiSum.y, GenerationRate.u) annotation(
    Line(points = {{-57, -21}, {-57, 1}}, color = {0, 0, 127}));
  connect(prod_2.y, multiSum.u[1]) annotation(
    Line(points = {{-58, -64}, {-57, -64}, {-57, -34}}, color = {0, 0, 127}));
  connect(FromFossilVehicle, multiSum.u[2]) annotation(
    Line(points = {{-92, -70}, {-92, -46}, {-57, -46}, {-57, -34}}, color = {0, 0, 127}));
  annotation(
    Icon(coordinateSystem(grid = {1, 1}), graphics = {Text(origin = {3.5, -68}, extent = {{-95.5, 29}, {95.5, -29}}, textString = "%name", fontSize = 12)}),
    Diagram(coordinateSystem(grid = {1, 1})));
end ElectricBusPool;
