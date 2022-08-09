within TransportationModel.Components;


model TruckPool
 
  extends TransportationModel.Icons.TruckIcon;
 parameter Boolean Trigger = false;
  parameter Real ConversionYear = 2022;
  
  Real numberofConvertedVehicle;
  parameter Real ConversionPercentage = 0.25;
  parameter Real InitialLevel;
  SystemDynamics.Rates.Rate_1 GenerationRate annotation(
    Placement(visible = true, transformation(origin = {-74, 100}, extent = {{-14, -14}, {14, 14}}, rotation = 0)));
  SystemDynamics.Sources.Source source annotation(
    Placement(visible = true, transformation(origin = {-119, 128}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Sources.Sink sink annotation(
    Placement(visible = true, transformation(origin = {136, 126}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput InGrowthRate annotation(
    Placement(visible = true, transformation(origin = {197, -97}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, 12}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput InDepletionRate annotation(
    Placement(visible = true, transformation(origin = {197, -119}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {-94, -11}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  SystemDynamics.Levels.Level VehicleLevel(x0 = InitialLevel) annotation(
    Placement(visible = true, transformation(origin = {-6.5, 126.5}, extent = {{-20.5, -20.5}, {20.5, 20.5}}, rotation = 0)));
  SystemDynamics.Rates.Rate_1 DepletionRate annotation(
    Placement(visible = true, transformation(origin = {79.5, 99.5}, extent = {{-13.5, -13.5}, {13.5, 13.5}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput TotalVehicles annotation(
    Placement(visible = true, transformation(origin = {-5, -122}, extent = {{-10, -10}, {10, 10}}, rotation = 90), iconTransformation(origin = {95, -25}, extent = {{-5, -5}, {5, 5}}, rotation = 0)));
  SystemDynamics.Auxiliary.Prod_2 prod_2 annotation(
    Placement(visible = true, transformation(origin = {-73.5, -73.5}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  SystemDynamics.Auxiliary.Prod_2 prod_21 annotation(
    Placement(visible = true, transformation(origin = {80.5, -75.5}, extent = {{16.5, -16.5}, {-16.5, 16.5}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression Time(y = time) annotation(
    Placement(visible = true, transformation(origin = {228, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Logical.Switch switch1 annotation(
    Placement(visible = true, transformation(origin = {142, -39}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.RealExpression realExpression1(y = 0) annotation(
    Placement(visible = true, transformation(origin = {192, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ToEV annotation(
    Placement(visible = true, transformation(origin = {209, -141}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {99.5, -11.5}, extent = {{-4.5, -4.5}, {4.5, 4.5}}, rotation = 0)));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = ConversionYear) annotation(
    Placement(visible = true, transformation(origin = {193, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  TransportationModel.Interfaces.SignalOutPort VehicleNos annotation(
    Placement(visible = true, transformation(origin = {2, -11}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {95.5, 1.5}, extent = {{-5.5, -5.5}, {5.5, 5.5}}, rotation = 0)));
  Modelica.Blocks.Math.MultiSum multiSum(nu = 2) annotation(
    Placement(visible = true, transformation(origin = {80, 2}, extent = {{-6, -6}, {6, 6}}, rotation = 90)));
  TransportationModel.LogicBox.startConversionSwitch StartConversionSwitch(flag = Trigger) annotation(
    Placement(visible = true, transformation(origin = {234, -38}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
 TransportationModel.LogicBox.VehicleOutput vehicleOutput annotation(
    Placement(visible = true, transformation(origin = {-12, 56}, extent = {{-29, -29}, {29, 29}}, rotation = -90)));
algorithm
  when time >= ConversionYear then
    numberofConvertedVehicle := ConversionPercentage * VehicleLevel.y;
  end when;

  if VehicleLevel.y1 <= 0 then
    switch1.u1 := 0.0;
  else 
    switch1.u1 := numberofConvertedVehicle;

  end if;

equation
  InGrowthRate = prod_2.u1;
  InDepletionRate = prod_21.u1;
  connect(greaterEqualThreshold.y, switch1.u2) annotation(
    Line(points = {{182, -38}, {163, -38}, {163, -39}, {154, -39}}, color = {255, 0, 255}));
  connect(realExpression1.y, switch1.u3) annotation(
    Line(points = {{181, -70}, {159, -70}, {159, -47}, {154, -47}}, color = {0, 0, 127}));
  connect(prod_21.y, multiSum.u[1]) annotation(
    Line(points = {{80.5, -64}, {80.5, -56.475}, {80, -56.475}, {80, -4}}, color = {0, 0, 127}));
  connect(switch1.y, multiSum.u[2]) annotation(
    Line(points = {{131, -39}, {116, -39}, {116, -56}, {80, -56}, {80, -4}}, color = {0, 0, 127}));
  connect(source.MassInPort1, GenerationRate.y) annotation(
    Line(points = {{-108, 128}, {-101, 128}, {-101, 100}, {-81, 100}}, color = {95, 0, 191}));
  connect(GenerationRate.y1, VehicleLevel.u1) annotation(
    Line(points = {{-67, 100}, {-55, 100}, {-55, 127}, {-29, 127}}, color = {0, 0, 127}));
  connect(VehicleLevel.u2, DepletionRate.y) annotation(
    Line(points = {{16.05, 126.5}, {53.05, 126.5}, {53.05, 99}, {73.05, 99}}, color = {95, 0, 191}));
  connect(greaterEqualThreshold.u, StartConversionSwitch.Output) annotation(
    Line(points = {{205, -38}, {222, -38}}, color = {0, 0, 127}));
  connect(Time.y, StartConversionSwitch.Input) annotation(
    Line(points = {{239, 30}, {246, 30}, {246, -38}}, color = {0, 0, 127}));
  connect(multiSum.y, DepletionRate.u) annotation(
    Line(points = {{80, 9}, {79.5, 9}, {79.5, 85.02}}, color = {0, 0, 127}));
  connect(DepletionRate.y1, sink.MassInPort1) annotation(
    Line(points = {{86.25, 99.5}, {112.25, 99.5}, {112.25, 125.5}, {125.25, 125.5}}, color = {95, 0, 191}));
  connect(prod_2.u2, TotalVehicles) annotation(
    Line(points = {{-61, -73.5}, {-5, -73.5}, {-5, -122}}, color = {0, 0, 127}));
  connect(prod_21.u2, TotalVehicles) annotation(
    Line(points = {{69, -75}, {-5, -75}, {-5, -122}}, color = {0, 0, 127}));
  connect(prod_2.y, GenerationRate.u) annotation(
    Line(points = {{-73, -61}, {-74, -61}, {-74, 85}}, color = {0, 0, 127}));
  connect(switch1.y, ToEV) annotation(
    Line(points = {{131, -39}, {116, -39}, {116, -141}, {209, -141}}, color = {0, 0, 127}));
 connect(VehicleLevel.y3, vehicleOutput.VehicleIn) annotation(
    Line(points = {{-6, 113}, {-9, 113}, {-9, 88}}, color = {95, 0, 191}));
 connect(vehicleOutput.VehicleOut, VehicleNos) annotation(
    Line(points = {{-9, 24}, {-9, -11}, {2, -11}}, color = {0, 0, 127}));
protected
  annotation(
    Icon(coordinateSystem(grid = {1, 1}), graphics = {Text(origin = {2.5, -68}, extent = {{-95.5, 29}, {95.5, -29}}, textString = "%name", fontSize = 12)}),
    Diagram(coordinateSystem(grid = {1, 1}, extent = {{-200, -150}, {250, 150}})));

end TruckPool;
