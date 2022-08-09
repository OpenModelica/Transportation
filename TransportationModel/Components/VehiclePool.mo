within TransportationModel.Components;

model VehiclePool
  extends TransportationModel.Icons.CarsIcon;
  parameter Boolean Trigger = false;
  parameter Real ConversionYear = 2022;
  Real numberofConvertedVehicle;
  parameter Real ConversionPercentage = 0.25;
  parameter Real InitialLevel;
  SystemDynamics.Rates.Rate_1 GenerationRate annotation(
    Placement(visible = true, transformation(origin = {-73, 100}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  SystemDynamics.Sources.Source source annotation(
    Placement(visible = true, transformation(origin = {-119, 128}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Sources.Sink sink annotation(
    Placement(visible = true, transformation(origin = {135, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput InGrowthRate annotation(
    Placement(visible = true, transformation(origin = {-105, -131}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput InDepletionRate annotation(
    Placement(visible = true, transformation(origin = {-104, -100}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, -11}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Levels.Level VehicleLevel(x0 = InitialLevel) annotation(
    Placement(visible = true, transformation(origin = {-0.5, 127.5}, extent = {{-20.5, -20.5}, {20.5, 20.5}}, rotation = 0)));
  SystemDynamics.Rates.Rate_1 DepletionRate annotation(
    Placement(visible = true, transformation(origin = {80.5, 86.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput TotalVehicles annotation(
    Placement(visible = true, transformation(origin = {-6, -101}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {95, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  SystemDynamics.Auxiliary.Prod_2 prod_2 annotation(
    Placement(visible = true, transformation(origin = {-73.5, -73.5}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  SystemDynamics.Auxiliary.Prod_2 prod_21 annotation(
    Placement(visible = true, transformation(origin = {80.5, -75.5}, extent = {{16.5, -16.5}, {-16.5, 16.5}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Time(y = time) annotation(
    Placement(visible = true, transformation(origin = {228, 26}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(visible = true, transformation(origin = {141, -43}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = 0) annotation(
    Placement(visible = true, transformation(origin = {192, -74}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = ConversionYear) annotation(
    Placement(visible = true, transformation(origin = {193, -42}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  TransportationModel.Interfaces.SignalOutPort VehicleNos annotation(
    Placement(visible = true, transformation(origin = {212, 132}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {95.5, 1.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum(nu = 2) annotation(
    Placement(visible = true, transformation(origin = {80.5, 3.5}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 90)));
  TransportationModel.LogicBox.startConversionSwitch StartConversionSwitch(flag = Trigger) annotation(
    Placement(visible = true, transformation(origin = {234, -42}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  TransportationModel.LogicBox.VehicleOutput vehicleOutput annotation(
    Placement(visible = true, transformation(origin = {148, 129}, extent = {{-29, -29}, {29, 29}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ToEV annotation(
    Placement(visible = true, transformation(origin = {196, -119}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {103.5, -11.5}, extent = {{-4.5, -4.5}, {4.5, 4.5}}, rotation = 0)));
algorithm
  when time >= ConversionYear then
    numberofConvertedVehicle := ConversionPercentage * VehicleLevel.y;
  end when;
  if VehicleLevel.y1 <= 0 then
    switch1.u1 := 0.0;
  else
    switch1.u1 := numberofConvertedVehicle;
  end if;
//  if VehicleLevel.y2 <=0 then
equation
  InGrowthRate = prod_2.u1;
  InDepletionRate = prod_21.u1;
  connect(greaterEqualThreshold.y, switch1.u2) annotation(
    Line(points = {{182, -42}, {163, -42}, {163, -43}, {153, -43}}, color = {255, 0, 255}));
  connect(realExpression1.y, switch1.u3) annotation(
    Line(points = {{181, -74}, {159, -74}, {159, -51}, {153, -51}}, color = {0, 0, 127}));
  connect(source.MassInPort1, GenerationRate.y) annotation(
    Line(points = {{-108, 128}, {-101, 128}, {-101, 100}, {-80, 100}}, color = {95, 0, 191}));
  connect(GenerationRate.y1, VehicleLevel.u1) annotation(
    Line(points = {{-66, 100}, {-55, 100}, {-55, 127.5}, {-23, 127.5}}, color = {0, 0, 127}));
  connect(VehicleLevel.u2, DepletionRate.y) annotation(
    Line(points = {{22, 127.5}, {36.025, 127.5}, {36.025, 123.5}, {36.05, 123.5}, {36.05, 86.5}, {74, 86.5}}, color = {95, 0, 191}));
  connect(greaterEqualThreshold.u, StartConversionSwitch.Output) annotation(
    Line(points = {{205, -42}, {222, -42}}, color = {0, 0, 127}));
  connect(Time.y, StartConversionSwitch.Input) annotation(
    Line(points = {{239, 26}, {246, 26}, {246, -42}}, color = {0, 0, 127}));
  connect(DepletionRate.y1, sink.MassInPort1) annotation(
    Line(points = {{87, 86.5}, {112.25, 86.5}, {112.25, 78}, {124, 78}}, color = {95, 0, 191}));
  connect(prod_2.u2, TotalVehicles) annotation(
    Line(points = {{-61, -73.5}, {-6, -73.5}, {-6, -101}}, color = {0, 0, 127}));
  connect(prod_21.u2, TotalVehicles) annotation(
    Line(points = {{69, -75}, {-6, -75}, {-6, -101}}, color = {0, 0, 127}));
  connect(prod_21.y, multiSum.u[1]) annotation(
    Line(points = {{81, -64}, {80.5, -64}, {80.5, -4}}, color = {0, 0, 127}));
  connect(VehicleLevel.y1, vehicleOutput.VehicleIn) annotation(
    Line(points = {{17, 139}, {70, 139}, {70, 132}, {116, 132}}, color = {0, 0, 127}));
  connect(switch1.y, multiSum.u[2]) annotation(
    Line(points = {{130, -43}, {80.5, -43}, {80.5, -4}}, color = {0, 0, 127}));
  connect(switch1.y, ToEV) annotation(
    Line(points = {{130, -43}, {112, -43}, {112, -119}, {196, -119}}, color = {0, 0, 127}));
  connect(prod_2.y, GenerationRate.u) annotation(
    Line(points = {{-73, -61}, {-73, 85}}, color = {0, 0, 127}));
  connect(multiSum.y, DepletionRate.u) annotation(
    Line(points = {{80.5, 12}, {80.5, 72}}, color = {0, 0, 127}));
  connect(vehicleOutput.VehicleOut, VehicleNos) annotation(
    Line(points = {{180, 132}, {212, 132}}, color = {0, 0, 127}));
protected
  annotation(
    Icon(coordinateSystem(grid = {1, 1}), graphics = {Text(origin = {2.5, -68}, extent = {{-95.5, 29}, {95.5, -29}}, textString = "%name", fontSize = 12)}),
    Diagram(coordinateSystem(grid = {1, 1}, extent = {{-200, -150}, {250, 150}})));
end VehiclePool;
