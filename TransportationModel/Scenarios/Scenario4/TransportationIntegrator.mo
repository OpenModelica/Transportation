within TransportationModel.Scenarios.Scenario4;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  inner TransportationParameter TP;
    
  Real year(start = TP.StartSimulationYear);
  TransportationModel.Scenarios.Scenario4.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-57, -35}, extent = {{-35, -35}, {35, 35}}, rotation = 0)));
  TransportationModel.Scenarios.Scenario4.EnvironmentalHub environmentalHub annotation(
    Placement(visible = true, transformation(origin = {44, 48}, extent = {{-38, -38}, {38, 38}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentalHub.DisplayHubPort) annotation(
    Line(points = {{-18, -34}, {-14, -34}, {-14, 54}, {6, 54}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 2019, StopTime = 2035, Tolerance = 1e-06, Interval = 0.02));

end TransportationIntegrator;
