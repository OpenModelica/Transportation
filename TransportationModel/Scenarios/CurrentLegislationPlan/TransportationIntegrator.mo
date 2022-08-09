within TransportationModel.Scenarios.CurrentLegislationPlan;

model TransportationIntegrator
  extends TransportationModel.Icons.TransportIntegrator;
  
  Real year(start = TP.StartSimulationYear);
  //  inner Utilites.TransportationParameters TP;
  inner TransportationModel.TransportationRecords.TransportationParameter_S2 TP;
  TransportationModel.Scenarios.CurrentLegislationPlan.TransportationHub transportationHub annotation(
    Placement(visible = true, transformation(origin = {-50, -42}, extent = {{-34, -34}, {34, 34}}, rotation = 0)));
  TransportationModel.Scenarios.CurrentLegislationPlan.EnvironmentHub environmentHub annotation(
    Placement(visible = true, transformation(origin = {55, 47}, extent = {{-37, -37}, {37, 37}}, rotation = 0)));
equation
  when sample(TP.StartTriggerTime, TP.SampleRate) then
    year = pre(year) + 1;
  end when;
  connect(transportationHub.VehiclesPoolBus, environmentHub.TransportationHubPort) annotation(
    Line(points = {{-16, -42}, {0, -42}, {0, 48}, {18, 48}}, color = {255, 204, 51}, thickness = 0.5));
protected
  annotation(
    experiment(StartTime = 0, StopTime = 16, Tolerance = 1e-06, Interval = 0.002));
end TransportationIntegrator;
