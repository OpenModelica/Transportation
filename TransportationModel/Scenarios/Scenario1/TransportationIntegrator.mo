within TransportationModel.Scenarios.Scenario1;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  inner TransportationParameter TP;
    
  Real year(start = TP.StartSimulationYear);
  TransportationModel.Scenarios.Scenario1.TransportationHub TransportationHub annotation(
    Placement(visible = true, transformation(origin = {-52, -50}, extent = {{-36, -36}, {36, 36}}, rotation = 0)));
  TransportationModel.Scenarios.Scenario1.EnvironmentalHub EnvironmentalHub annotation(
    Placement(visible = true, transformation(origin = {44, 62}, extent = {{-38, -38}, {38, 38}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(TransportationHub.VehiclesPoolBus, EnvironmentalHub.DisplayHubPort) annotation(
    Line(points = {{-12, -50}, {-2, -50}, {-2, 68}, {6, 68}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.02));

end TransportationIntegrator;
